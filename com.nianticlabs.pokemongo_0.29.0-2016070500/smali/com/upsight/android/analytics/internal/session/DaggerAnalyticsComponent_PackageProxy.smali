.class public final Lcom/upsight/android/analytics/internal/session/DaggerAnalyticsComponent_PackageProxy;
.super Ljava/lang/Object;
.source "DaggerAnalyticsComponent_PackageProxy.java"


# instance fields
.field public configParserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/ConfigParser;",
            ">;"
        }
    .end annotation
.end field

.field public manualTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/ManualTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
