.class public final Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule;
.super Ljava/lang/Object;
.source "GoogleCloudMessagingModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideGoogleCloudMessaging(Lcom/upsight/android/UpsightContext;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .locals 1
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 21
    invoke-static {p1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v0

    return-object v0
.end method
