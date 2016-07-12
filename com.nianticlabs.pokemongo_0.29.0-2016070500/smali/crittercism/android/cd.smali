.class public final Lcrittercism/android/cd;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/ch;


# instance fields
.field private a:Lorg/json/JSONObject;

.field private b:Lorg/json/JSONObject;

.field private c:Lorg/json/JSONArray;

.field private d:Lorg/json/JSONArray;

.field private e:Ljava/io/File;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcrittercism/android/bs;Lcrittercism/android/bs;Lcrittercism/android/bs;Lcrittercism/android/bs;)V
    .locals 3

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 42
    sget-object v0, Lcrittercism/android/cg;->a:Lcrittercism/android/cg;

    invoke-virtual {v0}, Lcrittercism/android/cg;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/cd;->f:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcrittercism/android/cd;->e:Ljava/io/File;

    .line 48
    new-instance v0, Lcrittercism/android/bu;

    invoke-direct {v0}, Lcrittercism/android/bu;-><init>()V

    new-instance v1, Lcrittercism/android/bx$c;

    invoke-direct {v1}, Lcrittercism/android/bx$c;-><init>()V

    invoke-virtual {v0, v1}, Lcrittercism/android/bu;->a(Lcrittercism/android/bw;)Lcrittercism/android/bu;

    move-result-object v0

    new-instance v1, Lcrittercism/android/bx$b;

    invoke-direct {v1}, Lcrittercism/android/bx$b;-><init>()V

    invoke-virtual {v0, v1}, Lcrittercism/android/bu;->a(Lcrittercism/android/bw;)Lcrittercism/android/bu;

    move-result-object v0

    new-instance v1, Lcrittercism/android/bx$d;

    invoke-direct {v1}, Lcrittercism/android/bx$d;-><init>()V

    invoke-virtual {v0, v1}, Lcrittercism/android/bu;->a(Lcrittercism/android/bw;)Lcrittercism/android/bu;

    move-result-object v0

    new-instance v1, Lcrittercism/android/bx$f;

    invoke-direct {v1}, Lcrittercism/android/bx$f;-><init>()V

    invoke-virtual {v0, v1}, Lcrittercism/android/bu;->a(Lcrittercism/android/bw;)Lcrittercism/android/bu;

    move-result-object v0

    new-instance v1, Lcrittercism/android/bx$o;

    invoke-direct {v1}, Lcrittercism/android/bx$o;-><init>()V

    invoke-virtual {v0, v1}, Lcrittercism/android/bu;->a(Lcrittercism/android/bw;)Lcrittercism/android/bu;

    move-result-object v0

    new-instance v1, Lcrittercism/android/bx$p;

    invoke-direct {v1}, Lcrittercism/android/bx$p;-><init>()V

    invoke-virtual {v0, v1}, Lcrittercism/android/bu;->a(Lcrittercism/android/bw;)Lcrittercism/android/bu;

    move-result-object v0

    new-instance v1, Lcrittercism/android/bx$j;

    invoke-direct {v1}, Lcrittercism/android/bx$j;-><init>()V

    invoke-virtual {v0, v1}, Lcrittercism/android/bu;->a(Lcrittercism/android/bw;)Lcrittercism/android/bu;

    move-result-object v0

    new-instance v1, Lcrittercism/android/bx$h;

    invoke-direct {v1}, Lcrittercism/android/bx$h;-><init>()V

    invoke-virtual {v0, v1}, Lcrittercism/android/bu;->a(Lcrittercism/android/bw;)Lcrittercism/android/bu;

    move-result-object v0

    new-instance v1, Lcrittercism/android/bx$z;

    invoke-direct {v1}, Lcrittercism/android/bx$z;-><init>()V

    invoke-virtual {v0, v1}, Lcrittercism/android/bu;->a(Lcrittercism/android/bw;)Lcrittercism/android/bu;

    move-result-object v0

    new-instance v1, Lcrittercism/android/bx$aa;

    invoke-direct {v1}, Lcrittercism/android/bx$aa;-><init>()V

    invoke-virtual {v0, v1}, Lcrittercism/android/bu;->a(Lcrittercism/android/bw;)Lcrittercism/android/bu;

    move-result-object v0

    new-instance v1, Lcrittercism/android/bx$k;

    invoke-direct {v1}, Lcrittercism/android/bx$k;-><init>()V

    invoke-virtual {v0, v1}, Lcrittercism/android/bu;->a(Lcrittercism/android/bw;)Lcrittercism/android/bu;

    move-result-object v0

    new-instance v1, Lcrittercism/android/bx$r;

    invoke-direct {v1}, Lcrittercism/android/bx$r;-><init>()V

    invoke-virtual {v0, v1}, Lcrittercism/android/bu;->a(Lcrittercism/android/bw;)Lcrittercism/android/bu;

    move-result-object v0

    new-instance v1, Lcrittercism/android/bx$m;

    invoke-direct {v1}, Lcrittercism/android/bx$m;-><init>()V

    invoke-virtual {v0, v1}, Lcrittercism/android/bu;->a(Lcrittercism/android/bw;)Lcrittercism/android/bu;

    move-result-object v0

    new-instance v1, Lcrittercism/android/bx$s;

    invoke-direct {v1}, Lcrittercism/android/bx$s;-><init>()V

    invoke-virtual {v0, v1}, Lcrittercism/android/bu;->a(Lcrittercism/android/bw;)Lcrittercism/android/bu;

    move-result-object v0

    new-instance v1, Lcrittercism/android/bx$w;

    invoke-direct {v1}, Lcrittercism/android/bx$w;-><init>()V

    invoke-virtual {v0, v1}, Lcrittercism/android/bu;->a(Lcrittercism/android/bw;)Lcrittercism/android/bu;

    move-result-object v0

    new-instance v1, Lcrittercism/android/bx$x;

    invoke-direct {v1}, Lcrittercism/android/bx$x;-><init>()V

    invoke-virtual {v0, v1}, Lcrittercism/android/bu;->a(Lcrittercism/android/bw;)Lcrittercism/android/bu;

    move-result-object v0

    invoke-virtual {v0}, Lcrittercism/android/bu;->a()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/cd;->a:Lorg/json/JSONObject;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "crashed_session"

    new-instance v2, Lcrittercism/android/bo;

    invoke-direct {v2, p2}, Lcrittercism/android/bo;-><init>(Lcrittercism/android/bs;)V

    iget-object v2, v2, Lcrittercism/android/bo;->a:Lorg/json/JSONArray;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Lcrittercism/android/bs;->b()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "previous_session"

    new-instance v2, Lcrittercism/android/bo;

    invoke-direct {v2, p3}, Lcrittercism/android/bo;-><init>(Lcrittercism/android/bs;)V

    iget-object v2, v2, Lcrittercism/android/bo;->a:Lorg/json/JSONArray;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lcrittercism/android/cd;->b:Lorg/json/JSONObject;

    .line 50
    new-instance v0, Lcrittercism/android/bo;

    invoke-direct {v0, p4}, Lcrittercism/android/bo;-><init>(Lcrittercism/android/bs;)V

    iget-object v0, v0, Lcrittercism/android/bo;->a:Lorg/json/JSONArray;

    iput-object v0, p0, Lcrittercism/android/cd;->c:Lorg/json/JSONArray;

    .line 51
    new-instance v0, Lcrittercism/android/bo;

    invoke-direct {v0, p5}, Lcrittercism/android/bo;-><init>(Lcrittercism/android/bs;)V

    iget-object v0, v0, Lcrittercism/android/bo;->a:Lorg/json/JSONArray;

    iput-object v0, p0, Lcrittercism/android/cd;->d:Lorg/json/JSONArray;

    .line 53
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 88
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 89
    const-string v0, "app_state"

    iget-object v1, p0, Lcrittercism/android/cd;->a:Lorg/json/JSONObject;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v0, "breadcrumbs"

    iget-object v1, p0, Lcrittercism/android/cd;->b:Lorg/json/JSONObject;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v0, "endpoints"

    iget-object v1, p0, Lcrittercism/android/cd;->c:Lorg/json/JSONArray;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v0, "systemBreadcrumbs"

    iget-object v1, p0, Lcrittercism/android/cd;->d:Lorg/json/JSONArray;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-array v0, v7, [B

    .line 95
    const/16 v1, 0x2000

    new-array v3, v1, [B

    .line 96
    new-instance v4, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcrittercism/android/cd;->e:Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 98
    :goto_0
    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v1, -0x1

    if-eq v5, v1, :cond_0

    .line 100
    array-length v1, v0

    add-int/2addr v1, v5

    new-array v1, v1, [B

    .line 101
    array-length v6, v0

    invoke-static {v0, v7, v1, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    array-length v0, v0

    invoke-static {v3, v7, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 103
    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 106
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 107
    const-string v3, "dmp_name"

    iget-object v4, p0, Lcrittercism/android/cd;->e:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v3, "dmp_file"

    invoke-static {v0}, Lcrittercism/android/cr;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v0, "ndk_dmp_info"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 112
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 114
    return-void
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcrittercism/android/cd;->f:Ljava/lang/String;

    return-object v0
.end method
