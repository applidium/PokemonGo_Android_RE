package com.upsight.android.googlepushservices.internal;

import com.google.android.gms.gcm.GoogleCloudMessaging;
import com.upsight.android.UpsightContext;
import com.upsight.android.UpsightGooglePushServicesExtension;
import com.upsight.android.UpsightGooglePushServicesExtension_MembersInjector;
import com.upsight.android.analytics.internal.session.SessionManager;
import com.upsight.android.googlepushservices.UpsightGooglePushServicesApi;
import dagger.MembersInjector;
import dagger.internal.MembersInjectors;
import dagger.internal.ScopedProvider;
import javax.inject.Provider;

public final class DaggerGooglePushServicesComponent implements GooglePushServicesComponent {
    static final /* synthetic */ boolean $assertionsDisabled;
    private Provider<GooglePushServices> googlePushServicesProvider;
    private Provider<GoogleCloudMessaging> provideGoogleCloudMessagingProvider;
    private Provider<UpsightGooglePushServicesApi> provideGooglePushServicesApiProvider;
    private Provider<SessionManager> provideSessionManagerProvider;
    private Provider<UpsightContext> provideUpsightContextProvider;
    private MembersInjector<PushClickIntentService> pushClickIntentServiceMembersInjector;
    private MembersInjector<PushIntentService> pushIntentServiceMembersInjector;
    private MembersInjector<UpsightGooglePushServicesExtension> upsightGooglePushServicesExtensionMembersInjector;

    public static final class Builder {
        private GoogleCloudMessagingModule googleCloudMessagingModule;
        private GooglePushServicesModule googlePushServicesModule;
        private PushModule pushModule;

        private Builder() {
        }

        public GooglePushServicesComponent build() {
            if (this.googlePushServicesModule == null) {
                this.googlePushServicesModule = new GooglePushServicesModule();
            }
            if (this.pushModule == null) {
                throw new IllegalStateException("pushModule must be set");
            }
            if (this.googleCloudMessagingModule == null) {
                this.googleCloudMessagingModule = new GoogleCloudMessagingModule();
            }
            return new DaggerGooglePushServicesComponent();
        }

        public Builder googleCloudMessagingModule(GoogleCloudMessagingModule googleCloudMessagingModule) {
            if (googleCloudMessagingModule == null) {
                throw new NullPointerException("googleCloudMessagingModule");
            }
            this.googleCloudMessagingModule = googleCloudMessagingModule;
            return this;
        }

        public Builder googlePushServicesModule(GooglePushServicesModule googlePushServicesModule) {
            if (googlePushServicesModule == null) {
                throw new NullPointerException("googlePushServicesModule");
            }
            this.googlePushServicesModule = googlePushServicesModule;
            return this;
        }

        public Builder pushModule(PushModule pushModule) {
            if (pushModule == null) {
                throw new NullPointerException("pushModule");
            }
            this.pushModule = pushModule;
            return this;
        }
    }

    static {
        $assertionsDisabled = !DaggerGooglePushServicesComponent.class.desiredAssertionStatus();
    }

    private DaggerGooglePushServicesComponent(Builder builder) {
        if ($assertionsDisabled || builder != null) {
            initialize(builder);
            return;
        }
        throw new AssertionError();
    }

    public static Builder builder() {
        return new Builder();
    }

    private void initialize(Builder builder) {
        this.provideUpsightContextProvider = ScopedProvider.create(PushModule_ProvideUpsightContextFactory.create(builder.pushModule));
        this.googlePushServicesProvider = ScopedProvider.create(GooglePushServices_Factory.create(this.provideUpsightContextProvider));
        this.provideGooglePushServicesApiProvider = ScopedProvider.create(PushModule_ProvideGooglePushServicesApiFactory.create(builder.pushModule, this.googlePushServicesProvider));
        this.upsightGooglePushServicesExtensionMembersInjector = UpsightGooglePushServicesExtension_MembersInjector.create(MembersInjectors.noOp(), this.provideGooglePushServicesApiProvider);
        this.provideGoogleCloudMessagingProvider = ScopedProvider.create(GoogleCloudMessagingModule_ProvideGoogleCloudMessagingFactory.create(builder.googleCloudMessagingModule, this.provideUpsightContextProvider));
        this.pushIntentServiceMembersInjector = PushIntentService_MembersInjector.create(MembersInjectors.noOp(), this.provideGoogleCloudMessagingProvider);
        this.provideSessionManagerProvider = ScopedProvider.create(PushModule_ProvideSessionManagerFactory.create(builder.pushModule, this.provideUpsightContextProvider));
        this.pushClickIntentServiceMembersInjector = PushClickIntentService_MembersInjector.create(MembersInjectors.noOp(), this.provideSessionManagerProvider);
    }

    public void inject(UpsightGooglePushServicesExtension upsightGooglePushServicesExtension) {
        this.upsightGooglePushServicesExtensionMembersInjector.injectMembers(upsightGooglePushServicesExtension);
    }

    public void inject(PushClickIntentService pushClickIntentService) {
        this.pushClickIntentServiceMembersInjector.injectMembers(pushClickIntentService);
    }

    public void inject(PushIntentService pushIntentService) {
        this.pushIntentServiceMembersInjector.injectMembers(pushIntentService);
    }
}
