.class final Lcrittercism/android/bg$6;
.super Lcrittercism/android/di;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcrittercism/android/bg;->b(Lcrittercism/android/bg$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcrittercism/android/bg;

.field final synthetic b:Lcrittercism/android/bg;


# direct methods
.method constructor <init>(Lcrittercism/android/bg;Lcrittercism/android/bg;)V
    .locals 0

    .prologue
    .line 746
    iput-object p1, p0, Lcrittercism/android/bg$6;->b:Lcrittercism/android/bg;

    iput-object p2, p0, Lcrittercism/android/bg$6;->a:Lcrittercism/android/bg;

    invoke-direct {p0}, Lcrittercism/android/di;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 749
    iget-object v0, p0, Lcrittercism/android/bg$6;->a:Lcrittercism/android/bg;

    invoke-static {v0}, Lcrittercism/android/bg;->a(Lcrittercism/android/bg;)Lcrittercism/android/bg$a;

    move-result-object v0

    sget-object v1, Lcrittercism/android/bg$a;->c:Lcrittercism/android/bg$a;

    if-eq v0, v1, :cond_0

    .line 750
    new-instance v0, Lcrittercism/android/bg$6$1;

    invoke-direct {v0, p0}, Lcrittercism/android/bg$6$1;-><init>(Lcrittercism/android/bg$6;)V

    .line 756
    iget-object v1, p0, Lcrittercism/android/bg$6;->b:Lcrittercism/android/bg;

    iget-object v1, v1, Lcrittercism/android/bg;->a:Lcrittercism/android/az;

    iget-object v1, v1, Lcrittercism/android/az;->s:Ljava/util/concurrent/ExecutorService;

    .line 758
    new-instance v2, Ljava/util/concurrent/FutureTask;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 759
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 762
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 770
    :cond_0
    :goto_0
    iget-object v0, p0, Lcrittercism/android/bg$6;->b:Lcrittercism/android/bg;

    iget-object v0, v0, Lcrittercism/android/bg;->a:Lcrittercism/android/az;

    iget-object v0, v0, Lcrittercism/android/az;->q:Lcrittercism/android/dg;

    iget-object v0, v0, Lcrittercism/android/dg;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 771
    iget-object v0, p0, Lcrittercism/android/bg$6;->b:Lcrittercism/android/bg;

    iget-object v0, v0, Lcrittercism/android/bg;->a:Lcrittercism/android/az;

    iget-object v0, v0, Lcrittercism/android/az;->n:Lcrittercism/android/bs;

    iget-object v1, p0, Lcrittercism/android/bg$6;->b:Lcrittercism/android/bg;

    invoke-static {v1}, Lcrittercism/android/bg;->c(Lcrittercism/android/bg;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcrittercism/android/bs;->a(Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lcrittercism/android/bg$6;->b:Lcrittercism/android/bg;

    iget-object v0, v0, Lcrittercism/android/bg;->a:Lcrittercism/android/az;

    iget-object v0, v0, Lcrittercism/android/az;->o:Lcrittercism/android/bs;

    iget-object v1, p0, Lcrittercism/android/bg$6;->a:Lcrittercism/android/bg;

    invoke-virtual {v0, v1}, Lcrittercism/android/bs;->a(Lcrittercism/android/ch;)Z

    .line 773
    return-void

    .line 763
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 765
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
