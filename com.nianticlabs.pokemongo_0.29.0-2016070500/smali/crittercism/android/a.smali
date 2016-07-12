.class public final Lcrittercism/android/a;
.super Ljava/lang/Object;


# instance fields
.field a:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>(Lcrittercism/android/au;Ljava/util/List;)V
    .locals 4

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcrittercism/android/a;->a:Lorg/json/JSONObject;

    .line 43
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 47
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 50
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 51
    invoke-interface {p1}, Lcrittercism/android/au;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 52
    invoke-interface {p1}, Lcrittercism/android/au;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 53
    invoke-interface {p1}, Lcrittercism/android/au;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 54
    const-string v2, "5.0.8"

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 55
    invoke-interface {p1}, Lcrittercism/android/au;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 56
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 59
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 60
    sget-object v2, Lcrittercism/android/ed;->a:Lcrittercism/android/ed;

    invoke-virtual {v2}, Lcrittercism/android/ed;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 61
    invoke-interface {p1}, Lcrittercism/android/au;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 62
    invoke-interface {p1}, Lcrittercism/android/au;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 63
    invoke-interface {p1}, Lcrittercism/android/au;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 64
    invoke-interface {p1}, Lcrittercism/android/au;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 65
    invoke-interface {p1}, Lcrittercism/android/au;->g()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 66
    invoke-interface {p1}, Lcrittercism/android/au;->h()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 67
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 70
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 71
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/c;

    .line 72
    invoke-virtual {v0}, Lcrittercism/android/c;->d()Lorg/json/JSONArray;

    move-result-object v0

    .line 73
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 78
    iget-object v0, p0, Lcrittercism/android/a;->a:Lorg/json/JSONObject;

    const-string v2, "d"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    return-void
.end method

.method public static a(Lcrittercism/android/au;Ljava/util/List;)Lcrittercism/android/a;
    .locals 4

    .prologue
    .line 28
    const/4 v1, 0x0

    .line 31
    :try_start_0
    new-instance v0, Lcrittercism/android/a;

    invoke-direct {v0, p0, p1}, Lcrittercism/android/a;-><init>(Lcrittercism/android/au;Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return-object v0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to generate APM request\'s JSON: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcrittercism/android/dx;->b(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method
