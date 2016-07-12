package com.upsight.android.analytics.internal.action;

import com.squareup.otto.Bus;

public abstract class Actionable {
    private ActionMap mActionMap;
    private String mId;

    public static class ActionMapFinishedEvent {
        public final String mId;

        private ActionMapFinishedEvent(String str) {
            this.mId = str;
        }
    }

    private Actionable() {
    }

    protected <T extends Actionable, U extends ActionContext> Actionable(String str, ActionMap<T, U> actionMap) {
        this.mId = str;
        this.mActionMap = actionMap;
    }

    public void executeActions(String str) {
        this.mActionMap.executeActions(str, this);
    }

    public String getId() {
        return this.mId;
    }

    public void signalActionCompleted(Bus bus) {
        if (this.mActionMap.signalActionCompleted()) {
            bus.post(new ActionMapFinishedEvent(null));
        }
    }

    public void signalActionMapCompleted(Bus bus) {
        if (this.mActionMap.signalActionMapCompleted()) {
            bus.post(new ActionMapFinishedEvent(null));
        }
    }
}
