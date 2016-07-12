.class public abstract Lcrittercism/android/ak;
.super Lcrittercism/android/af;


# instance fields
.field d:Z

.field e:I

.field f:Z

.field private g:Z

.field private h:Z


# direct methods
.method public constructor <init>(Lcrittercism/android/af;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1}, Lcrittercism/android/af;-><init>(Lcrittercism/android/af;)V

    .line 43
    iput-boolean v0, p0, Lcrittercism/android/ak;->d:Z

    .line 45
    iput-boolean v0, p0, Lcrittercism/android/ak;->g:Z

    .line 46
    iput-boolean v0, p0, Lcrittercism/android/ak;->h:Z

    .line 47
    iput-boolean v0, p0, Lcrittercism/android/ak;->f:Z

    .line 51
    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/http/util/CharArrayBuffer;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 112
    iget-object v2, p0, Lcrittercism/android/af;->b:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v2

    if-eqz v2, :cond_0

    if-ne v2, v0, :cond_2

    iget-object v2, p0, Lcrittercism/android/af;->b:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v2, v1}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_3

    .line 113
    iput-boolean v0, p0, Lcrittercism/android/ak;->h:Z

    .line 151
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v2, v1

    .line 112
    goto :goto_0

    .line 122
    :cond_3
    :try_start_0
    sget-object v2, Lorg/apache/http/message/BasicLineParser;->DEFAULT:Lorg/apache/http/message/BasicLineParser;

    invoke-virtual {v2, p1}, Lorg/apache/http/message/BasicLineParser;->parseHeader(Lorg/apache/http/util/CharArrayBuffer;)Lorg/apache/http/Header;

    move-result-object v2

    .line 124
    iget-boolean v3, p0, Lcrittercism/android/ak;->d:Z

    if-nez v3, :cond_5

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content-length"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 126
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 128
    if-gez v2, :cond_4

    move v0, v1

    .line 130
    goto :goto_1

    .line 132
    :cond_4
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcrittercism/android/ak;->d:Z

    .line 133
    iput v2, p0, Lcrittercism/android/ak;->e:I

    goto :goto_1

    .line 146
    :catch_0
    move-exception v0

    move v0, v1

    .line 149
    goto :goto_1

    .line 135
    :cond_5
    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "transfer-encoding"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 136
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "chunked"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcrittercism/android/ak;->f:Z

    goto :goto_1

    .line 148
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_1

    .line 137
    :cond_6
    iget-boolean v3, p0, Lcrittercism/android/ak;->g:Z

    if-nez v3, :cond_1

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "host"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 138
    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 140
    if-eqz v2, :cond_1

    .line 141
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcrittercism/android/ak;->g:Z

    .line 142
    iget-object v3, p0, Lcrittercism/android/af;->a:Lcrittercism/android/al;

    invoke-interface {v3, v2}, Lcrittercism/android/al;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1
.end method

.method public final b()Lcrittercism/android/af;
    .locals 1

    .prologue
    .line 63
    .line 65
    iget-boolean v0, p0, Lcrittercism/android/ak;->h:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcrittercism/android/ak;->g()Lcrittercism/android/af;

    move-result-object p0

    .line 75
    :goto_0
    return-object p0

    .line 72
    :cond_0
    iget-object v0, p0, Lcrittercism/android/af;->b:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    goto :goto_0
.end method

.method public final c()Lcrittercism/android/af;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcrittercism/android/af;->b:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    .line 98
    new-instance v0, Lcrittercism/android/ar;

    invoke-direct {v0, p0}, Lcrittercism/android/ar;-><init>(Lcrittercism/android/af;)V

    return-object v0
.end method

.method protected final d()I
    .locals 1

    .prologue
    .line 180
    const/16 v0, 0x20

    return v0
.end method

.method protected final e()I
    .locals 1

    .prologue
    .line 193
    const/16 v0, 0x80

    return v0
.end method

.method protected abstract g()Lcrittercism/android/af;
.end method
