.class public final Lcom/upsight/android/analytics/internal/provider/DaggerAnalyticsComponent_PackageProxy;
.super Ljava/lang/Object;
.source "DaggerAnalyticsComponent_PackageProxy.java"


# instance fields
.field public locationTrackerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/provider/LocationTracker;",
            ">;"
        }
    .end annotation
.end field

.field public optOutStatusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/provider/OptOutStatus;",
            ">;"
        }
    .end annotation
.end field

.field public userAttributesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/provider/UserAttributes;",
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
