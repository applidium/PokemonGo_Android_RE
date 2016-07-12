package com.upsight.android.managedvariables.internal;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.upsight.android.UpsightContext;
import com.upsight.android.UpsightManagedVariablesExtension;
import com.upsight.android.UpsightManagedVariablesExtension_MembersInjector;
import com.upsight.android.managedvariables.UpsightManagedVariablesApi;
import com.upsight.android.managedvariables.experience.UpsightUserExperience;
import com.upsight.android.managedvariables.internal.experience.UserExperienceModule;
import com.upsight.android.managedvariables.internal.experience.UserExperienceModule_ProvideUserExperienceFactory;
import com.upsight.android.managedvariables.internal.type.ManagedVariableManager;
import com.upsight.android.managedvariables.internal.type.UxmBlockProvider;
import com.upsight.android.managedvariables.internal.type.UxmContentFactory;
import com.upsight.android.managedvariables.internal.type.UxmModule;
import com.upsight.android.managedvariables.internal.type.UxmModule_ProvideManagedVariableManagerFactory;
import com.upsight.android.managedvariables.internal.type.UxmModule_ProvideUxmBlockProviderFactory;
import com.upsight.android.managedvariables.internal.type.UxmModule_ProvideUxmContentFactoryFactory;
import com.upsight.android.managedvariables.internal.type.UxmModule_ProvideUxmSchemaFactory;
import com.upsight.android.managedvariables.internal.type.UxmModule_ProvideUxmSchemaMapperFactory;
import com.upsight.android.managedvariables.internal.type.UxmModule_ProvideUxmSchemaRawStringFactory;
import com.upsight.android.managedvariables.internal.type.UxmSchema;
import dagger.MembersInjector;
import dagger.internal.MembersInjectors;
import dagger.internal.ScopedProvider;
import javax.inject.Provider;
import rx.Scheduler;

public final class DaggerManagedVariablesComponent implements ManagedVariablesComponent {
    static final /* synthetic */ boolean $assertionsDisabled;
    private Provider<Scheduler> provideMainSchedulerProvider;
    private Provider<ManagedVariableManager> provideManagedVariableManagerProvider;
    private Provider<UpsightManagedVariablesApi> provideManagedVariablesApiProvider;
    private Provider<UpsightContext> provideUpsightContextProvider;
    private Provider<UpsightUserExperience> provideUserExperienceProvider;
    private Provider<UxmBlockProvider> provideUxmBlockProvider;
    private Provider<UxmContentFactory> provideUxmContentFactoryProvider;
    private Provider<ObjectMapper> provideUxmSchemaMapperProvider;
    private Provider<UxmSchema> provideUxmSchemaProvider;
    private Provider<String> provideUxmSchemaRawStringProvider;
    private Provider<Integer> provideUxmSchemaResourceProvider;
    private MembersInjector<UpsightManagedVariablesExtension> upsightManagedVariablesExtensionMembersInjector;

    public static final class Builder {
        private BaseManagedVariablesModule baseManagedVariablesModule;
        private ManagedVariablesModule managedVariablesModule;
        private ResourceModule resourceModule;
        private UserExperienceModule userExperienceModule;
        private UxmModule uxmModule;

        private Builder() {
        }

        public Builder baseManagedVariablesModule(BaseManagedVariablesModule baseManagedVariablesModule) {
            if (baseManagedVariablesModule == null) {
                throw new NullPointerException("baseManagedVariablesModule");
            }
            this.baseManagedVariablesModule = baseManagedVariablesModule;
            return this;
        }

        public ManagedVariablesComponent build() {
            if (this.managedVariablesModule == null) {
                this.managedVariablesModule = new ManagedVariablesModule();
            }
            if (this.resourceModule == null) {
                this.resourceModule = new ResourceModule();
            }
            if (this.uxmModule == null) {
                this.uxmModule = new UxmModule();
            }
            if (this.userExperienceModule == null) {
                this.userExperienceModule = new UserExperienceModule();
            }
            if (this.baseManagedVariablesModule != null) {
                return new DaggerManagedVariablesComponent();
            }
            throw new IllegalStateException("baseManagedVariablesModule must be set");
        }

        public Builder managedVariablesModule(ManagedVariablesModule managedVariablesModule) {
            if (managedVariablesModule == null) {
                throw new NullPointerException("managedVariablesModule");
            }
            this.managedVariablesModule = managedVariablesModule;
            return this;
        }

        public Builder resourceModule(ResourceModule resourceModule) {
            if (resourceModule == null) {
                throw new NullPointerException("resourceModule");
            }
            this.resourceModule = resourceModule;
            return this;
        }

        public Builder userExperienceModule(UserExperienceModule userExperienceModule) {
            if (userExperienceModule == null) {
                throw new NullPointerException("userExperienceModule");
            }
            this.userExperienceModule = userExperienceModule;
            return this;
        }

        public Builder uxmModule(UxmModule uxmModule) {
            if (uxmModule == null) {
                throw new NullPointerException("uxmModule");
            }
            this.uxmModule = uxmModule;
            return this;
        }
    }

    static {
        $assertionsDisabled = !DaggerManagedVariablesComponent.class.desiredAssertionStatus();
    }

    private DaggerManagedVariablesComponent(Builder builder) {
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
        this.provideUpsightContextProvider = ScopedProvider.create(BaseManagedVariablesModule_ProvideUpsightContextFactory.create(builder.baseManagedVariablesModule));
        this.provideMainSchedulerProvider = ScopedProvider.create(BaseManagedVariablesModule_ProvideMainSchedulerFactory.create(builder.baseManagedVariablesModule));
        this.provideUxmSchemaMapperProvider = ScopedProvider.create(UxmModule_ProvideUxmSchemaMapperFactory.create(builder.uxmModule, this.provideUpsightContextProvider));
        this.provideUxmSchemaResourceProvider = ScopedProvider.create(ResourceModule_ProvideUxmSchemaResourceFactory.create(builder.resourceModule));
        this.provideUxmSchemaRawStringProvider = ScopedProvider.create(UxmModule_ProvideUxmSchemaRawStringFactory.create(builder.uxmModule, this.provideUpsightContextProvider, this.provideUxmSchemaResourceProvider));
        this.provideUxmSchemaProvider = ScopedProvider.create(UxmModule_ProvideUxmSchemaFactory.create(builder.uxmModule, this.provideUpsightContextProvider, this.provideUxmSchemaMapperProvider, this.provideUxmSchemaRawStringProvider));
        this.provideManagedVariableManagerProvider = ScopedProvider.create(UxmModule_ProvideManagedVariableManagerFactory.create(builder.uxmModule, this.provideUpsightContextProvider, this.provideMainSchedulerProvider, this.provideUxmSchemaProvider));
        this.provideUserExperienceProvider = ScopedProvider.create(UserExperienceModule_ProvideUserExperienceFactory.create(builder.userExperienceModule, this.provideUpsightContextProvider));
        this.provideManagedVariablesApiProvider = ScopedProvider.create(BaseManagedVariablesModule_ProvideManagedVariablesApiFactory.create(builder.baseManagedVariablesModule, this.provideManagedVariableManagerProvider, this.provideUserExperienceProvider));
        this.provideUxmContentFactoryProvider = ScopedProvider.create(UxmModule_ProvideUxmContentFactoryFactory.create(builder.uxmModule, this.provideUpsightContextProvider, this.provideMainSchedulerProvider, this.provideUserExperienceProvider));
        this.provideUxmBlockProvider = ScopedProvider.create(UxmModule_ProvideUxmBlockProviderFactory.create(builder.uxmModule, this.provideUpsightContextProvider, this.provideUxmSchemaRawStringProvider, this.provideUxmSchemaProvider));
        this.upsightManagedVariablesExtensionMembersInjector = UpsightManagedVariablesExtension_MembersInjector.create(MembersInjectors.noOp(), this.provideManagedVariablesApiProvider, this.provideUxmContentFactoryProvider, this.provideUxmBlockProvider);
    }

    public void inject(UpsightManagedVariablesExtension upsightManagedVariablesExtension) {
        this.upsightManagedVariablesExtensionMembersInjector.injectMembers(upsightManagedVariablesExtension);
    }

    public UxmSchema uxmSchema() {
        return (UxmSchema) this.provideUxmSchemaProvider.get();
    }
}
