.class public final Landroid/support/v4/app/ActivityManagerCompat;
.super Ljava/lang/Object;
.source "ActivityManagerCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static isLowRamDevice(Landroid/app/ActivityManager;)Z
    .locals 2
    .param p0, "am"    # Landroid/app/ActivityManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 40
    invoke-static {p0}, Landroid/support/v4/app/ActivityManagerCompatKitKat;->isLowRamDevice(Landroid/app/ActivityManager;)Z

    move-result v0

    .line 42
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
