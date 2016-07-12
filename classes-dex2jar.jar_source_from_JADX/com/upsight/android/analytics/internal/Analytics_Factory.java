package com.upsight.android.analytics.internal;

import com.upsight.android.UpsightContext;
import com.upsight.android.analytics.UpsightGooglePlayHelper;
import com.upsight.android.analytics.internal.association.AssociationManager;
import com.upsight.android.analytics.internal.dispatcher.schema.SchemaSelectorBuilder;
import com.upsight.android.analytics.internal.session.SessionManager;
import com.upsight.android.analytics.provider.UpsightLocationTracker;
import com.upsight.android.analytics.provider.UpsightOptOutStatus;
import com.upsight.android.analytics.provider.UpsightUserAttributes;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class Analytics_Factory implements Factory<Analytics> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final Provider<AssociationManager> associationManagerProvider;
    private final Provider<UpsightGooglePlayHelper> googlePlayHelperProvider;
    private final Provider<UpsightLocationTracker> locationTrackerProvider;
    private final Provider<UpsightOptOutStatus> optOutStatusProvider;
    private final Provider<SchemaSelectorBuilder> schemaSelectorProvider;
    private final Provider<SessionManager> sessionManagerProvider;
    private final Provider<UpsightContext> upsightProvider;
    private final Provider<UpsightUserAttributes> userAttributesProvider;

    static {
        $assertionsDisabled = !Analytics_Factory.class.desiredAssertionStatus();
    }

    public Analytics_Factory(Provider<UpsightContext> provider, Provider<SessionManager> provider2, Provider<SchemaSelectorBuilder> provider3, Provider<AssociationManager> provider4, Provider<UpsightOptOutStatus> provider5, Provider<UpsightLocationTracker> provider6, Provider<UpsightUserAttributes> provider7, Provider<UpsightGooglePlayHelper> provider8) {
        if ($assertionsDisabled || provider != null) {
            this.upsightProvider = provider;
            if ($assertionsDisabled || provider2 != null) {
                this.sessionManagerProvider = provider2;
                if ($assertionsDisabled || provider3 != null) {
                    this.schemaSelectorProvider = provider3;
                    if ($assertionsDisabled || provider4 != null) {
                        this.associationManagerProvider = provider4;
                        if ($assertionsDisabled || provider5 != null) {
                            this.optOutStatusProvider = provider5;
                            if ($assertionsDisabled || provider6 != null) {
                                this.locationTrackerProvider = provider6;
                                if ($assertionsDisabled || provider7 != null) {
                                    this.userAttributesProvider = provider7;
                                    if ($assertionsDisabled || provider8 != null) {
                                        this.googlePlayHelperProvider = provider8;
                                        return;
                                    }
                                    throw new AssertionError();
                                }
                                throw new AssertionError();
                            }
                            throw new AssertionError();
                        }
                        throw new AssertionError();
                    }
                    throw new AssertionError();
                }
                throw new AssertionError();
            }
            throw new AssertionError();
        }
        throw new AssertionError();
    }

    public static Factory<Analytics> create(Provider<UpsightContext> provider, Provider<SessionManager> provider2, Provider<SchemaSelectorBuilder> provider3, Provider<AssociationManager> provider4, Provider<UpsightOptOutStatus> provider5, Provider<UpsightLocationTracker> provider6, Provider<UpsightUserAttributes> provider7, Provider<UpsightGooglePlayHelper> provider8) {
        return new Analytics_Factory(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8);
    }

    public Analytics get() {
        return new Analytics((UpsightContext) this.upsightProvider.get(), (SessionManager) this.sessionManagerProvider.get(), (SchemaSelectorBuilder) this.schemaSelectorProvider.get(), (AssociationManager) this.associationManagerProvider.get(), (UpsightOptOutStatus) this.optOutStatusProvider.get(), (UpsightLocationTracker) this.locationTrackerProvider.get(), (UpsightUserAttributes) this.userAttributesProvider.get(), (UpsightGooglePlayHelper) this.googlePlayHelperProvider.get());
    }
}
