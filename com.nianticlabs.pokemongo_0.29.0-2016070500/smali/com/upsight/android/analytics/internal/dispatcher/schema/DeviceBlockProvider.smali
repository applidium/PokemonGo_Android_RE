.class public Lcom/upsight/android/analytics/internal/dispatcher/schema/DeviceBlockProvider;
.super Lcom/upsight/android/analytics/provider/UpsightDataProvider;
.source "DeviceBlockProvider.java"


# static fields
.field public static final CARRIER_KEY:Ljava/lang/String; = "device.carrier"

.field public static final CONNECTION_KEY:Ljava/lang/String; = "device.connection"

.field private static final DEVICE_TYPE_PHONE:Ljava/lang/String; = "phone"

.field private static final DEVICE_TYPE_TABLET:Ljava/lang/String; = "tablet"

.field public static final HARDWARE_KEY:Ljava/lang/String; = "device.hardware"

.field public static final JAILBROKEN_KEY:Ljava/lang/String; = "device.jailbroken"

.field private static final KERNEL_BUILD_KEY_TEST:Ljava/lang/String; = "test-keys"

.field public static final LIMITED_AD_TRACKING_KEY:Ljava/lang/String; = "device.limit_ad_tracking"

.field public static final MANUFACTURER_KEY:Ljava/lang/String; = "device.manufacturer"

.field private static final OS_ANDROID:Ljava/lang/String; = "android"

.field public static final OS_KEY:Ljava/lang/String; = "device.os"

.field public static final OS_VERSION_KEY:Ljava/lang/String; = "device.os_version"

.field private static final SPACE:Ljava/lang/String; = " "

.field public static final TYPE_KEY:Ljava/lang/String; = "device.type"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/upsight/android/analytics/provider/UpsightDataProvider;-><init>()V

    .line 87
    const-string v0, "device.carrier"

    invoke-static {p1}, Lcom/upsight/android/internal/util/NetworkHelper;->getNetworkOperatorName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/analytics/internal/dispatcher/schema/DeviceBlockProvider;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    const-string v0, "device.connection"

    invoke-static {p1}, Lcom/upsight/android/internal/util/NetworkHelper;->getActiveNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/analytics/internal/dispatcher/schema/DeviceBlockProvider;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    const-string v0, "device.hardware"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/analytics/internal/dispatcher/schema/DeviceBlockProvider;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    const-string v0, "device.jailbroken"

    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/DeviceBlockProvider;->isRooted()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/analytics/internal/dispatcher/schema/DeviceBlockProvider;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    const-string v0, "device.manufacturer"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/analytics/internal/dispatcher/schema/DeviceBlockProvider;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    const-string v0, "device.os"

    const-string v1, "android"

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/analytics/internal/dispatcher/schema/DeviceBlockProvider;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    const-string v0, "device.os_version"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/analytics/internal/dispatcher/schema/DeviceBlockProvider;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    const-string v0, "device.type"

    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/schema/DeviceBlockProvider;->getDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/analytics/internal/dispatcher/schema/DeviceBlockProvider;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method private getDeviceType(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    const-string v0, "phone"

    .line 117
    .local v0, "type":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 119
    const-string v0, "tablet"

    .line 121
    :cond_0
    return-object v0
.end method

.method private isRooted()Z
    .locals 2

    .prologue
    .line 105
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 106
    .local v0, "buildTags":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "test-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public availableKeys()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "device.os"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "device.os_version"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "device.type"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "device.hardware"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "device.manufacturer"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "device.carrier"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "device.connection"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "device.jailbroken"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
