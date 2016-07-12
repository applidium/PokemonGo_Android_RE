.class public final Lcrittercism/android/aq;
.super Lcrittercism/android/af;


# instance fields
.field private d:Z


# direct methods
.method public constructor <init>(Lcrittercism/android/af;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcrittercism/android/af;-><init>(Lcrittercism/android/af;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcrittercism/android/aq;->d:Z

    .line 36
    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/http/util/CharArrayBuffer;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcrittercism/android/aq;->d:Z

    .line 60
    return v1
.end method

.method public final b()Lcrittercism/android/af;
    .locals 2

    .prologue
    .line 41
    iget-boolean v0, p0, Lcrittercism/android/aq;->d:Z

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcrittercism/android/af;->a:Lcrittercism/android/al;

    invoke-virtual {p0}, Lcrittercism/android/aq;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcrittercism/android/al;->b(I)V

    .line 43
    iget-object v0, p0, Lcrittercism/android/af;->a:Lcrittercism/android/al;

    invoke-interface {v0}, Lcrittercism/android/al;->b()Lcrittercism/android/af;

    move-result-object p0

    .line 46
    :goto_0
    return-object p0

    .line 45
    :cond_0
    iget-object v0, p0, Lcrittercism/android/af;->b:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    goto :goto_0
.end method

.method public final c()Lcrittercism/android/af;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcrittercism/android/af;->b:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    .line 53
    new-instance v0, Lcrittercism/android/ar;

    invoke-direct {v0, p0}, Lcrittercism/android/ar;-><init>(Lcrittercism/android/af;)V

    return-object v0
.end method

.method protected final d()I
    .locals 1

    .prologue
    .line 65
    const/16 v0, 0x8

    return v0
.end method

.method protected final e()I
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0x80

    return v0
.end method
