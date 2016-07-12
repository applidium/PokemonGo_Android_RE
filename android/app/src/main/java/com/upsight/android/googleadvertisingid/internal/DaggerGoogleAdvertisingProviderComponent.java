package com.upsight.android.googleadvertisingid.internal;

import com.upsight.android.UpsightGoogleAdvertisingIdExtension;
import com.upsight.android.UpsightGoogleAdvertisingIdExtension_MembersInjector;
import dagger.MembersInjector;
import dagger.internal.MembersInjectors;
import dagger.internal.ScopedProvider;
import javax.inject.Provider;

public final class DaggerGoogleAdvertisingProviderComponent implements GoogleAdvertisingProviderComponent {
    static final /* synthetic */ boolean $assertionsDisabled;
    private Provider<GooglePlayAdvertisingProvider> provideGooglePlayAdvertisingProvider;
    private MembersInjector<UpsightGoogleAdvertisingIdExtension> upsightGoogleAdvertisingIdExtensionMembersInjector;

    public static final class Builder {
        private GoogleAdvertisingProviderModule googleAdvertisingProviderModule;

        private Builder() {
        }

        public GoogleAdvertisingProviderComponent build() {
            if (this.googleAdvertisingProviderModule != null) {
                return new DaggerGoogleAdvertisingProviderComponent();
            }
            throw new IllegalStateException("googleAdvertisingProviderModule must be set");
        }

        public Builder googleAdvertisingProviderModule(GoogleAdvertisingProviderModule googleAdvertisingProviderModule) {
            if (googleAdvertisingProviderModule == null) {
                throw new NullPointerException("googleAdvertisingProviderModule");
            }
            this.googleAdvertisingProviderModule = googleAdvertisingProviderModule;
            return this;
        }
    }

    static {
        $assertionsDisabled = !DaggerGoogleAdvertisingProviderComponent.class.desiredAssertionStatus();
    }

    private DaggerGoogleAdvertisingProviderComponent(Builder builder) {
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
        this.provideGooglePlayAdvertisingProvider = ScopedProvider.create(C0909xc835c10c.create(builder.googleAdvertisingProviderModule));
        this.upsightGoogleAdvertisingIdExtensionMembersInjector = UpsightGoogleAdvertisingIdExtension_MembersInjector.create(MembersInjectors.noOp(), this.provideGooglePlayAdvertisingProvider);
    }

    public void inject(UpsightGoogleAdvertisingIdExtension upsightGoogleAdvertisingIdExtension) {
        this.upsightGoogleAdvertisingIdExtensionMembersInjector.injectMembers(upsightGoogleAdvertisingIdExtension);
    }
}
