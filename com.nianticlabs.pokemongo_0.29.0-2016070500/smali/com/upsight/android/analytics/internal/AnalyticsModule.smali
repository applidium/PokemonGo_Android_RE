.class public final Lcom/upsight/android/analytics/internal/AnalyticsModule;
.super Ljava/lang/Object;
.source "AnalyticsModule.java"


# annotations
.annotation runtime Ldagger/Module;
    includes = {
        Lcom/upsight/android/analytics/internal/AnalyticsApiModule;,
        Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule;,
        Lcom/upsight/android/analytics/internal/ConfigObjectMapperModule;,
        Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule;,
        Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;,
        Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingModule;,
        Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaModule;,
        Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule;,
        Lcom/upsight/android/analytics/internal/session/SessionModule;,
        Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule;,
        Lcom/upsight/android/analytics/internal/provider/ProviderModule;,
        Lcom/upsight/android/analytics/internal/association/AssociationModule;,
        Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
