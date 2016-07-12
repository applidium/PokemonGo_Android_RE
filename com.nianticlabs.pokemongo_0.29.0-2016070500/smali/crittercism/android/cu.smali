.class public final Lcrittercism/android/cu;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/cw;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcrittercism/android/cu$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcrittercism/android/au;)V
    .locals 3

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcrittercism/android/cu;->a:Ljava/util/Map;

    .line 39
    iget-object v0, p0, Lcrittercism/android/cu;->a:Ljava/util/Map;

    const-string v1, "app_id"

    invoke-interface {p1}, Lcrittercism/android/au;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcrittercism/android/cu;->a:Ljava/util/Map;

    const-string v1, "hashed_device_id"

    invoke-interface {p1}, Lcrittercism/android/au;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcrittercism/android/cu;->a:Ljava/util/Map;

    const-string v1, "library_version"

    const-string v2, "5.0.8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcrittercism/android/cu;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcrittercism/android/cu;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-object p0
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONArray;)Lcrittercism/android/cu;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcrittercism/android/cu;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-object p0
.end method

.method public final synthetic a(Lcrittercism/android/bs;)Lcrittercism/android/cw;
    .locals 3

    .prologue
    .line 21
    iget-object v0, p1, Lcrittercism/android/bs;->b:Ljava/lang/String;

    iget-object v0, p0, Lcrittercism/android/cu;->a:Ljava/util/Map;

    iget-object v1, p1, Lcrittercism/android/bs;->b:Ljava/lang/String;

    new-instance v2, Lcrittercism/android/bo;

    invoke-direct {v2, p1}, Lcrittercism/android/bo;-><init>(Lcrittercism/android/bs;)V

    iget-object v2, v2, Lcrittercism/android/bo;->a:Lorg/json/JSONArray;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 83
    invoke-static {}, Lcrittercism/android/dx;->b()V

    .line 84
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcrittercism/android/cu;->a:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 85
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 104
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcrittercism/android/cu;->a:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    .line 106
    :catch_0
    move-exception v1

    invoke-static {}, Lcrittercism/android/dx;->a()V

    goto :goto_0
.end method
