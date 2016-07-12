.class public final Lcrittercism/android/ag;
.super Lcrittercism/android/af;


# instance fields
.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lcrittercism/android/af;I)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcrittercism/android/af;-><init>(Lcrittercism/android/af;)V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcrittercism/android/ag;->e:I

    .line 35
    iput p2, p0, Lcrittercism/android/ag;->d:I

    .line 37
    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 49
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 51
    iget-object v1, p0, Lcrittercism/android/af;->a:Lcrittercism/android/al;

    sget-object v2, Lcrittercism/android/as;->d:Lcrittercism/android/as;

    invoke-interface {v1, v2}, Lcrittercism/android/al;->a(Lcrittercism/android/af;)V

    .line 68
    :goto_0
    return v0

    .line 55
    :cond_0
    iget v1, p0, Lcrittercism/android/ag;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcrittercism/android/ag;->e:I

    .line 56
    iget v1, p0, Lcrittercism/android/ag;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcrittercism/android/ag;->c:I

    .line 58
    iget v1, p0, Lcrittercism/android/ag;->e:I

    iget v2, p0, Lcrittercism/android/ag;->d:I

    if-ne v1, v2, :cond_1

    .line 59
    iget-object v1, p0, Lcrittercism/android/af;->a:Lcrittercism/android/al;

    invoke-virtual {p0}, Lcrittercism/android/ag;->a()I

    move-result v2

    invoke-interface {v1, v2}, Lcrittercism/android/al;->b(I)V

    .line 62
    iget-object v1, p0, Lcrittercism/android/af;->a:Lcrittercism/android/al;

    invoke-interface {v1}, Lcrittercism/android/al;->b()Lcrittercism/android/af;

    move-result-object v1

    .line 63
    iget-object v2, p0, Lcrittercism/android/af;->a:Lcrittercism/android/al;

    invoke-interface {v2, v1}, Lcrittercism/android/al;->a(Lcrittercism/android/af;)V

    goto :goto_0

    .line 68
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lorg/apache/http/util/CharArrayBuffer;)Z
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public final b([BII)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 84
    if-ne p3, v0, :cond_0

    .line 86
    iget-object v1, p0, Lcrittercism/android/af;->a:Lcrittercism/android/al;

    sget-object v2, Lcrittercism/android/as;->d:Lcrittercism/android/as;

    invoke-interface {v1, v2}, Lcrittercism/android/al;->a(Lcrittercism/android/af;)V

    move p3, v0

    .line 106
    :goto_0
    return p3

    .line 90
    :cond_0
    iget v0, p0, Lcrittercism/android/ag;->e:I

    add-int/2addr v0, p3

    iget v1, p0, Lcrittercism/android/ag;->d:I

    if-ge v0, v1, :cond_1

    .line 95
    iget v0, p0, Lcrittercism/android/ag;->e:I

    add-int/2addr v0, p3

    iput v0, p0, Lcrittercism/android/ag;->e:I

    .line 96
    iget v0, p0, Lcrittercism/android/ag;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lcrittercism/android/ag;->c:I

    goto :goto_0

    .line 101
    :cond_1
    iget v0, p0, Lcrittercism/android/ag;->d:I

    iget v1, p0, Lcrittercism/android/ag;->e:I

    sub-int p3, v0, v1

    .line 102
    iget v0, p0, Lcrittercism/android/ag;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lcrittercism/android/ag;->c:I

    .line 103
    iget-object v0, p0, Lcrittercism/android/af;->a:Lcrittercism/android/al;

    invoke-virtual {p0}, Lcrittercism/android/ag;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcrittercism/android/al;->b(I)V

    .line 104
    iget-object v0, p0, Lcrittercism/android/af;->a:Lcrittercism/android/al;

    iget-object v1, p0, Lcrittercism/android/af;->a:Lcrittercism/android/al;

    invoke-interface {v1}, Lcrittercism/android/al;->b()Lcrittercism/android/af;

    move-result-object v1

    invoke-interface {v0, v1}, Lcrittercism/android/al;->a(Lcrittercism/android/af;)V

    goto :goto_0
.end method

.method public final b()Lcrittercism/android/af;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcrittercism/android/as;->d:Lcrittercism/android/as;

    return-object v0
.end method

.method public final c()Lcrittercism/android/af;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcrittercism/android/as;->d:Lcrittercism/android/as;

    return-object v0
.end method

.method protected final d()I
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method protected final e()I
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcrittercism/android/af;->a:Lcrittercism/android/al;

    invoke-virtual {p0}, Lcrittercism/android/ag;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lcrittercism/android/al;->b(I)V

    .line 172
    iget-object v0, p0, Lcrittercism/android/af;->a:Lcrittercism/android/al;

    sget-object v1, Lcrittercism/android/as;->d:Lcrittercism/android/as;

    invoke-interface {v0, v1}, Lcrittercism/android/al;->a(Lcrittercism/android/af;)V

    .line 173
    return-void
.end method
