.class public final Lcrittercism/android/an;
.super Lcrittercism/android/af;


# direct methods
.method public constructor <init>(Lcrittercism/android/al;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcrittercism/android/af;-><init>(Lcrittercism/android/al;)V

    .line 42
    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/http/util/CharArrayBuffer;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 71
    new-instance v2, Lorg/apache/http/message/ParserCursor;

    invoke-virtual {p1}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v0

    invoke-direct {v2, v1, v0}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 73
    const/4 v0, 0x1

    .line 76
    :try_start_0
    sget-object v3, Lorg/apache/http/message/BasicLineParser;->DEFAULT:Lorg/apache/http/message/BasicLineParser;

    invoke-virtual {v3, p1, v2}, Lorg/apache/http/message/BasicLineParser;->parseRequestLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/RequestLine;

    move-result-object v2

    .line 77
    iget-object v3, p0, Lcrittercism/android/af;->a:Lcrittercism/android/al;

    invoke-interface {v2}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcrittercism/android/al;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return v0

    .line 79
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public final b()Lcrittercism/android/af;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcrittercism/android/am;

    invoke-direct {v0, p0}, Lcrittercism/android/am;-><init>(Lcrittercism/android/af;)V

    return-object v0
.end method

.method public final c()Lcrittercism/android/af;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcrittercism/android/as;->d:Lcrittercism/android/as;

    return-object v0
.end method

.method protected final d()I
    .locals 1

    .prologue
    .line 95
    const/16 v0, 0x40

    return v0
.end method

.method protected final e()I
    .locals 1

    .prologue
    .line 107
    const/16 v0, 0x800

    return v0
.end method
