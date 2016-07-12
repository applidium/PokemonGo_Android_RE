.class final Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema$Default$1;
.super Ljava/util/HashSet;
.source "Schema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 24
    const-string v0, "sid"

    invoke-virtual {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema$Default$1;->add(Ljava/lang/Object;)Z

    .line 25
    const-string v0, "app.token"

    invoke-virtual {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema$Default$1;->add(Ljava/lang/Object;)Z

    .line 26
    const-string v0, "app.version"

    invoke-virtual {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema$Default$1;->add(Ljava/lang/Object;)Z

    .line 27
    const-string v0, "app.bundleid"

    invoke-virtual {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema$Default$1;->add(Ljava/lang/Object;)Z

    .line 28
    const-string v0, "device.os"

    invoke-virtual {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema$Default$1;->add(Ljava/lang/Object;)Z

    .line 29
    const-string v0, "device.os_version"

    invoke-virtual {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema$Default$1;->add(Ljava/lang/Object;)Z

    .line 30
    const-string v0, "device.type"

    invoke-virtual {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema$Default$1;->add(Ljava/lang/Object;)Z

    .line 31
    const-string v0, "device.hardware"

    invoke-virtual {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema$Default$1;->add(Ljava/lang/Object;)Z

    .line 32
    const-string v0, "device.manufacturer"

    invoke-virtual {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema$Default$1;->add(Ljava/lang/Object;)Z

    .line 33
    const-string v0, "device.carrier"

    invoke-virtual {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema$Default$1;->add(Ljava/lang/Object;)Z

    .line 34
    const-string v0, "device.connection"

    invoke-virtual {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema$Default$1;->add(Ljava/lang/Object;)Z

    .line 35
    const-string v0, "device.jailbroken"

    invoke-virtual {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema$Default$1;->add(Ljava/lang/Object;)Z

    .line 36
    const-string v0, "device.limit_ad_tracking"

    invoke-virtual {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema$Default$1;->add(Ljava/lang/Object;)Z

    .line 37
    const-string v0, "screen.width"

    invoke-virtual {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema$Default$1;->add(Ljava/lang/Object;)Z

    .line 38
    const-string v0, "screen.height"

    invoke-virtual {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema$Default$1;->add(Ljava/lang/Object;)Z

    .line 39
    const-string v0, "screen.scale"

    invoke-virtual {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema$Default$1;->add(Ljava/lang/Object;)Z

    .line 40
    const-string v0, "screen.dpi"

    invoke-virtual {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema$Default$1;->add(Ljava/lang/Object;)Z

    .line 41
    const-string v0, "sdk.version"

    invoke-virtual {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema$Default$1;->add(Ljava/lang/Object;)Z

    .line 42
    const-string v0, "sdk.build"

    invoke-virtual {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema$Default$1;->add(Ljava/lang/Object;)Z

    .line 43
    const-string v0, "sdk.plugin"

    invoke-virtual {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema$Default$1;->add(Ljava/lang/Object;)Z

    .line 44
    const-string v0, "location.tz"

    invoke-virtual {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema$Default$1;->add(Ljava/lang/Object;)Z

    .line 45
    const-string v0, "location.lat"

    invoke-virtual {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema$Default$1;->add(Ljava/lang/Object;)Z

    .line 46
    const-string v0, "location.lon"

    invoke-virtual {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema$Default$1;->add(Ljava/lang/Object;)Z

    .line 47
    const-string v0, "bundle.schema_hash"

    invoke-virtual {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema$Default$1;->add(Ljava/lang/Object;)Z

    .line 48
    const-string v0, "bundle.id"

    invoke-virtual {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema$Default$1;->add(Ljava/lang/Object;)Z

    .line 49
    const-string v0, "bundle.hash"

    invoke-virtual {p0, v0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema$Default$1;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method
