.class public final Lcrittercism/android/q;
.super Lcrittercism/android/m;


# static fields
.field private static final f:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "libcore.net.http.HttpsURLConnectionImpl"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "org.apache.harmony.luni.internal.net.www.protocol.https.HttpsURLConnectionImpl"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "org.apache.harmony.luni.internal.net.www.protocol.https.HttpsURLConnection"

    aput-object v2, v0, v1

    sput-object v0, Lcrittercism/android/q;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcrittercism/android/e;Lcrittercism/android/d;)V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcrittercism/android/q;->f:[Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcrittercism/android/m;-><init>(Lcrittercism/android/e;Lcrittercism/android/d;[Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "https"

    return-object v0
.end method

.method protected final getDefaultPort()I
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x1bb

    return v0
.end method

.method protected final openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 4
    .param p1, "u"    # Ljava/net/URL;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcrittercism/android/m;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 29
    :try_start_0
    new-instance v1, Lcrittercism/android/s;

    iget-object v2, p0, Lcrittercism/android/m;->c:Lcrittercism/android/e;

    iget-object v3, p0, Lcrittercism/android/m;->d:Lcrittercism/android/d;

    invoke-direct {v1, v0, v2, v3}, Lcrittercism/android/s;-><init>(Ljavax/net/ssl/HttpsURLConnection;Lcrittercism/android/e;Lcrittercism/android/d;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    .line 34
    :goto_0
    return-object v0

    .line 30
    :catch_0
    move-exception v0

    throw v0

    .line 32
    :catch_1
    move-exception v1

    invoke-static {v1}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected final openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 4
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Lcrittercism/android/m;->openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 41
    :try_start_0
    new-instance v1, Lcrittercism/android/s;

    iget-object v2, p0, Lcrittercism/android/m;->c:Lcrittercism/android/e;

    iget-object v3, p0, Lcrittercism/android/m;->d:Lcrittercism/android/d;

    invoke-direct {v1, v0, v2, v3}, Lcrittercism/android/s;-><init>(Ljavax/net/ssl/HttpsURLConnection;Lcrittercism/android/e;Lcrittercism/android/d;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v1

    .line 46
    :goto_0
    return-object v0

    .line 42
    :catch_0
    move-exception v0

    throw v0

    .line 44
    :catch_1
    move-exception v1

    invoke-static {v1}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
