.class final Lcrittercism/android/i$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lcrittercism/android/i;


# direct methods
.method public constructor <init>(Lcrittercism/android/i;)V
    .locals 1

    .prologue
    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcrittercism/android/i$a;->b:Z

    .line 573
    iput-object p1, p0, Lcrittercism/android/i$a;->c:Lcrittercism/android/i;

    .line 574
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcrittercism/android/i$a;->a:Z

    .line 575
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 578
    iget-boolean v0, p0, Lcrittercism/android/i$a;->b:Z

    return v0
.end method

.method public final run()V
    .locals 1

    .prologue
    .line 583
    iget-boolean v0, p0, Lcrittercism/android/i$a;->a:Z

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcrittercism/android/i$a;->c:Lcrittercism/android/i;

    invoke-virtual {v0}, Lcrittercism/android/i;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcrittercism/android/i$a;->b:Z

    .line 588
    :goto_0
    return-void

    .line 586
    :cond_0
    iget-object v0, p0, Lcrittercism/android/i$a;->c:Lcrittercism/android/i;

    invoke-virtual {v0}, Lcrittercism/android/i;->b()V

    goto :goto_0
.end method
