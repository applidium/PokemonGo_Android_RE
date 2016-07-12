package com.upsight.android.analytics.internal;

import android.app.Service;
import com.upsight.android.analytics.internal.configuration.ConfigurationManager;
import com.upsight.android.analytics.internal.dispatcher.Dispatcher;
import dagger.MembersInjector;
import javax.inject.Provider;

public final class DispatcherService_MembersInjector implements MembersInjector<DispatcherService> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final Provider<ConfigurationManager> mConfigurationManagerProvider;
    private final Provider<Dispatcher> mDispatcherProvider;
    private final MembersInjector<Service> supertypeInjector;

    static {
        $assertionsDisabled = !DispatcherService_MembersInjector.class.desiredAssertionStatus();
    }

    public DispatcherService_MembersInjector(MembersInjector<Service> membersInjector, Provider<ConfigurationManager> provider, Provider<Dispatcher> provider2) {
        if ($assertionsDisabled || membersInjector != null) {
            this.supertypeInjector = membersInjector;
            if ($assertionsDisabled || provider != null) {
                this.mConfigurationManagerProvider = provider;
                if ($assertionsDisabled || provider2 != null) {
                    this.mDispatcherProvider = provider2;
                    return;
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static MembersInjector<DispatcherService> create(MembersInjector<Service> membersInjector, Provider<ConfigurationManager> provider, Provider<Dispatcher> provider2) {
        return new DispatcherService_MembersInjector(membersInjector, provider, provider2);
    }

    public void injectMembers(DispatcherService dispatcherService) {
        if (dispatcherService == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        this.supertypeInjector.injectMembers(dispatcherService);
        dispatcherService.mConfigurationManager = (ConfigurationManager) this.mConfigurationManagerProvider.get();
        dispatcherService.mDispatcher = (Dispatcher) this.mDispatcherProvider.get();
    }
}
