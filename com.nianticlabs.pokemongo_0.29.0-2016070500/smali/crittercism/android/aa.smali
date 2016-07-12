.class public final Lcrittercism/android/aa;
.super Ljavax/net/ssl/SSLSocket;

# interfaces
.implements Lcrittercism/android/ae;


# instance fields
.field private a:Ljavax/net/ssl/SSLSocket;

.field private b:Lcrittercism/android/e;

.field private c:Lcrittercism/android/d;

.field private final d:Ljava/util/Queue;

.field private e:Lcrittercism/android/w;

.field private f:Lcrittercism/android/x;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLSocket;Lcrittercism/android/e;Lcrittercism/android/d;)V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    .line 55
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcrittercism/android/aa;->d:Ljava/util/Queue;

    .line 67
    if-nez p1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "delegate was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    if-nez p2, :cond_1

    .line 72
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dispatch was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    iput-object p1, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    .line 76
    iput-object p2, p0, Lcrittercism/android/aa;->b:Lcrittercism/android/e;

    .line 77
    iput-object p3, p0, Lcrittercism/android/aa;->c:Lcrittercism/android/d;

    .line 78
    return-void
.end method

.method private a(Z)Lcrittercism/android/c;
    .locals 2

    .prologue
    .line 485
    new-instance v0, Lcrittercism/android/c;

    invoke-direct {v0}, Lcrittercism/android/c;-><init>()V

    .line 486
    iget-object v1, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 487
    if-eqz v1, :cond_0

    .line 488
    invoke-virtual {v0, v1}, Lcrittercism/android/c;->a(Ljava/net/InetAddress;)V

    .line 491
    :cond_0
    if-eqz p1, :cond_1

    .line 492
    invoke-virtual {p0}, Lcrittercism/android/aa;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Lcrittercism/android/c;->a(I)V

    .line 495
    :cond_1
    sget-object v1, Lcrittercism/android/k$a;->b:Lcrittercism/android/k$a;

    invoke-virtual {v0, v1}, Lcrittercism/android/c;->a(Lcrittercism/android/k$a;)V

    .line 497
    iget-object v1, p0, Lcrittercism/android/aa;->c:Lcrittercism/android/d;

    if-eqz v1, :cond_2

    .line 498
    iget-object v1, p0, Lcrittercism/android/aa;->c:Lcrittercism/android/d;

    invoke-virtual {v1}, Lcrittercism/android/d;->a()Lcrittercism/android/b;

    move-result-object v1

    iput-object v1, v0, Lcrittercism/android/c;->j:Lcrittercism/android/b;

    .line 500
    :cond_2
    invoke-static {}, Lcrittercism/android/bc;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 501
    invoke-static {}, Lcrittercism/android/bc;->a()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcrittercism/android/c;->a(Landroid/location/Location;)V

    .line 504
    :cond_3
    return-object v0
.end method


# virtual methods
.method public final a()Lcrittercism/android/c;
    .locals 1

    .prologue
    .line 481
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcrittercism/android/aa;->a(Z)Lcrittercism/android/c;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcrittercism/android/c;)V
    .locals 2

    .prologue
    .line 509
    if-eqz p1, :cond_0

    .line 510
    iget-object v1, p0, Lcrittercism/android/aa;->d:Ljava/util/Queue;

    monitor-enter v1

    .line 511
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/aa;->d:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 512
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    :cond_0
    return-void

    .line 512
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 1
    .param p1, "listener"    # Ljavax/net/ssl/HandshakeCompletedListener;

    .prologue
    .line 82
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 83
    return-void
.end method

.method public final b()Lcrittercism/android/c;
    .locals 2

    .prologue
    .line 518
    iget-object v1, p0, Lcrittercism/android/aa;->d:Ljava/util/Queue;

    monitor-enter v1

    .line 519
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/aa;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcrittercism/android/c;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 520
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final bind(Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "localAddr"    # Ljava/net/SocketAddress;

    .prologue
    .line 196
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->bind(Ljava/net/SocketAddress;)V

    .line 197
    return-void
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->close()V

    .line 204
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/aa;->f:Lcrittercism/android/x;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcrittercism/android/aa;->f:Lcrittercism/android/x;

    invoke-virtual {v0}, Lcrittercism/android/x;->d()V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v0

    throw v0

    .line 209
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final connect(Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "remoteAddr"    # Ljava/net/SocketAddress;

    .prologue
    .line 224
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;)V

    .line 225
    return-void
.end method

.method public final connect(Ljava/net/SocketAddress;I)V
    .locals 1
    .param p1, "remoteAddr"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I

    .prologue
    .line 219
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    .line 220
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 467
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final getChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public final getEnableSessionCreation()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public final getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getInetAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 239
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcrittercism/android/aa;->f:Lcrittercism/android/x;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcrittercism/android/aa;->f:Lcrittercism/android/x;

    invoke-virtual {v1, v0}, Lcrittercism/android/x;->a(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcrittercism/android/aa;->f:Lcrittercism/android/x;

    .line 249
    :cond_0
    :goto_0
    return-object v0

    .line 242
    :cond_1
    new-instance v1, Lcrittercism/android/x;

    iget-object v2, p0, Lcrittercism/android/aa;->b:Lcrittercism/android/e;

    invoke-direct {v1, p0, v0, v2}, Lcrittercism/android/x;-><init>(Lcrittercism/android/ae;Ljava/io/InputStream;Lcrittercism/android/e;)V

    iput-object v1, p0, Lcrittercism/android/aa;->f:Lcrittercism/android/x;

    iget-object v0, p0, Lcrittercism/android/aa;->f:Lcrittercism/android/x;
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    throw v0

    .line 245
    :catch_1
    move-exception v1

    invoke-static {v1}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getKeepAlive()Z
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getKeepAlive()Z

    move-result v0

    return v0
.end method

.method public final getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getLocalPort()I
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public final getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getNeedClientAuth()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public final getOOBInline()Z
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getOOBInline()Z

    move-result v0

    return v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 295
    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcrittercism/android/aa;->e:Lcrittercism/android/w;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcrittercism/android/aa;->e:Lcrittercism/android/w;

    invoke-virtual {v1, v0}, Lcrittercism/android/w;->a(Ljava/io/OutputStream;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcrittercism/android/aa;->e:Lcrittercism/android/w;

    .line 302
    :cond_0
    :goto_0
    return-object v0

    .line 295
    :cond_1
    iget-object v1, p0, Lcrittercism/android/aa;->e:Lcrittercism/android/w;

    new-instance v1, Lcrittercism/android/w;

    invoke-direct {v1, p0, v0}, Lcrittercism/android/w;-><init>(Lcrittercism/android/ae;Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcrittercism/android/aa;->e:Lcrittercism/android/w;

    iget-object v0, p0, Lcrittercism/android/aa;->e:Lcrittercism/android/w;
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    throw v0

    .line 298
    :catch_1
    move-exception v1

    invoke-static {v1}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final getPort()I
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getPort()I

    move-result v0

    return v0
.end method

.method public final getReceiveBufferSize()I
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getReceiveBufferSize()I

    move-result v0

    return v0
.end method

.method public final getRemoteSocketAddress()Ljava/net/SocketAddress;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getReuseAddress()Z
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getReuseAddress()Z

    move-result v0

    return v0
.end method

.method public final getSendBufferSize()I
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSendBufferSize()I

    move-result v0

    return v0
.end method

.method public final getSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method

.method public final getSoLinger()I
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSoLinger()I

    move-result v0

    return v0
.end method

.method public final getSoTimeout()I
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSoTimeout()I

    move-result v0

    return v0
.end method

.method public final getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTcpNoDelay()Z
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getTcpNoDelay()Z

    move-result v0

    return v0
.end method

.method public final getTrafficClass()I
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getTrafficClass()I

    move-result v0

    return v0
.end method

.method public final getUseClientMode()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public final getWantClientAuth()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isBound()Z
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->isBound()Z

    move-result v0

    return v0
.end method

.method public final isClosed()Z
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->isClosed()Z

    move-result v0

    return v0
.end method

.method public final isConnected()Z
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->isConnected()Z

    move-result v0

    return v0
.end method

.method public final isInputShutdown()Z
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->isInputShutdown()Z

    move-result v0

    return v0
.end method

.method public final isOutputShutdown()Z
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->isOutputShutdown()Z

    move-result v0

    return v0
.end method

.method public final removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 1
    .param p1, "listener"    # Ljavax/net/ssl/HandshakeCompletedListener;

    .prologue
    .line 132
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V

    .line 133
    return-void
.end method

.method public final sendUrgentData(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 397
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->sendUrgentData(I)V

    .line 398
    return-void
.end method

.method public final setEnableSessionCreation(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 137
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setEnableSessionCreation(Z)V

    .line 138
    return-void
.end method

.method public final setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 1
    .param p1, "suites"    # [Ljava/lang/String;

    .prologue
    .line 142
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public final setEnabledProtocols([Ljava/lang/String;)V
    .locals 1
    .param p1, "protocols"    # [Ljava/lang/String;

    .prologue
    .line 147
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public final setKeepAlive(Z)V
    .locals 1
    .param p1, "keepAlive"    # Z

    .prologue
    .line 402
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setKeepAlive(Z)V

    .line 403
    return-void
.end method

.method public final setNeedClientAuth(Z)V
    .locals 1
    .param p1, "need"    # Z

    .prologue
    .line 152
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setNeedClientAuth(Z)V

    .line 153
    return-void
.end method

.method public final setOOBInline(Z)V
    .locals 1
    .param p1, "oobinline"    # Z

    .prologue
    .line 407
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setOOBInline(Z)V

    .line 408
    return-void
.end method

.method public final setPerformancePreferences(III)V
    .locals 1
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    .prologue
    .line 412
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/SSLSocket;->setPerformancePreferences(III)V

    .line 413
    return-void
.end method

.method public final setReceiveBufferSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 417
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setReceiveBufferSize(I)V

    .line 418
    return-void
.end method

.method public final setReuseAddress(Z)V
    .locals 1
    .param p1, "reuse"    # Z

    .prologue
    .line 422
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setReuseAddress(Z)V

    .line 423
    return-void
.end method

.method public final setSendBufferSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 427
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setSendBufferSize(I)V

    .line 428
    return-void
.end method

.method public final setSoLinger(ZI)V
    .locals 1
    .param p1, "on"    # Z
    .param p2, "timeout"    # I

    .prologue
    .line 432
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocket;->setSoLinger(ZI)V

    .line 433
    return-void
.end method

.method public final setSoTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I

    .prologue
    .line 437
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 438
    return-void
.end method

.method public final setTcpNoDelay(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 442
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setTcpNoDelay(Z)V

    .line 443
    return-void
.end method

.method public final setTrafficClass(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 447
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setTrafficClass(I)V

    .line 448
    return-void
.end method

.method public final setUseClientMode(Z)V
    .locals 1
    .param p1, "mode"    # Z

    .prologue
    .line 157
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    .line 158
    return-void
.end method

.method public final setWantClientAuth(Z)V
    .locals 1
    .param p1, "want"    # Z

    .prologue
    .line 162
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setWantClientAuth(Z)V

    .line 163
    return-void
.end method

.method public final shutdownInput()V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->shutdownInput()V

    .line 453
    return-void
.end method

.method public final shutdownOutput()V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->shutdownOutput()V

    .line 458
    return-void
.end method

.method public final startHandshake()V
    .locals 4

    .prologue
    .line 168
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, v1}, Lcrittercism/android/aa;->a(Z)Lcrittercism/android/c;

    move-result-object v1

    invoke-virtual {v1}, Lcrittercism/android/c;->b()V

    invoke-virtual {v1}, Lcrittercism/android/c;->c()V

    invoke-virtual {v1}, Lcrittercism/android/c;->f()V

    invoke-virtual {v1, v0}, Lcrittercism/android/c;->a(Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcrittercism/android/aa;->b:Lcrittercism/android/e;

    sget-object v3, Lcrittercism/android/c$a;->j:Lcrittercism/android/c$a;

    invoke-virtual {v2, v1, v3}, Lcrittercism/android/e;->a(Lcrittercism/android/c;Lcrittercism/android/c$a;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 171
    :goto_0
    throw v0

    .line 170
    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcrittercism/android/aa;->a:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
