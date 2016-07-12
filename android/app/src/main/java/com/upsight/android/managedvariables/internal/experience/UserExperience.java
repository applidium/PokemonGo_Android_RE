package com.upsight.android.managedvariables.internal.experience;

import com.squareup.otto.Bus;
import com.squareup.otto.Subscribe;
import com.upsight.android.analytics.internal.action.Actionable.ActionMapFinishedEvent;
import com.upsight.android.managedvariables.experience.UpsightUserExperience;
import com.upsight.android.managedvariables.experience.UpsightUserExperience.Handler;
import com.upsight.android.managedvariables.internal.type.UxmContentActions.ScheduleSyncNotificationEvent;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

class UserExperience extends UpsightUserExperience {
    private static final Handler DEFAULT_HANDLER;
    private Bus mBus;
    private Handler mHandler;
    private Map<String, List<String>> mSyncNotifications;

    private static class DefaultHandler implements Handler {
        private DefaultHandler() {
        }

        public boolean onReceive() {
            return true;
        }

        public void onSynchronize(List<String> list) {
        }
    }

    static {
        DEFAULT_HANDLER = new DefaultHandler();
    }

    UserExperience(Bus bus) {
        this.mHandler = DEFAULT_HANDLER;
        this.mSyncNotifications = new HashMap();
        this.mBus = bus;
        this.mBus.register(this);
    }

    public Handler getHandler() {
        Handler handler;
        synchronized (this) {
            handler = this.mHandler;
        }
        return handler;
    }

    @Subscribe
    public void handleActionMapFinishedEvent(ActionMapFinishedEvent actionMapFinishedEvent) {
        synchronized (this) {
            List list = (List) this.mSyncNotifications.remove(actionMapFinishedEvent.mId);
            if (list != null) {
                this.mHandler.onSynchronize(list);
            }
        }
    }

    @Subscribe
    public void handleScheduleSyncNotificationEvent(ScheduleSyncNotificationEvent scheduleSyncNotificationEvent) {
        synchronized (this) {
            this.mSyncNotifications.put(scheduleSyncNotificationEvent.mId, scheduleSyncNotificationEvent.mTags);
        }
    }

    public void registerHandler(Handler handler) {
        synchronized (this) {
            if (handler != null) {
                this.mHandler = handler;
            } else {
                this.mHandler = DEFAULT_HANDLER;
            }
        }
    }
}
