.class public final Lcrittercism/android/bk;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/ch;


# instance fields
.field public a:J

.field public b:Lorg/json/JSONArray;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Lorg/json/JSONArray;

.field public f:Ljava/lang/String;

.field public g:Lorg/json/JSONObject;

.field private h:Lorg/json/JSONObject;

.field private i:Lorg/json/JSONArray;

.field private j:Lorg/json/JSONArray;

.field private k:Ljava/lang/String;

.field private l:Lorg/json/JSONArray;

.field private m:Ljava/lang/String;

.field private n:I

.field private o:Z

.field private p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;J)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v1, ""

    iput-object v1, p0, Lcrittercism/android/bk;->d:Ljava/lang/String;

    .line 61
    const/4 v1, -0x1

    iput v1, p0, Lcrittercism/android/bk;->n:I

    .line 62
    iput-boolean v0, p0, Lcrittercism/android/bk;->o:Z

    .line 68
    instance-of v1, p1, Lcom/crittercism/integrations/PluginException;

    iput-boolean v1, p0, Lcrittercism/android/bk;->o:Z

    .line 72
    sget-object v1, Lcrittercism/android/cg;->a:Lcrittercism/android/cg;

    invoke-virtual {v1}, Lcrittercism/android/cg;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcrittercism/android/bk;->p:Ljava/lang/String;

    .line 73
    const-string v1, "uhe"

    iput-object v1, p0, Lcrittercism/android/bk;->f:Ljava/lang/String;

    .line 74
    new-instance v1, Lcrittercism/android/bu;

    invoke-direct {v1}, Lcrittercism/android/bu;-><init>()V

    new-instance v2, Lcrittercism/android/bx$a;

    invoke-direct {v2}, Lcrittercism/android/bx$a;-><init>()V

    invoke-virtual {v1, v2}, Lcrittercism/android/bu;->a(Lcrittercism/android/bw;)Lcrittercism/android/bu;

    move-result-object v2

    new-instance v3, Lcrittercism/android/bx$c;

    invoke-direct {v3}, Lcrittercism/android/bx$c;-><init>()V

    invoke-virtual {v2, v3}, Lcrittercism/android/bu;->a(Lcrittercism/android/bw;)Lcrittercism/android/bu;

    move-result-object v2

    new-instance v3, Lcrittercism/android/bx$b;

    invoke-direct {v3}, Lcrittercism/android/bx$b;-><init>()V

    invoke-virtual {v2, v3}, Lcrittercism/android/bu;->a(Lcrittercism/android/bw;)Lcrittercism/android/bu;

    move-result-object v2

    new-instance v3, Lcrittercism/android/bx$d;

    invoke-direct {v3}, Lcrittercism/android/bx$d;-><init>()V

    invoke-virtual {v2, v3}, Lcrittercism/android/bu;->a(Lcrittercism/android/bw;)Lcrittercism/android/bu;

    move-result-object v2

    new-instance v3, Lcrittercism/android/bx$e;

    invoke-direct {v3}, Lcrittercism/android/bx$e;-><init>()V

    invoke-virtual {v2, v3}, Lcrittercism/android/bu;->a(Lcrittercism/android/bw;)Lcrittercism/android/bu;

    move-result-object v2

    new-instance v3, Lcrittercism/android/bx$f;

    invoke-direct {v3}, Lcrittercism/android/bx$f;-><init>()V

    invoke-virtual {v2, v3}, Lcrittercism/android/bu;->a(Lcrittercism/android/bw;)Lcrittercism/android/bu;

    move-result-object v2

    new-instance v3, Lcrittercism/android/bx$o;

    invoke-direct {v3}, Lcrittercism/android/bx$o;-><init>()V

    invoke-virtual {v2, v3}, Lcrittercism/android/bu;->a(Lcrittercism/android/bw;)Lcrittercism/android/bu;

    move-result-object v2

    new-instance v3, Lcrittercism/android/bx$p;

    invoke-direct {v3}, Lcrittercism/android/bx$p;-><init>()V

    invoke-virtual {v2, v3}, Lcrittercism/android/bu;->a(Lcrittercism/android/bw;)Lcrittercism/android/bu;

    move-result-object v2

    new-instance v3, Lcrittercism/android/bx$i;

    invoke-direct {v3}, Lcrittercism/android/bx$i;-><init>()V

    invoke-virtual {v2, v3}, Lcrittercism/android/bu;->a(Lcrittercism/android/bw;)Lcrittercism/android/bu;

    move-result-object v2

    new-instance v3, Lcrittercism/android/bx$j;

    invoke-direct {v3}, Lcrittercism/android/bx$j;-><init>()V

    invoke-virtual {v2, v3}, Lcrittercism/android/bu;->a(Lcrittercism/android/bw;)Lcrittercism/android/bu;

    move-result-object v2

    new-instance v3, Lcrittercism/android/bx$h;

    invoke-direct {v3}, Lcrittercism/android/bx$h;-><init>()V

    invoke-virtual {v2, v3}, Lcrittercism/android/bu;->a(Lcrittercism/android/bw;)Lcrittercism/android/bu;

    move-result-object v2

    new-instance v3, Lcrittercism/android/bx$z;

    invoke-direct {v3}, Lcrittercism/android/bx$z;-><init>()V

    invoke-virtual {v2, v3}, Lcrittercism/android/bu;->a(Lcrittercism/android/bw;)Lcrittercism/android/bu;

    move-result-object v2

    new-instance v3, Lcrittercism/android/bx$aa;

    invoke-direct {v3}, Lcrittercism/android/bx$aa;-><init>()V

    invoke-virtual {v2, v3}, Lcrittercism/android/bu;->a(Lcrittercism/android/bw;)Lcrittercism/android/bu;

    move-result-object v2

    new-instance v3, Lcrittercism/android/bx$k;

    invoke-direct {v3}, Lcrittercism/android/bx$k;-><init>()V

    invoke-virtual {v2, v3}, Lcrittercism/android/bu;->a(Lcrittercism/android/bw;)Lcrittercism/android/bu;

    move-result-object v2

    new-instance v3, Lcrittercism/android/bx$l;

    invoke-direct {v3}, Lcrittercism/android/bx$l;-><init>()V

    invoke-virtual {v2, v3}, Lcrittercism/android/bu;->a(Lcrittercism/android/bw;)Lcrittercism/android/bu;

    move-result-object v2

    new-instance v3, Lcrittercism/android/bx$n;

    invoke-direct {v3}, Lcrittercism/android/bx$n;-><init>()V

    invoke-virtual {v2, v3}, Lcrittercism/android/bu;->a(Lcrittercism/android/bw;)Lcrittercism/android/bu;

    move-result-object v2

    new-instance v3, Lcrittercism/android/bx$m;

    invoke-direct {v3}, Lcrittercism/android/bx$m;-><init>()V

    invoke-virtual {v2, v3}, Lcrittercism/android/bu;->a(Lcrittercism/android/bw;)Lcrittercism/android/bu;

    move-result-object v2

    new-instance v3, Lcrittercism/android/bx$q;

    invoke-direct {v3}, Lcrittercism/android/bx$q;-><init>()V

    invoke-virtual {v2, v3}, Lcrittercism/android/bu;->a(Lcrittercism/android/bw;)Lcrittercism/android/bu;

    move-result-object v2

    new-instance v3, Lcrittercism/android/bx$r;

    invoke-direct {v3}, Lcrittercism/android/bx$r;-><init>()V

    invoke-virtual {v2, v3}, Lcrittercism/android/bu;->a(Lcrittercism/android/bw;)Lcrittercism/android/bu;

    move-result-object v2

    new-instance v3, Lcrittercism/android/bx$s;

    invoke-direct {v3}, Lcrittercism/android/bx$s;-><init>()V

    invoke-virtual {v2, v3}, Lcrittercism/android/bu;->a(Lcrittercism/android/bw;)Lcrittercism/android/bu;

    move-result-object v2

    new-instance v3, Lcrittercism/android/bx$t;

    invoke-direct {v3}, Lcrittercism/android/bx$t;-><init>()V

    invoke-virtual {v2, v3}, Lcrittercism/android/bu;->a(Lcrittercism/android/bw;)Lcrittercism/android/bu;

    move-result-object v2

    new-instance v3, Lcrittercism/android/bx$u;

    invoke-direct {v3}, Lcrittercism/android/bx$u;-><init>()V

    invoke-virtual {v2, v3}, Lcrittercism/android/bu;->a(Lcrittercism/android/bw;)Lcrittercism/android/bu;

    move-result-object v2

    new-instance v3, Lcrittercism/android/bx$v;

    invoke-direct {v3}, Lcrittercism/android/bx$v;-><init>()V

    invoke-virtual {v2, v3}, Lcrittercism/android/bu;->a(Lcrittercism/android/bw;)Lcrittercism/android/bu;

    move-result-object v2

    new-instance v3, Lcrittercism/android/bx$w;

    invoke-direct {v3}, Lcrittercism/android/bx$w;-><init>()V

    invoke-virtual {v2, v3}, Lcrittercism/android/bu;->a(Lcrittercism/android/bw;)Lcrittercism/android/bu;

    move-result-object v2

    new-instance v3, Lcrittercism/android/bx$x;

    invoke-direct {v3}, Lcrittercism/android/bx$x;-><init>()V

    invoke-virtual {v2, v3}, Lcrittercism/android/bu;->a(Lcrittercism/android/bw;)Lcrittercism/android/bu;

    move-result-object v2

    new-instance v3, Lcrittercism/android/bx$y;

    invoke-direct {v3}, Lcrittercism/android/bx$y;-><init>()V

    invoke-virtual {v2, v3}, Lcrittercism/android/bu;->a(Lcrittercism/android/bw;)Lcrittercism/android/bu;

    invoke-virtual {v1}, Lcrittercism/android/bu;->a()Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcrittercism/android/bk;->g:Lorg/json/JSONObject;

    .line 76
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcrittercism/android/bk;->h:Lorg/json/JSONObject;

    .line 77
    iput-wide p2, p0, Lcrittercism/android/bk;->a:J

    .line 78
    invoke-direct {p0, p1}, Lcrittercism/android/bk;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcrittercism/android/bk;->c:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 80
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcrittercism/android/bk;->d:Ljava/lang/String;

    .line 87
    :cond_0
    iget-boolean v1, p0, Lcrittercism/android/bk;->o:Z

    if-nez v1, :cond_1

    .line 88
    invoke-static {p1}, Lcrittercism/android/bk;->c(Ljava/lang/Throwable;)I

    move-result v1

    iput v1, p0, Lcrittercism/android/bk;->n:I

    .line 91
    :cond_1
    const-string v1, "android"

    iput-object v1, p0, Lcrittercism/android/bk;->k:Ljava/lang/String;

    .line 93
    sget-object v1, Lcrittercism/android/ed;->a:Lcrittercism/android/ed;

    invoke-virtual {v1}, Lcrittercism/android/ed;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcrittercism/android/bk;->m:Ljava/lang/String;

    .line 94
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iput-object v1, p0, Lcrittercism/android/bk;->l:Lorg/json/JSONArray;

    .line 95
    invoke-static {p1}, Lcrittercism/android/bk;->b(Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object v1

    .line 96
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 97
    iget-object v4, p0, Lcrittercism/android/bk;->l:Lorg/json/JSONArray;

    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_2
    return-void
.end method

.method private a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    iget-boolean v0, p0, Lcrittercism/android/bk;->o:Z

    if-eqz v0, :cond_1

    .line 134
    check-cast p1, Lcom/crittercism/integrations/PluginException;

    invoke-virtual {p1}, Lcom/crittercism/integrations/PluginException;->getExceptionName()Ljava/lang/String;

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    :cond_0
    move-object p1, v0

    .line 141
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_0

    :cond_2
    move-object v0, v1

    .line 146
    goto :goto_0
.end method

.method private static b(Ljava/lang/Throwable;)[Ljava/lang/String;
    .locals 3

    .prologue
    .line 154
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 155
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 159
    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 161
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_0

    if-ne v0, p0, :cond_1

    .line 164
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move-object p0, v0

    goto :goto_0
.end method

.method private static c(Ljava/lang/Throwable;)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    move v0, v1

    .line 169
    :goto_0
    array-length v2, v3

    if-ge v0, v2, :cond_2

    .line 170
    aget-object v2, v3, v0

    .line 173
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 178
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 181
    :goto_1
    if-eqz v2, :cond_3

    .line 182
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    if-ne v5, v2, :cond_0

    .line 183
    const/4 v2, 0x1

    .line 189
    :goto_2
    if-nez v2, :cond_1

    .line 195
    add-int/lit8 v0, v0, 0x1

    .line 200
    :goto_3
    return v0

    .line 186
    :cond_0
    invoke-virtual {v2}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v2

    goto :goto_1

    .line 175
    :catch_0
    move-exception v2

    .line 169
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_2
    const/4 v0, -0x1

    goto :goto_3

    :cond_3
    move v2, v1

    goto :goto_2
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    .line 204
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcrittercism/android/bk;->e:Lorg/json/JSONArray;

    .line 205
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    .line 206
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 207
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 208
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    .line 209
    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    iget-wide v6, p0, Lcrittercism/android/bk;->a:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 210
    const-string v4, "name"

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v4, "id"

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v4, "state"

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread$State;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v1, "stacktrace"

    new-instance v4, Lorg/json/JSONArray;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v0, p0, Lcrittercism/android/bk;->e:Lorg/json/JSONArray;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 217
    :cond_1
    return-void
.end method

.method public final a(Lcrittercism/android/bs;)V
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lcrittercism/android/bo;

    invoke-direct {v0, p1}, Lcrittercism/android/bo;-><init>(Lcrittercism/android/bs;)V

    iget-object v0, v0, Lcrittercism/android/bo;->a:Lorg/json/JSONArray;

    iput-object v0, p0, Lcrittercism/android/bk;->i:Lorg/json/JSONArray;

    .line 114
    return-void
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 319
    invoke-virtual {p0}, Lcrittercism/android/bk;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 321
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 322
    return-void
.end method

.method public final a(Ljava/lang/String;Lcrittercism/android/bs;)V
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lcrittercism/android/bo;

    invoke-direct {v0, p2}, Lcrittercism/android/bo;-><init>(Lcrittercism/android/bs;)V

    iget-object v0, v0, Lcrittercism/android/bo;->a:Lorg/json/JSONArray;

    .line 106
    :try_start_0
    iget-object v1, p0, Lcrittercism/android/bk;->h:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 3

    .prologue
    .line 121
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcrittercism/android/bk;->j:Lorg/json/JSONArray;

    .line 122
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/bg;

    .line 124
    :try_start_0
    iget-object v2, p0, Lcrittercism/android/bk;->j:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lcrittercism/android/bg;->j()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 129
    :cond_0
    return-void
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 8

    .prologue
    .line 284
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 285
    const-string v0, "app_state"

    iget-object v2, p0, Lcrittercism/android/bk;->g:Lorg/json/JSONObject;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const-string v0, "breadcrumbs"

    iget-object v2, p0, Lcrittercism/android/bk;->h:Lorg/json/JSONObject;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v0, "current_thread_id"

    iget-wide v2, p0, Lcrittercism/android/bk;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object v0, p0, Lcrittercism/android/bk;->i:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    .line 289
    const-string v0, "endpoints"

    iget-object v2, p0, Lcrittercism/android/bk;->i:Lorg/json/JSONArray;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_0
    iget-object v0, p0, Lcrittercism/android/bk;->b:Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    .line 293
    const-string v0, "systemBreadcrumbs"

    iget-object v2, p0, Lcrittercism/android/bk;->b:Lorg/json/JSONArray;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    :cond_1
    iget-object v0, p0, Lcrittercism/android/bk;->j:Lorg/json/JSONArray;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcrittercism/android/bk;->j:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 297
    const-string v0, "transactions"

    iget-object v2, p0, Lcrittercism/android/bk;->j:Lorg/json/JSONArray;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_2
    const-string v0, "exception_name"

    iget-object v2, p0, Lcrittercism/android/bk;->c:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v0, "exception_reason"

    iget-object v2, p0, Lcrittercism/android/bk;->d:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v0, "platform"

    iget-object v2, p0, Lcrittercism/android/bk;->k:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object v0, p0, Lcrittercism/android/bk;->e:Lorg/json/JSONArray;

    if-eqz v0, :cond_3

    .line 303
    const-string v0, "threads"

    iget-object v2, p0, Lcrittercism/android/bk;->e:Lorg/json/JSONArray;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    :cond_3
    const-string v0, "ts"

    iget-object v2, p0, Lcrittercism/android/bk;->m:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string v2, "type"

    iget-object v0, p0, Lcrittercism/android/bk;->f:Ljava/lang/String;

    iget-wide v4, p0, Lcrittercism/android/bk;->a:J

    const-wide/16 v6, 0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "-bg"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string v0, "unsymbolized_stacktrace"

    iget-object v2, p0, Lcrittercism/android/bk;->l:Lorg/json/JSONArray;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-boolean v0, p0, Lcrittercism/android/bk;->o:Z

    if-nez v0, :cond_5

    .line 309
    const-string v0, "suspect_line_index"

    iget v2, p0, Lcrittercism/android/bk;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :cond_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcrittercism/android/bk;->p:Ljava/lang/String;

    return-object v0
.end method
