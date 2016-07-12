.class public final Lcrittercism/android/bx$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/bw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/bx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object v0, p0, Lcrittercism/android/bx$a;->a:Ljava/lang/String;

    .line 319
    invoke-static {}, Lcrittercism/android/bx;->c()Lcrittercism/android/bf;

    .line 320
    invoke-static {}, Lcrittercism/android/bx;->b()Landroid/content/Context;

    .line 322
    invoke-static {}, Lcrittercism/android/bx;->c()Lcrittercism/android/bf;

    move-result-object v1

    iget-boolean v1, v1, Lcrittercism/android/bf;->b:Z

    if-eqz v1, :cond_0

    .line 323
    invoke-static {}, Lcrittercism/android/bx;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 324
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 325
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 326
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 328
    :cond_0
    iput-object v0, p0, Lcrittercism/android/bx$a;->a:Ljava/lang/String;

    .line 329
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    const-string v0, "activity"

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcrittercism/android/bx$a;->a:Ljava/lang/String;

    return-object v0
.end method
