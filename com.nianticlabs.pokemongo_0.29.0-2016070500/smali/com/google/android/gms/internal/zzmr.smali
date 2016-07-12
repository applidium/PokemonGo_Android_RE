.class public final Lcom/google/android/gms/internal/zzmr;
.super Ljava/lang/Object;


# static fields
.field private static zzail:Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzmr;->zzail:Landroid/content/IntentFilter;

    return-void
.end method

.method public static zzao(Landroid/content/Context;)I
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v4, Lcom/google/android/gms/internal/zzmr;->zzail:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_3

    move v1, v2

    :goto_2
    invoke-static {}, Lcom/google/android/gms/internal/zzmx;->zzqC()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    :goto_3
    if-eqz v0, :cond_5

    move v0, v2

    :goto_4
    shl-int/lit8 v0, v0, 0x1

    if-eqz v1, :cond_6

    :goto_5
    or-int/2addr v0, v2

    goto :goto_0

    :cond_2
    const-string v1, "plugged"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    goto :goto_3

    :cond_5
    move v0, v3

    goto :goto_4

    :cond_6
    move v2, v3

    goto :goto_5
.end method

.method public static zzap(Landroid/content/Context;)F
    .locals 4

    const/4 v3, -0x1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/google/android/gms/internal/zzmr;->zzail:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v0, 0x7fc00000    # NaNf

    if-eqz v1, :cond_0

    const-string v0, "level"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "scale"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    :cond_0
    return v0
.end method
