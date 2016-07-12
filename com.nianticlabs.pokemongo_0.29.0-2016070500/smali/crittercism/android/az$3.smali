.class final Lcrittercism/android/az$3;
.super Lcrittercism/android/di;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcrittercism/android/az;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcrittercism/android/az;

.field final synthetic b:Lcrittercism/android/az;


# direct methods
.method constructor <init>(Lcrittercism/android/az;Lcrittercism/android/az;)V
    .locals 0

    .prologue
    .line 1360
    iput-object p1, p0, Lcrittercism/android/az$3;->b:Lcrittercism/android/az;

    iput-object p2, p0, Lcrittercism/android/az$3;->a:Lcrittercism/android/az;

    invoke-direct {p0}, Lcrittercism/android/di;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 1362
    iget-object v0, p0, Lcrittercism/android/az$3;->a:Lcrittercism/android/az;

    iget-object v0, v0, Lcrittercism/android/az;->f:Lcrittercism/android/dw;

    .line 1363
    invoke-virtual {v0}, Lcrittercism/android/dw;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1376
    :goto_0
    return-void

    .line 1367
    :cond_0
    new-instance v0, Lcrittercism/android/cu;

    iget-object v1, p0, Lcrittercism/android/az$3;->a:Lcrittercism/android/az;

    invoke-direct {v0, v1}, Lcrittercism/android/cu;-><init>(Lcrittercism/android/au;)V

    .line 1368
    const-string v1, "metadata"

    iget-object v2, p0, Lcrittercism/android/az$3;->a:Lcrittercism/android/az;

    iget-object v2, v2, Lcrittercism/android/az;->x:Lcrittercism/android/dv;

    invoke-virtual {v2}, Lcrittercism/android/dv;->a()Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, v0, Lcrittercism/android/cu;->a:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    new-instance v1, Lcrittercism/android/db;

    iget-object v2, p0, Lcrittercism/android/az$3;->b:Lcrittercism/android/az;

    iget-object v2, v2, Lcrittercism/android/az;->u:Lcrittercism/android/bb;

    invoke-virtual {v2}, Lcrittercism/android/bb;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/android_v2/update_user_metadata"

    invoke-direct {v1, v2, v3}, Lcrittercism/android/db;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcrittercism/android/db;->a()Ljava/net/URL;

    move-result-object v1

    .line 1371
    new-instance v2, Lcrittercism/android/dc;

    invoke-direct {v2, v1}, Lcrittercism/android/dc;-><init>(Ljava/net/URL;)V

    .line 1373
    new-instance v1, Lcrittercism/android/dd;

    iget-object v3, p0, Lcrittercism/android/az$3;->a:Lcrittercism/android/az;

    iget-object v3, v3, Lcrittercism/android/az;->x:Lcrittercism/android/dv;

    invoke-direct {v1, v3}, Lcrittercism/android/dd;-><init>(Lcrittercism/android/dv;)V

    .line 1374
    new-instance v3, Lcrittercism/android/dj;

    invoke-direct {v3, v0, v2, v1}, Lcrittercism/android/dj;-><init>(Lcrittercism/android/cw;Lcrittercism/android/dc;Lcrittercism/android/cy;)V

    invoke-virtual {v3}, Lcrittercism/android/dj;->run()V

    goto :goto_0
.end method
