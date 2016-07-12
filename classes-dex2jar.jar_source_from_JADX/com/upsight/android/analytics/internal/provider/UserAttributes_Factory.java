package com.upsight.android.analytics.internal.provider;

import com.upsight.android.UpsightContext;
import dagger.MembersInjector;
import dagger.internal.Factory;
import javax.inject.Provider;

public final class UserAttributes_Factory implements Factory<UserAttributes> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final MembersInjector<UserAttributes> membersInjector;
    private final Provider<UpsightContext> upsightProvider;

    static {
        $assertionsDisabled = !UserAttributes_Factory.class.desiredAssertionStatus();
    }

    public UserAttributes_Factory(MembersInjector<UserAttributes> membersInjector, Provider<UpsightContext> provider) {
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

    public static Factory<UserAttributes> create(MembersInjector<UserAttributes> membersInjector, Provider<UpsightContext> provider) {
        return new UserAttributes_Factory(membersInjector, provider);
    }

    public UserAttributes get() {
        UserAttributes userAttributes = new UserAttributes((UpsightContext) this.upsightProvider.get());
        this.membersInjector.injectMembers(userAttributes);
        return userAttributes;
    }
}
