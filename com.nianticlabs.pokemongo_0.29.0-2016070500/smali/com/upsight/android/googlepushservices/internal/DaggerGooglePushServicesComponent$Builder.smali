.class public final Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerGooglePushServicesComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private googleCloudMessagingModule:Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule;

.field private googlePushServicesModule:Lcom/upsight/android/googlepushservices/internal/GooglePushServicesModule;

.field private pushModule:Lcom/upsight/android/googlepushservices/internal/PushModule;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$1;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;)Lcom/upsight/android/googlepushservices/internal/PushModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;->pushModule:Lcom/upsight/android/googlepushservices/internal/PushModule;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;)Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;->googleCloudMessagingModule:Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/upsight/android/googlepushservices/internal/GooglePushServicesComponent;
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;->googlePushServicesModule:Lcom/upsight/android/googlepushservices/internal/GooglePushServicesModule;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/upsight/android/googlepushservices/internal/GooglePushServicesModule;

    invoke-direct {v0}, Lcom/upsight/android/googlepushservices/internal/GooglePushServicesModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;->googlePushServicesModule:Lcom/upsight/android/googlepushservices/internal/GooglePushServicesModule;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;->pushModule:Lcom/upsight/android/googlepushservices/internal/PushModule;

    if-nez v0, :cond_1

    .line 74
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pushModule must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;->googleCloudMessagingModule:Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule;

    if-nez v0, :cond_2

    .line 77
    new-instance v0, Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule;

    invoke-direct {v0}, Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;->googleCloudMessagingModule:Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule;

    .line 79
    :cond_2
    new-instance v0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent;-><init>(Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$1;)V

    return-object v0
.end method

.method public googleCloudMessagingModule(Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule;)Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;
    .locals 2
    .param p1, "googleCloudMessagingModule"    # Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule;

    .prologue
    .line 99
    if-nez p1, :cond_0

    .line 100
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "googleCloudMessagingModule"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;->googleCloudMessagingModule:Lcom/upsight/android/googlepushservices/internal/GoogleCloudMessagingModule;

    .line 103
    return-object p0
.end method

.method public googlePushServicesModule(Lcom/upsight/android/googlepushservices/internal/GooglePushServicesModule;)Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;
    .locals 2
    .param p1, "googlePushServicesModule"    # Lcom/upsight/android/googlepushservices/internal/GooglePushServicesModule;

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 84
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "googlePushServicesModule"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;->googlePushServicesModule:Lcom/upsight/android/googlepushservices/internal/GooglePushServicesModule;

    .line 87
    return-object p0
.end method

.method public pushModule(Lcom/upsight/android/googlepushservices/internal/PushModule;)Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;
    .locals 2
    .param p1, "pushModule"    # Lcom/upsight/android/googlepushservices/internal/PushModule;

    .prologue
    .line 91
    if-nez p1, :cond_0

    .line 92
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pushModule"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/googlepushservices/internal/DaggerGooglePushServicesComponent$Builder;->pushModule:Lcom/upsight/android/googlepushservices/internal/PushModule;

    .line 95
    return-object p0
.end method
