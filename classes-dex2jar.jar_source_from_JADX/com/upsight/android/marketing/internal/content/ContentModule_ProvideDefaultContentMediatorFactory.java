package com.upsight.android.marketing.internal.content;

import dagger.internal.Factory;

public final class ContentModule_ProvideDefaultContentMediatorFactory implements Factory<DefaultContentMediator> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final ContentModule module;

    static {
        $assertionsDisabled = !ContentModule_ProvideDefaultContentMediatorFactory.class.desiredAssertionStatus();
    }

    public ContentModule_ProvideDefaultContentMediatorFactory(ContentModule contentModule) {
        if ($assertionsDisabled || contentModule != null) {
            this.module = contentModule;
            return;
        }
        throw new AssertionError();
    }

    public static Factory<DefaultContentMediator> create(ContentModule contentModule) {
        return new ContentModule_ProvideDefaultContentMediatorFactory(contentModule);
    }

    public DefaultContentMediator get() {
        DefaultContentMediator provideDefaultContentMediator = this.module.provideDefaultContentMediator();
        if (provideDefaultContentMediator != null) {
            return provideDefaultContentMediator;
        }
        throw new NullPointerException("Cannot return null from a non-@Nullable @Provides method");
    }
}
