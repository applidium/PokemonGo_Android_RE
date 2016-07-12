package com.upsight.android.analytics.internal.provider;

import com.upsight.android.UpsightContext;
import dagger.MembersInjector;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class LocationTracker_Factory implements Factory<LocationTracker> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final MembersInjector<LocationTracker> membersInjector;
    private final Provider<UpsightContext> upsightProvider;

    static {
        $assertionsDisabled = !LocationTracker_Factory.class.desiredAssertionStatus();
    }

    public LocationTracker_Factory(MembersInjector<LocationTracker> membersInjector, Provider<UpsightContext> provider) {
        if ($assertionsDisabled || membersInjector != null) {
            this.membersInjector = membersInjector;
            if ($assertionsDisabled || provider != null) {
                this.upsightProvider = provider;
                return;
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static Factory<LocationTracker> create(MembersInjector<LocationTracker> membersInjector, Provider<UpsightContext> provider) {
        return new LocationTracker_Factory(membersInjector, provider);
    }

    public LocationTracker get() {
        LocationTracker locationTracker = new LocationTracker((UpsightContext) this.upsightProvider.get());
        this.membersInjector.injectMembers(locationTracker);
        return locationTracker;
    }
}
