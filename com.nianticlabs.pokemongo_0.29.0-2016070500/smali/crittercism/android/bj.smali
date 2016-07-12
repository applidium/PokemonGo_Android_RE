.class public final Lcrittercism/android/bj;
.super Lcrittercism/android/ci;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcrittercism/android/bj$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcrittercism/android/bj$a;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcrittercism/android/bj$a;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcrittercism/android/ci;-><init>()V

    .line 37
    sget-object v0, Lcrittercism/android/cg;->a:Lcrittercism/android/cg;

    invoke-virtual {v0}, Lcrittercism/android/cg;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/bj;->a:Ljava/lang/String;

    .line 41
    sget-object v0, Lcrittercism/android/ed;->a:Lcrittercism/android/ed;

    invoke-virtual {v0}, Lcrittercism/android/ed;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/bj;->b:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcrittercism/android/bj;->c:Lcrittercism/android/bj$a;

    .line 43
    iput-object p2, p0, Lcrittercism/android/bj;->d:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONArray;
    .locals 3

    .prologue
    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 54
    const-string v1, "event"

    iget-object v2, p0, Lcrittercism/android/bj;->c:Lcrittercism/android/bj$a;

    invoke-virtual {v2}, Lcrittercism/android/bj$a;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string v1, "viewName"

    iget-object v2, p0, Lcrittercism/android/bj;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcrittercism/android/bj;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x5

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
    .line 48
    iget-object v0, p0, Lcrittercism/android/bj;->a:Ljava/lang/String;

    return-object v0
.end method
