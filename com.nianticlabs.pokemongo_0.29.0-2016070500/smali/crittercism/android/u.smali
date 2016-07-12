.class public final Lcrittercism/android/u;
.super Ljava/io/OutputStream;


# instance fields
.field private final a:Ljava/io/OutputStream;

.field private final b:Lcrittercism/android/c;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcrittercism/android/c;)V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 15
    if-nez p1, :cond_0

    .line 16
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "delegate was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_0
    if-nez p2, :cond_1

    .line 20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "stats were null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_1
    iput-object p1, p0, Lcrittercism/android/u;->a:Ljava/io/OutputStream;

    .line 24
    iput-object p2, p0, Lcrittercism/android/u;->b:Lcrittercism/android/c;

    .line 25
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcrittercism/android/u;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 34
    return-void
.end method

.method public final flush()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcrittercism/android/u;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 30
    return-void
.end method

.method public final write(I)V
    .locals 4
    .param p1, "oneByte"    # I

    .prologue
    .line 37
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/u;->b:Lcrittercism/android/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/u;->b:Lcrittercism/android/c;

    invoke-virtual {v0}, Lcrittercism/android/c;->b()V

    iget-object v0, p0, Lcrittercism/android/u;->b:Lcrittercism/android/c;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lcrittercism/android/c;->c(J)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 38
    :cond_0
    :goto_0
    iget-object v0, p0, Lcrittercism/android/u;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 39
    return-void

    .line 37
    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final write([B)V
    .locals 4
    .param p1, "buffer"    # [B

    .prologue
    .line 60
    iget-object v0, p0, Lcrittercism/android/u;->b:Lcrittercism/android/c;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcrittercism/android/u;->b:Lcrittercism/android/c;

    invoke-virtual {v0}, Lcrittercism/android/c;->b()V

    .line 63
    if-eqz p1, :cond_0

    .line 64
    iget-object v0, p0, Lcrittercism/android/u;->b:Lcrittercism/android/c;

    array-length v1, p1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcrittercism/android/c;->c(J)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcrittercism/android/u;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 69
    return-void
.end method

.method public final write([BII)V
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcrittercism/android/u;->b:Lcrittercism/android/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/u;->b:Lcrittercism/android/c;

    invoke-virtual {v0}, Lcrittercism/android/c;->b()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcrittercism/android/u;->b:Lcrittercism/android/c;

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Lcrittercism/android/c;->c(J)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcrittercism/android/u;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 76
    return-void
.end method
