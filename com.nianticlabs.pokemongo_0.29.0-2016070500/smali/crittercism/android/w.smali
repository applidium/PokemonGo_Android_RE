.class public final Lcrittercism/android/w;
.super Ljava/io/OutputStream;

# interfaces
.implements Lcrittercism/android/al;


# instance fields
.field private a:Lcrittercism/android/ae;

.field private b:Ljava/io/OutputStream;

.field private c:Lcrittercism/android/c;

.field private d:Lcrittercism/android/af;


# direct methods
.method public constructor <init>(Lcrittercism/android/ae;Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 25
    if-nez p1, :cond_0

    .line 26
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "socket was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_0
    if-nez p2, :cond_1

    .line 30
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "output stream was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_1
    iput-object p1, p0, Lcrittercism/android/w;->a:Lcrittercism/android/ae;

    .line 34
    iput-object p2, p0, Lcrittercism/android/w;->b:Ljava/io/OutputStream;

    .line 35
    invoke-virtual {p0}, Lcrittercism/android/w;->b()Lcrittercism/android/af;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/w;->d:Lcrittercism/android/af;

    .line 37
    iget-object v0, p0, Lcrittercism/android/w;->d:Lcrittercism/android/af;

    if-nez v0, :cond_2

    .line 38
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "parser was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_2
    return-void
.end method

.method private a([BII)V
    .locals 1

    .prologue
    .line 93
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/w;->d:Lcrittercism/android/af;

    invoke-virtual {v0, p1, p2, p3}, Lcrittercism/android/af;->a([BII)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 101
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    throw v0

    .line 96
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    .line 99
    sget-object v0, Lcrittercism/android/as;->d:Lcrittercism/android/as;

    iput-object v0, p0, Lcrittercism/android/w;->d:Lcrittercism/android/af;

    goto :goto_0
.end method

.method private d()Lcrittercism/android/c;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcrittercism/android/w;->c:Lcrittercism/android/c;

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcrittercism/android/w;->a:Lcrittercism/android/ae;

    invoke-interface {v0}, Lcrittercism/android/ae;->a()Lcrittercism/android/c;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/w;->c:Lcrittercism/android/c;

    .line 155
    :cond_0
    iget-object v0, p0, Lcrittercism/android/w;->c:Lcrittercism/android/c;

    .line 156
    iget-object v0, p0, Lcrittercism/android/w;->c:Lcrittercism/android/c;

    return-object v0
.end method


# virtual methods
.method public final a()Lcrittercism/android/af;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcrittercism/android/w;->d:Lcrittercism/android/af;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public final a(Lcrittercism/android/af;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcrittercism/android/w;->d:Lcrittercism/android/af;

    .line 130
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 186
    invoke-direct {p0}, Lcrittercism/android/w;->d()Lcrittercism/android/c;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0, p1}, Lcrittercism/android/c;->b(Ljava/lang/String;)V

    .line 192
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 109
    invoke-direct {p0}, Lcrittercism/android/w;->d()Lcrittercism/android/c;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcrittercism/android/c;->b()V

    .line 112
    iput-object p1, v0, Lcrittercism/android/c;->f:Ljava/lang/String;

    .line 113
    const/4 v1, 0x0

    iput-object v1, v0, Lcrittercism/android/c;->i:Ljava/lang/String;

    iget-object v1, v0, Lcrittercism/android/c;->h:Lcrittercism/android/k;

    if-eqz p2, :cond_0

    iput-object p2, v1, Lcrittercism/android/k;->c:Ljava/lang/String;

    .line 119
    :cond_0
    iget-object v1, p0, Lcrittercism/android/w;->a:Lcrittercism/android/ae;

    invoke-interface {v1, v0}, Lcrittercism/android/ae;->a(Lcrittercism/android/c;)V

    .line 120
    return-void
.end method

.method public final a(Ljava/io/OutputStream;)Z
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcrittercism/android/w;->b:Ljava/io/OutputStream;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcrittercism/android/af;
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lcrittercism/android/an;

    invoke-direct {v0, p0}, Lcrittercism/android/an;-><init>(Lcrittercism/android/al;)V

    return-object v0
.end method

.method public final b(I)V
    .locals 4

    .prologue
    .line 139
    iget-object v0, p0, Lcrittercism/android/w;->c:Lcrittercism/android/c;

    .line 140
    const/4 v1, 0x0

    iput-object v1, p0, Lcrittercism/android/w;->c:Lcrittercism/android/c;

    .line 142
    if-eqz v0, :cond_0

    .line 145
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcrittercism/android/c;->d(J)V

    .line 148
    :cond_0
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    invoke-direct {p0}, Lcrittercism/android/w;->d()Lcrittercism/android/c;

    move-result-object v1

    .line 175
    const/4 v0, 0x0

    .line 177
    if-eqz v1, :cond_0

    .line 178
    iget-object v0, v1, Lcrittercism/android/c;->f:Ljava/lang/String;

    .line 181
    :cond_0
    return-object v0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcrittercism/android/w;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 50
    return-void
.end method

.method public final flush()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcrittercism/android/w;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 45
    return-void
.end method

.method public final write(I)V
    .locals 1
    .param p1, "oneByte"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcrittercism/android/w;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 57
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/w;->d:Lcrittercism/android/af;

    invoke-virtual {v0, p1}, Lcrittercism/android/af;->a(I)Z
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 65
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    throw v0

    .line 60
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    .line 62
    sget-object v0, Lcrittercism/android/as;->d:Lcrittercism/android/as;

    iput-object v0, p0, Lcrittercism/android/w;->d:Lcrittercism/android/af;

    goto :goto_0
.end method

.method public final write([B)V
    .locals 2
    .param p1, "buffer"    # [B

    .prologue
    .line 69
    iget-object v0, p0, Lcrittercism/android/w;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 77
    if-eqz p1, :cond_0

    .line 78
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcrittercism/android/w;->a([BII)V

    .line 80
    :cond_0
    return-void
.end method

.method public final write([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcrittercism/android/w;->b:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 86
    if-eqz p1, :cond_0

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcrittercism/android/w;->a([BII)V

    .line 89
    :cond_0
    return-void
.end method
