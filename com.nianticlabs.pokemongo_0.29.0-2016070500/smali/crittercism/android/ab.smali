.class public final Lcrittercism/android/ab;
.super Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field private a:Ljavax/net/ssl/SSLSocketFactory;

.field private b:Lcrittercism/android/e;

.field private c:Lcrittercism/android/d;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Lcrittercism/android/e;Lcrittercism/android/d;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocketFactory;-><init>()V

    .line 28
    iput-object p1, p0, Lcrittercism/android/ab;->a:Ljavax/net/ssl/SSLSocketFactory;

    .line 30
    iput-object p2, p0, Lcrittercism/android/ab;->b:Lcrittercism/android/e;

    .line 31
    iput-object p3, p0, Lcrittercism/android/ab;->c:Lcrittercism/android/d;

    .line 32
    return-void
.end method

.method private a(Ljava/net/Socket;)Ljava/net/Socket;
    .locals 5

    .prologue
    .line 54
    if-eqz p1, :cond_0

    :try_start_0
    instance-of v1, p1, Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_0

    new-instance v2, Lcrittercism/android/aa;

    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object v1, v0

    iget-object v3, p0, Lcrittercism/android/ab;->b:Lcrittercism/android/e;

    iget-object v4, p0, Lcrittercism/android/ab;->c:Lcrittercism/android/d;

    invoke-direct {v2, v1, v3, v4}, Lcrittercism/android/aa;-><init>(Ljavax/net/ssl/SSLSocket;Lcrittercism/android/e;Lcrittercism/android/d;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-object p1, v2

    .line 61
    :cond_0
    :goto_0
    return-object p1

    .line 55
    :catch_0
    move-exception v1

    throw v1

    .line 57
    :catch_1
    move-exception v1

    invoke-static {v1}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcrittercism/android/ab;->a:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public final createSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcrittercism/android/ab;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    .line 109
    invoke-direct {p0, v0}, Lcrittercism/android/ab;->a(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public final createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcrittercism/android/ab;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    .line 85
    invoke-direct {p0, v0}, Lcrittercism/android/ab;->a(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public final createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "localHost"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lcrittercism/android/ab;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .line 91
    invoke-direct {p0, v0}, Lcrittercism/android/ab;->a(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public final createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .param p1, "host"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .prologue
    .line 96
    iget-object v0, p0, Lcrittercism/android/ab;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .line 97
    invoke-direct {p0, v0}, Lcrittercism/android/ab;->a(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public final createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;
    .locals 1
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "localAddress"    # Ljava/net/InetAddress;
    .param p4, "localPort"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcrittercism/android/ab;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Ljava/net/Socket;

    move-result-object v0

    .line 103
    invoke-direct {p0, v0}, Lcrittercism/android/ab;->a(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public final createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .param p1, "s"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z

    .prologue
    .line 77
    iget-object v0, p0, Lcrittercism/android/ab;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    .line 78
    invoke-direct {p0, v0}, Lcrittercism/android/ab;->a(Ljava/net/Socket;)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcrittercism/android/ab;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcrittercism/android/ab;->a:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
