.class public final Lcrittercism/android/bx$e;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/bw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/bx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private a:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    iput-object v6, p0, Lcrittercism/android/bx$e;->a:Ljava/lang/Double;

    .line 344
    invoke-static {}, Lcrittercism/android/bx;->b()Landroid/content/Context;

    .line 345
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 346
    invoke-static {}, Lcrittercism/android/bx;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 347
    const-string v3, "level"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 348
    const-string v4, "scale"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    int-to-double v4, v2

    .line 349
    if-ltz v3, :cond_0

    const-wide/16 v6, 0x0

    cmpl-double v2, v4, v6

    if-lez v2, :cond_0

    int-to-double v0, v3

    div-double/2addr v0, v4

    .line 350
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/bx$e;->a:Ljava/lang/Double;

    .line 351
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    const-string v0, "battery_level"

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcrittercism/android/bx$e;->a:Ljava/lang/Double;

    return-object v0
.end method
