.class public final Lcrittercism/android/x;
.super Ljava/io/InputStream;

# interfaces
.implements Lcrittercism/android/al;


# instance fields
.field private a:Lcrittercism/android/ae;

.field private b:Lcrittercism/android/c;

.field private c:Ljava/io/InputStream;

.field private d:Lcrittercism/android/e;

.field private e:Lcrittercism/android/af;


# direct methods
.method public constructor <init>(Lcrittercism/android/ae;Ljava/io/InputStream;Lcrittercism/android/e;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 30
    if-nez p1, :cond_0

    .line 31
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "socket was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    if-nez p2, :cond_1

    .line 35
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "delegate was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_1
    if-nez p3, :cond_2

    .line 39
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dispatch was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_2
    iput-object p1, p0, Lcrittercism/android/x;->a:Lcrittercism/android/ae;

    .line 43
    iput-object p2, p0, Lcrittercism/android/x;->c:Ljava/io/InputStream;

    .line 44
    iput-object p3, p0, Lcrittercism/android/x;->d:Lcrittercism/android/e;

    .line 45
    invoke-virtual {p0}, Lcrittercism/android/x;->b()Lcrittercism/android/af;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/x;->e:Lcrittercism/android/af;

    .line 47
    iget-object v0, p0, Lcrittercism/android/x;->e:Lcrittercism/android/af;

    if-nez v0, :cond_3

    .line 48
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "parser was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_3
    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 84
    :try_start_0
    invoke-direct {p0}, Lcrittercism/android/x;->e()Lcrittercism/android/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcrittercism/android/c;->a(Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcrittercism/android/x;->d:Lcrittercism/android/e;

    sget-object v2, Lcrittercism/android/c$a;->h:Lcrittercism/android/c$a;

    invoke-virtual {v1, v0, v2}, Lcrittercism/android/e;->a(Lcrittercism/android/c;Lcrittercism/android/c$a;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v0

    throw v0

    .line 89
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 92
    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private a([BII)V
    .locals 2

    .prologue
    .line 174
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/x;->e:Lcrittercism/android/af;

    invoke-virtual {v0, p1, p2, p3}, Lcrittercism/android/af;->a([BII)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 186
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    throw v0

    .line 180
    :catch_1
    move-exception v0

    sget-object v0, Lcrittercism/android/as;->d:Lcrittercism/android/as;

    iput-object v0, p0, Lcrittercism/android/x;->e:Lcrittercism/android/af;

    goto :goto_0

    .line 181
    :catch_2
    move-exception v0

    .line 182
    sget-object v1, Lcrittercism/android/as;->d:Lcrittercism/android/as;

    iput-object v1, p0, Lcrittercism/android/x;->e:Lcrittercism/android/af;

    .line 184
    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private e()Lcrittercism/android/c;
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcrittercism/android/x;->b:Lcrittercism/android/c;

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcrittercism/android/x;->a:Lcrittercism/android/ae;

    invoke-interface {v0}, Lcrittercism/android/ae;->b()Lcrittercism/android/c;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/x;->b:Lcrittercism/android/c;

    .line 274
    :cond_0
    iget-object v0, p0, Lcrittercism/android/x;->b:Lcrittercism/android/c;

    if-nez v0, :cond_1

    .line 278
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No statistics were queued up."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_1
    iget-object v0, p0, Lcrittercism/android/x;->b:Lcrittercism/android/c;

    return-object v0
.end method


# virtual methods
.method public final a()Lcrittercism/android/af;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcrittercism/android/x;->e:Lcrittercism/android/af;

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 207
    invoke-direct {p0}, Lcrittercism/android/x;->e()Lcrittercism/android/c;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lcrittercism/android/c;->c()V

    .line 210
    iput p1, v0, Lcrittercism/android/c;->e:I

    .line 211
    return-void
.end method

.method public final a(Lcrittercism/android/af;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcrittercism/android/x;->e:Lcrittercism/android/af;

    .line 217
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 305
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method public final a(Ljava/io/InputStream;)Z
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcrittercism/android/x;->c:Ljava/io/InputStream;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final available()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcrittercism/android/x;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public final b()Lcrittercism/android/af;
    .locals 1

    .prologue
    .line 290
    new-instance v0, Lcrittercism/android/ap;

    invoke-direct {v0, p0}, Lcrittercism/android/ap;-><init>(Lcrittercism/android/al;)V

    return-object v0
.end method

.method public final b(I)V
    .locals 4

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 227
    iget-object v1, p0, Lcrittercism/android/x;->b:Lcrittercism/android/c;

    .line 229
    iget-object v1, p0, Lcrittercism/android/x;->b:Lcrittercism/android/c;

    if-eqz v1, :cond_1

    .line 230
    iget-object v1, p0, Lcrittercism/android/x;->b:Lcrittercism/android/c;

    iget v1, v1, Lcrittercism/android/c;->e:I

    .line 232
    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    const/16 v2, 0xc8

    if-ge v1, v2, :cond_0

    .line 241
    new-instance v0, Lcrittercism/android/c;

    iget-object v1, p0, Lcrittercism/android/x;->b:Lcrittercism/android/c;

    invoke-virtual {v1}, Lcrittercism/android/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcrittercism/android/c;-><init>(Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lcrittercism/android/x;->b:Lcrittercism/android/c;

    iget-wide v2, v1, Lcrittercism/android/c;->a:J

    invoke-virtual {v0, v2, v3}, Lcrittercism/android/c;->e(J)V

    .line 243
    iget-object v1, p0, Lcrittercism/android/x;->b:Lcrittercism/android/c;

    iget-wide v2, v1, Lcrittercism/android/c;->d:J

    invoke-virtual {v0, v2, v3}, Lcrittercism/android/c;->d(J)V

    .line 244
    iget-object v1, p0, Lcrittercism/android/x;->b:Lcrittercism/android/c;

    iget-object v1, v1, Lcrittercism/android/c;->f:Ljava/lang/String;

    iput-object v1, v0, Lcrittercism/android/c;->f:Ljava/lang/String;

    .line 247
    :cond_0
    iget-object v1, p0, Lcrittercism/android/x;->b:Lcrittercism/android/c;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lcrittercism/android/c;->b(J)V

    .line 248
    iget-object v1, p0, Lcrittercism/android/x;->d:Lcrittercism/android/e;

    iget-object v2, p0, Lcrittercism/android/x;->b:Lcrittercism/android/c;

    sget-object v3, Lcrittercism/android/c$a;->g:Lcrittercism/android/c$a;

    invoke-virtual {v1, v2, v3}, Lcrittercism/android/e;->a(Lcrittercism/android/c;Lcrittercism/android/c$a;)V

    .line 251
    :cond_1
    iput-object v0, p0, Lcrittercism/android/x;->b:Lcrittercism/android/c;

    .line 252
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    invoke-direct {p0}, Lcrittercism/android/x;->e()Lcrittercism/android/c;

    move-result-object v0

    iget-object v0, v0, Lcrittercism/android/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 60
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/x;->e:Lcrittercism/android/af;

    invoke-virtual {v0}, Lcrittercism/android/af;->f()V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 67
    :goto_0
    iget-object v0, p0, Lcrittercism/android/x;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 68
    return-void

    .line 61
    :catch_0
    move-exception v0

    throw v0

    .line 63
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 4

    .prologue
    .line 316
    iget-object v0, p0, Lcrittercism/android/x;->b:Lcrittercism/android/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/x;->b:Lcrittercism/android/c;

    iget-object v0, v0, Lcrittercism/android/c;->g:Lcrittercism/android/cn;

    sget-object v1, Lcrittercism/android/cm;->a:Lcrittercism/android/cm;

    iget v2, v0, Lcrittercism/android/cn;->a:I

    sget-object v3, Lcrittercism/android/co;->d:Lcrittercism/android/co;

    invoke-virtual {v3}, Lcrittercism/android/co;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget v0, v0, Lcrittercism/android/cn;->b:I

    invoke-virtual {v1}, Lcrittercism/android/cm;->a()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcrittercism/android/x;->e:Lcrittercism/android/af;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcrittercism/android/x;->e:Lcrittercism/android/af;

    invoke-virtual {v0}, Lcrittercism/android/af;->f()V

    .line 321
    :cond_0
    return-void

    .line 316
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcrittercism/android/x;->c:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 74
    return-void
.end method

.method public final markSupported()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcrittercism/android/x;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public final read()I
    .locals 3

    .prologue
    .line 108
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/x;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 117
    :try_start_1
    iget-object v0, p0, Lcrittercism/android/x;->e:Lcrittercism/android/af;

    invoke-virtual {v0, v1}, Lcrittercism/android/af;->a(I)Z
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 119
    :goto_0
    return v1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    invoke-direct {p0, v0}, Lcrittercism/android/x;->a(Ljava/lang/Exception;)V

    .line 114
    throw v0

    .line 117
    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    sget-object v0, Lcrittercism/android/as;->d:Lcrittercism/android/as;

    iput-object v0, p0, Lcrittercism/android/x;->e:Lcrittercism/android/af;

    goto :goto_0

    :catch_3
    move-exception v0

    sget-object v2, Lcrittercism/android/as;->d:Lcrittercism/android/as;

    iput-object v2, p0, Lcrittercism/android/x;->e:Lcrittercism/android/af;

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final read([B)I
    .locals 2
    .param p1, "buffer"    # [B

    .prologue
    .line 140
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/x;->c:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 149
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcrittercism/android/x;->a([BII)V

    .line 151
    return v0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    invoke-direct {p0, v0}, Lcrittercism/android/x;->a(Ljava/lang/Exception;)V

    .line 146
    throw v0
.end method

.method public final read([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 158
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/x;->c:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 167
    invoke-direct {p0, p1, p2, v0}, Lcrittercism/android/x;->a([BII)V

    .line 169
    return v0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    invoke-direct {p0, v0}, Lcrittercism/android/x;->a(Ljava/lang/Exception;)V

    .line 164
    throw v0
.end method

.method public final declared-synchronized reset()V
    .locals 1

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcrittercism/android/x;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit p0

    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final skip(J)J
    .locals 3
    .param p1, "byteCount"    # J

    .prologue
    .line 197
    iget-object v0, p0, Lcrittercism/android/x;->c:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
