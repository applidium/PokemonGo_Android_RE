.class public final Lcrittercism/android/by;
.super Lcrittercism/android/ci;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcrittercism/android/ci;-><init>()V

    .line 24
    sget-object v0, Lcrittercism/android/cg;->a:Lcrittercism/android/cg;

    invoke-virtual {v0}, Lcrittercism/android/cg;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/by;->a:Ljava/lang/String;

    .line 28
    sget-object v0, Lcrittercism/android/ed;->a:Lcrittercism/android/ed;

    invoke-virtual {v0}, Lcrittercism/android/ed;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/by;->b:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcrittercism/android/by;->c:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcrittercism/android/by;->d:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONArray;
    .locals 3

    .prologue
    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 43
    const-string v1, "name"

    iget-object v2, p0, Lcrittercism/android/by;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v1, "reason"

    iget-object v2, p0, Lcrittercism/android/by;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcrittercism/android/by;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcrittercism/android/by;->a:Ljava/lang/String;

    return-object v0
.end method
