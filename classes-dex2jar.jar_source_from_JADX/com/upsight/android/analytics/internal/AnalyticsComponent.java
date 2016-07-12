package com.upsight.android.analytics.internal;

import com.upsight.android.analytics.UpsightAnalyticsComponent;
import dagger.Component;
import javax.inject.Singleton;

@Singleton
@Component(modules = {AnalyticsModule.class})
public interface AnalyticsComponent extends UpsightAnalyticsComponent {
}
