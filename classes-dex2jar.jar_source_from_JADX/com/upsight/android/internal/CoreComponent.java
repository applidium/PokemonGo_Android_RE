package com.upsight.android.internal;

import com.upsight.android.UpsightCoreComponent;
import dagger.Component;
import javax.inject.Singleton;

@Singleton
@Component(modules = {CoreModule.class})
public interface CoreComponent extends UpsightCoreComponent {
}
