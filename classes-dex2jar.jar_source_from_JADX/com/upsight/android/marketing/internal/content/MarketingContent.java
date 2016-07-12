package com.upsight.android.marketing.internal.content;

import android.view.View;
import com.squareup.otto.Bus;
import com.upsight.android.analytics.internal.action.ActionMap;
import com.upsight.android.analytics.internal.action.Actionable;
import com.upsight.android.marketing.internal.content.MarketingContentActions.MarketingContentActionContext;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MarketingContent extends Actionable {
    public static final String TRIGGER_APP_BACKGROUNDED = "app_backgrounded";
    public static final String TRIGGER_CONTENT_DISMISSED = "content_dismissed";
    public static final String TRIGGER_CONTENT_DISPLAYED = "content_displayed";
    public static final String TRIGGER_CONTENT_RECEIVED = "content_received";
    public static final String UPSIGHT_CONTENT_PROVIDER = "upsight";
    private AvailabilityEvent mAvailabilityEvent;
    private MarketingContentModel mContentModel;
    private View mContentView;
    private Map<String, String> mExtras;
    private boolean mIsConsumed;
    private boolean mIsLoaded;

    public static abstract class AvailabilityEvent {
        private final String mId;

        private AvailabilityEvent(String str) {
            this.mId = str;
        }

        public String getId() {
            return this.mId;
        }
    }

    public static class ContentLoadedEvent {
        private final String mId;

        private ContentLoadedEvent(String str) {
            this.mId = str;
        }

        public String getId() {
            return this.mId;
        }
    }

    public static class ScopedAvailabilityEvent extends AvailabilityEvent {
        private final String[] mScopes;

        public ScopedAvailabilityEvent(String str, String[] strArr) {
            super(null);
            this.mScopes = strArr;
        }

        public List<String> getScopes() {
            return Arrays.asList(this.mScopes);
        }
    }

    public static class ScopelessAvailabilityEvent extends AvailabilityEvent {
        private final String mParentId;

        public ScopelessAvailabilityEvent(String str, String str2) {
            super(null);
            this.mParentId = str2;
        }

        public String getParentId() {
            return this.mParentId;
        }
    }

    private MarketingContent(String str, ActionMap<MarketingContent, MarketingContentActionContext> actionMap) {
        super(str, actionMap);
        this.mContentModel = null;
        this.mContentView = null;
        this.mIsLoaded = false;
        this.mIsConsumed = false;
        this.mExtras = new HashMap();
    }

    public static MarketingContent create(String str, ActionMap<MarketingContent, MarketingContentActionContext> actionMap) {
        return new MarketingContent(str, actionMap);
    }

    private void notifyAvailability(Bus bus) {
        if (isAvailable()) {
            bus.post(this.mAvailabilityEvent);
        }
    }

    public MarketingContentModel getContentModel() {
        return this.mContentModel;
    }

    public String getContentProvider() {
        return UPSIGHT_CONTENT_PROVIDER;
    }

    public View getContentView() {
        return this.mContentView;
    }

    public String getExtra(String str) {
        return (String) this.mExtras.get(str);
    }

    public boolean isAvailable() {
        return (!isLoaded() || this.mAvailabilityEvent == null || this.mIsConsumed) ? false : true;
    }

    boolean isLoaded() {
        return (this.mContentModel == null || this.mContentView == null || !this.mIsLoaded) ? false : true;
    }

    public void markConsumed() {
        this.mIsConsumed = true;
    }

    public void markLoaded(Bus bus) {
        this.mIsLoaded = true;
        bus.post(new ContentLoadedEvent(null));
        notifyAvailability(bus);
    }

    public void markPresentable(AvailabilityEvent availabilityEvent, Bus bus) {
        this.mAvailabilityEvent = availabilityEvent;
        notifyAvailability(bus);
    }

    public void putExtra(String str, String str2) {
        this.mExtras.put(str, str2);
    }

    public void setContentModel(MarketingContentModel marketingContentModel) {
        this.mContentModel = marketingContentModel;
    }

    public void setContentView(View view) {
        this.mContentView = view;
    }
}
