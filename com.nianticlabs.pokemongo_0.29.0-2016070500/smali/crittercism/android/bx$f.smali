.class public final Lcrittercism/android/bx$f;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/bw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/bx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcrittercism/android/bx$f;->a:Ljava/lang/String;

    .line 130
    invoke-static {}, Lcrittercism/android/bx;->b()Landroid/content/Context;

    .line 131
    :try_start_0
    invoke-static {}, Lcrittercism/android/bx;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 134
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 139
    :goto_0
    iput-object v0, p0, Lcrittercism/android/bx$f;->a:Ljava/lang/String;

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "carrier == "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcrittercism/android/bx$f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dx;->b()V

    .line 141
    return-void

    .line 137
    :catch_0
    move-exception v0

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    const-string v0, "carrier"

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcrittercism/android/bx$f;->a:Ljava/lang/String;

    return-object v0
.end method
