.class final Lcrittercism/android/az$5;
.super Lcrittercism/android/di;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;

.field final synthetic b:J

.field final synthetic c:Lcrittercism/android/az;


# direct methods
.method constructor <init>(Lcrittercism/android/az;Ljava/lang/Throwable;J)V
    .locals 1

    .prologue
    .line 633
    iput-object p1, p0, Lcrittercism/android/az$5;->c:Lcrittercism/android/az;

    iput-object p2, p0, Lcrittercism/android/az$5;->a:Ljava/lang/Throwable;

    iput-wide p3, p0, Lcrittercism/android/az$5;->b:J

    invoke-direct {p0}, Lcrittercism/android/di;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    .line 636
    iget-object v0, p0, Lcrittercism/android/az$5;->c:Lcrittercism/android/az;

    iget-object v0, v0, Lcrittercism/android/az;->f:Lcrittercism/android/dw;

    invoke-virtual {v0}, Lcrittercism/android/dw;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    :goto_0
    return-void

    .line 640
    :cond_0
    iget-object v0, p0, Lcrittercism/android/az$5;->c:Lcrittercism/android/az;

    iget-object v1, v0, Lcrittercism/android/az;->p:Lcrittercism/android/cv;

    monitor-enter v1

    .line 641
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/az$5;->c:Lcrittercism/android/az;

    iget v0, v0, Lcrittercism/android/az;->B:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    .line 642
    new-instance v0, Lcrittercism/android/bk;

    iget-object v2, p0, Lcrittercism/android/az$5;->a:Ljava/lang/Throwable;

    iget-wide v4, p0, Lcrittercism/android/az$5;->b:J

    invoke-direct {v0, v2, v4, v5}, Lcrittercism/android/bk;-><init>(Ljava/lang/Throwable;J)V

    .line 643
    const-string v2, "current_session"

    iget-object v3, p0, Lcrittercism/android/az$5;->c:Lcrittercism/android/az;

    iget-object v3, v3, Lcrittercism/android/az;->k:Lcrittercism/android/bs;

    invoke-virtual {v0, v2, v3}, Lcrittercism/android/bk;->a(Ljava/lang/String;Lcrittercism/android/bs;)V

    .line 649
    iget-object v2, p0, Lcrittercism/android/az$5;->c:Lcrittercism/android/az;

    iget-object v2, v2, Lcrittercism/android/az;->l:Lcrittercism/android/bs;

    invoke-virtual {v0, v2}, Lcrittercism/android/bk;->a(Lcrittercism/android/bs;)V

    .line 650
    const-string v2, "he"

    iput-object v2, v0, Lcrittercism/android/bk;->f:Ljava/lang/String;

    .line 652
    iget-object v2, p0, Lcrittercism/android/az$5;->c:Lcrittercism/android/az;

    iget-object v2, v2, Lcrittercism/android/az;->p:Lcrittercism/android/cv;

    invoke-virtual {v2}, Lcrittercism/android/cv;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 653
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Lcrittercism/android/bk;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    .line 655
    new-instance v2, Lcrittercism/android/cu;

    sget-object v3, Lcrittercism/android/az;->a:Lcrittercism/android/az;

    invoke-direct {v2, v3}, Lcrittercism/android/cu;-><init>(Lcrittercism/android/au;)V

    sget-object v3, Lcrittercism/android/br;->b:Lcrittercism/android/br;

    invoke-virtual {v3}, Lcrittercism/android/br;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcrittercism/android/cu;->a(Ljava/lang/String;Lorg/json/JSONArray;)Lcrittercism/android/cu;

    move-result-object v0

    .line 659
    new-instance v2, Lcrittercism/android/dj;

    new-instance v3, Lcrittercism/android/dc;

    new-instance v4, Lcrittercism/android/db;

    iget-object v5, p0, Lcrittercism/android/az$5;->c:Lcrittercism/android/az;

    iget-object v5, v5, Lcrittercism/android/az;->u:Lcrittercism/android/bb;

    invoke-virtual {v5}, Lcrittercism/android/bb;->b()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/android_v2/handle_exceptions"

    invoke-direct {v4, v5, v6}, Lcrittercism/android/db;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcrittercism/android/db;->a()Ljava/net/URL;

    move-result-object v4

    invoke-direct {v3, v4}, Lcrittercism/android/dc;-><init>(Ljava/net/URL;)V

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Lcrittercism/android/dj;-><init>(Lcrittercism/android/cw;Lcrittercism/android/dc;Lcrittercism/android/cy;)V

    invoke-virtual {v2}, Lcrittercism/android/dj;->run()V

    .line 663
    iget-object v0, p0, Lcrittercism/android/az$5;->c:Lcrittercism/android/az;

    iget v2, v0, Lcrittercism/android/az;->B:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcrittercism/android/az;->B:I

    .line 664
    iget-object v0, p0, Lcrittercism/android/az$5;->c:Lcrittercism/android/az;

    iget-object v0, v0, Lcrittercism/android/az;->p:Lcrittercism/android/cv;

    invoke-virtual {v0}, Lcrittercism/android/cv;->b()V

    .line 667
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
