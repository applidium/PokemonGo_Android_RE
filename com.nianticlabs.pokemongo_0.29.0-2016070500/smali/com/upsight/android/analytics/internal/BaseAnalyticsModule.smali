.class public final Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;
.super Ljava/lang/Object;
.source "BaseAnalyticsModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# static fields
.field public static final OPT_UNCAUGHT_EXCEPTION_HANDLER:Ljava/lang/String; = "optUncaughtExceptionHandler"


# instance fields
.field private final mUpsight:Lcom/upsight/android/UpsightContext;


# direct methods
.method public constructor <init>(Lcom/upsight/android/UpsightContext;)V
    .locals 0
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 30
    return-void
.end method


# virtual methods
.method public provideClock()Lcom/upsight/android/analytics/internal/session/Clock;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule$1;

    invoke-direct {v0, p0}, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule$1;-><init>(Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;)V

    return-object v0
.end method

.method public provideGooglePlayHelper(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/UpsightGooglePlayHelper;
    .locals 2
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v1

    invoke-interface {v1}, Lcom/upsight/android/UpsightCoreComponent;->objectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    .line 65
    .local v0, "mapper":Lcom/fasterxml/jackson/databind/ObjectMapper;
    new-instance v1, Lcom/upsight/android/analytics/internal/GooglePlayHelper;

    invoke-direct {v1, p1, v0}, Lcom/upsight/android/analytics/internal/GooglePlayHelper;-><init>(Lcom/upsight/android/UpsightContext;Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    return-object v1
.end method

.method public provideUncaughtExceptionHandler()Lcom/upsight/android/internal/util/Opt;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/upsight/android/internal/util/Opt",
            "<",
            "Ljava/lang/Thread$UncaughtExceptionHandler;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "optUncaughtExceptionHandler"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 58
    invoke-static {}, Lcom/upsight/android/internal/util/Opt;->absent()Lcom/upsight/android/internal/util/Opt;

    move-result-object v0

    return-object v0
.end method

.method public provideUpsightContext()Lcom/upsight/android/UpsightContext;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;->mUpsight:Lcom/upsight/android/UpsightContext;

    return-object v0
.end method
