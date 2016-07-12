.class public final Lcrittercism/android/bo;
.super Ljava/lang/Object;


# instance fields
.field public a:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Lcrittercism/android/bs;)V
    .locals 3

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcrittercism/android/bo;->a:Lorg/json/JSONArray;

    .line 12
    invoke-virtual {p1}, Lcrittercism/android/bs;->c()Ljava/util/List;

    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/bq;

    .line 15
    invoke-virtual {v0}, Lcrittercism/android/bq;->a()Ljava/lang/Object;

    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    iget-object v2, p0, Lcrittercism/android/bo;->a:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 23
    :cond_1
    return-void
.end method
