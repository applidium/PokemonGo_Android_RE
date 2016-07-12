package com.upsight.android.analytics;

import com.upsight.android.UpsightAnalyticsExtension;
import com.upsight.android.UpsightExtension.BaseComponent;
import com.upsight.android.analytics.internal.DispatcherService;
import com.upsight.android.analytics.internal.session.Clock;
import com.upsight.android.analytics.internal.session.SessionManager;

public interface UpsightAnalyticsComponent extends BaseComponent<UpsightAnalyticsExtension> {
    Clock clock();

    void inject(DispatcherService dispatcherService);

    SessionManager sessionManager();
}
