.class public final Lcrittercism/android/bi;
.super Lcrittercism/android/di;

# interfaces
.implements Lcrittercism/android/bt;


# instance fields
.field private a:J

.field private volatile b:J

.field private c:Landroid/os/ConditionVariable;

.field private d:Landroid/os/ConditionVariable;

.field private e:Lcrittercism/android/au;

.field private f:Lcrittercism/android/bs;

.field private g:Lcrittercism/android/bs;

.field private h:Lcrittercism/android/bs;

.field private i:Lcrittercism/android/bs;

.field private j:Ljava/net/URL;

.field private k:Landroid/content/Context;

.field private volatile l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcrittercism/android/au;Lcrittercism/android/bs;Lcrittercism/android/bs;Lcrittercism/android/bs;Lcrittercism/android/bs;Ljava/net/URL;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Lcrittercism/android/di;-><init>()V

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcrittercism/android/bi;->a:J

    .line 50
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcrittercism/android/bi;->b:J

    .line 51
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v2}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcrittercism/android/bi;->c:Landroid/os/ConditionVariable;

    .line 52
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0, v2}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcrittercism/android/bi;->d:Landroid/os/ConditionVariable;

    .line 61
    iput-boolean v2, p0, Lcrittercism/android/bi;->l:Z

    .line 67
    iput-object p1, p0, Lcrittercism/android/bi;->k:Landroid/content/Context;

    .line 76
    iput-object p3, p0, Lcrittercism/android/bi;->f:Lcrittercism/android/bs;

    .line 77
    iput-object p4, p0, Lcrittercism/android/bi;->g:Lcrittercism/android/bs;

    .line 78
    iput-object p5, p0, Lcrittercism/android/bi;->h:Lcrittercism/android/bs;

    .line 79
    iput-object p6, p0, Lcrittercism/android/bi;->i:Lcrittercism/android/bs;

    .line 80
    iput-object p2, p0, Lcrittercism/android/bi;->e:Lcrittercism/android/au;

    .line 81
    iput-object p7, p0, Lcrittercism/android/bi;->j:Ljava/net/URL;

    .line 82
    iget-object v0, p0, Lcrittercism/android/bi;->f:Lcrittercism/android/bs;

    if-eqz p0, :cond_0

    iget-object v1, v0, Lcrittercism/android/bs;->c:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcrittercism/android/bs;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_0
    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lorg/json/JSONArray;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 207
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 209
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 210
    const-string v2, "appID"

    iget-object v3, p0, Lcrittercism/android/bi;->e:Lcrittercism/android/au;

    invoke-interface {v3}, Lcrittercism/android/au;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    const-string v2, "deviceID"

    iget-object v3, p0, Lcrittercism/android/bi;->e:Lcrittercism/android/au;

    invoke-interface {v3}, Lcrittercism/android/au;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    const-string v2, "crPlatform"

    const-string v3, "android"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    const-string v2, "crVersion"

    iget-object v3, p0, Lcrittercism/android/bi;->e:Lcrittercism/android/au;

    invoke-interface {v3}, Lcrittercism/android/au;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    const-string v2, "deviceModel"

    iget-object v3, p0, Lcrittercism/android/bi;->e:Lcrittercism/android/au;

    invoke-interface {v3}, Lcrittercism/android/au;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    const-string v2, "osName"

    const-string v3, "android"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    const-string v2, "osVersion"

    iget-object v3, p0, Lcrittercism/android/bi;->e:Lcrittercism/android/au;

    invoke-interface {v3}, Lcrittercism/android/au;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    const-string v2, "carrier"

    iget-object v3, p0, Lcrittercism/android/bi;->e:Lcrittercism/android/au;

    invoke-interface {v3}, Lcrittercism/android/au;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    const-string v2, "mobileCountryCode"

    iget-object v3, p0, Lcrittercism/android/bi;->e:Lcrittercism/android/au;

    invoke-interface {v3}, Lcrittercism/android/au;->g()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 219
    const-string v2, "mobileNetworkCode"

    iget-object v3, p0, Lcrittercism/android/bi;->e:Lcrittercism/android/au;

    invoke-interface {v3}, Lcrittercism/android/au;->h()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 220
    const-string v2, "appVersion"

    iget-object v3, p0, Lcrittercism/android/bi;->e:Lcrittercism/android/au;

    invoke-interface {v3}, Lcrittercism/android/au;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    const-string v2, "locale"

    new-instance v3, Lcrittercism/android/bx$k;

    invoke-direct {v3}, Lcrittercism/android/bx$k;-><init>()V

    iget-object v3, v3, Lcrittercism/android/bx$k;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    const-string v2, "appState"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    const-string v1, "transactions"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    invoke-static {p1}, Lcrittercism/android/bi;->b(Lorg/json/JSONArray;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    const-string v1, "breadcrumbs"

    new-instance v2, Lcrittercism/android/bo;

    iget-object v3, p0, Lcrittercism/android/bi;->g:Lcrittercism/android/bs;

    invoke-direct {v2, v3}, Lcrittercism/android/bo;-><init>(Lcrittercism/android/bs;)V

    iget-object v2, v2, Lcrittercism/android/bo;->a:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    const-string v1, "endpoints"

    new-instance v2, Lcrittercism/android/bo;

    iget-object v3, p0, Lcrittercism/android/bi;->h:Lcrittercism/android/bs;

    invoke-direct {v2, v3}, Lcrittercism/android/bo;-><init>(Lcrittercism/android/bs;)V

    iget-object v2, v2, Lcrittercism/android/bo;->a:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    const-string v1, "systemBreadcrumbs"

    new-instance v2, Lcrittercism/android/bo;

    iget-object v3, p0, Lcrittercism/android/bi;->i:Lcrittercism/android/bs;

    invoke-direct {v2, v3}, Lcrittercism/android/bo;-><init>(Lcrittercism/android/bs;)V

    iget-object v2, v2, Lcrittercism/android/bo;->a:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :cond_0
    :goto_0
    return-object v0

    .line 232
    :catch_0
    move-exception v0

    .line 234
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lorg/json/JSONArray;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 240
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 241
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    .line 242
    if-eqz v2, :cond_1

    .line 244
    :try_start_0
    new-instance v3, Lcrittercism/android/bg;

    invoke-direct {v3, v2}, Lcrittercism/android/bg;-><init>(Lorg/json/JSONArray;)V

    .line 245
    invoke-virtual {v3}, Lcrittercism/android/bg;->k()Lcrittercism/android/bg$a;

    move-result-object v2

    .line 252
    sget-object v3, Lcrittercism/android/bg$a;->c:Lcrittercism/android/bg$a;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcrittercism/android/bg$a;->i:Lcrittercism/android/bg$a;

    if-eq v2, v3, :cond_1

    sget-object v3, Lcrittercism/android/bg$a;->h:Lcrittercism/android/bg$a;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    if-eq v2, v3, :cond_1

    .line 255
    const/4 v1, 0x1

    .line 264
    :cond_0
    return v1

    .line 257
    :catch_0
    move-exception v2

    invoke-static {v2}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    .line 240
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    :catch_1
    move-exception v2

    invoke-static {v2}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 87
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcrittercism/android/bi;->l:Z

    if-nez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcrittercism/android/bi;->c:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 89
    iget-object v0, p0, Lcrittercism/android/bi;->d:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 91
    iget-boolean v0, p0, Lcrittercism/android/bi;->l:Z

    if-eqz v0, :cond_2

    .line 120
    :cond_1
    return-void

    .line 95
    :cond_2
    iget-wide v0, p0, Lcrittercism/android/bi;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcrittercism/android/bi;->a:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 96
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 98
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 103
    :cond_3
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcrittercism/android/bi;->a:J

    .line 104
    iget-object v0, p0, Lcrittercism/android/bi;->f:Lcrittercism/android/bs;

    iget-object v1, p0, Lcrittercism/android/bi;->k:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcrittercism/android/bs;->a(Landroid/content/Context;)Lcrittercism/android/bs;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcrittercism/android/bi;->f:Lcrittercism/android/bs;

    invoke-virtual {v1, v0}, Lcrittercism/android/bs;->a(Lcrittercism/android/bs;)V

    .line 110
    new-instance v1, Lcrittercism/android/bo;

    invoke-direct {v1, v0}, Lcrittercism/android/bo;-><init>(Lcrittercism/android/bs;)V

    iget-object v1, v1, Lcrittercism/android/bo;->a:Lorg/json/JSONArray;

    .line 111
    iget-object v0, v0, Lcrittercism/android/bs;->a:Ljava/io/File;

    invoke-static {v0}, Lcrittercism/android/eb;->a(Ljava/io/File;)V

    .line 113
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 114
    invoke-direct {p0, v1}, Lcrittercism/android/bi;->a(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_0

    .line 116
    invoke-direct {p0, v1}, Lcrittercism/android/bi;->a(Lorg/json/JSONArray;)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_1
    new-instance v1, Lcrittercism/android/dc;

    iget-object v2, p0, Lcrittercism/android/bi;->j:Ljava/net/URL;

    invoke-direct {v1, v2}, Lcrittercism/android/dc;-><init>(Ljava/net/URL;)V

    invoke-virtual {v1}, Lcrittercism/android/dc;->a()Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UTF8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request failed for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcrittercism/android/bi;->j:Ljava/net/URL;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dx;->a()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Request failed for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcrittercism/android/bi;->j:Ljava/net/URL;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dx;->a()V

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public final a(ILjava/util/concurrent/TimeUnit;)V
    .locals 2

    .prologue
    .line 156
    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcrittercism/android/bi;->b:J

    .line 157
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcrittercism/android/bi;->c:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 133
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcrittercism/android/bi;->f:Lcrittercism/android/bs;

    .line 146
    iget-object v0, p0, Lcrittercism/android/bi;->d:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 147
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcrittercism/android/bi;->f:Lcrittercism/android/bs;

    .line 152
    iget-object v0, p0, Lcrittercism/android/bi;->d:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 153
    return-void
.end method
