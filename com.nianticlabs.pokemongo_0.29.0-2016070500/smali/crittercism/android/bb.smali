.class public final Lcrittercism/android/bb;
.super Lcom/crittercism/app/CrittercismConfig;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcrittercism/android/bn;


# direct methods
.method public constructor <init>(Lcrittercism/android/bn;Lcom/crittercism/app/CrittercismConfig;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0, p2}, Lcom/crittercism/app/CrittercismConfig;-><init>(Lcom/crittercism/app/CrittercismConfig;)V

    .line 27
    const-string v0, "524c99a04002057fcd000001"

    iput-object v0, p0, Lcrittercism/android/bb;->b:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcrittercism/android/bb;->c:Lcrittercism/android/bn;

    .line 45
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Lcom/crittercism/app/CrittercismConfig;->a()Ljava/util/List;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcrittercism/android/bb;->c:Lcrittercism/android/bn;

    invoke-virtual {v1}, Lcrittercism/android/bn;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcrittercism/android/bb;->c:Lcrittercism/android/bn;

    invoke-virtual {v0}, Lcrittercism/android/bn;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcrittercism/android/bb;->c:Lcrittercism/android/bn;

    invoke-virtual {v0}, Lcrittercism/android/bn;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcrittercism/android/bb;->c:Lcrittercism/android/bn;

    invoke-virtual {v0}, Lcrittercism/android/bn;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcrittercism/android/bb;->c:Lcrittercism/android/bn;

    invoke-virtual {v0}, Lcrittercism/android/bn;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 113
    instance-of v0, p1, Lcrittercism/android/bb;

    if-nez v0, :cond_0

    move v0, v1

    .line 120
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 117
    check-cast v0, Lcrittercism/android/bb;

    .line 120
    invoke-super {p0, p1}, Lcom/crittercism/app/CrittercismConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcrittercism/android/bb;->c:Lcrittercism/android/bn;

    invoke-virtual {v2}, Lcrittercism/android/bn;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcrittercism/android/bb;->c:Lcrittercism/android/bn;

    invoke-virtual {v3}, Lcrittercism/android/bn;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcrittercism/android/bb;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcrittercism/android/bb;->c:Lcrittercism/android/bn;

    invoke-virtual {v2}, Lcrittercism/android/bn;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcrittercism/android/bb;->c:Lcrittercism/android/bn;

    invoke-virtual {v3}, Lcrittercism/android/bn;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcrittercism/android/bb;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcrittercism/android/bb;->c:Lcrittercism/android/bn;

    invoke-virtual {v2}, Lcrittercism/android/bn;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcrittercism/android/bb;->c:Lcrittercism/android/bn;

    invoke-virtual {v3}, Lcrittercism/android/bn;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcrittercism/android/bb;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcrittercism/android/bb;->c:Lcrittercism/android/bn;

    invoke-virtual {v2}, Lcrittercism/android/bn;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcrittercism/android/bb;->c:Lcrittercism/android/bn;

    invoke-virtual {v3}, Lcrittercism/android/bn;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcrittercism/android/bb;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcrittercism/android/bb;->b:Ljava/lang/String;

    iget-object v0, v0, Lcrittercism/android/bb;->b:Ljava/lang/String;

    invoke-static {v2, v0}, Lcrittercism/android/bb;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcrittercism/android/bb;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcrittercism/android/bb;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Lcom/crittercism/app/CrittercismConfig;->hashCode()I

    move-result v0

    .line 137
    mul-int/lit8 v0, v0, 0x1f

    .line 138
    iget-object v1, p0, Lcrittercism/android/bb;->c:Lcrittercism/android/bn;

    invoke-virtual {v1}, Lcrittercism/android/bn;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 139
    mul-int/lit8 v0, v0, 0x1f

    .line 140
    iget-object v1, p0, Lcrittercism/android/bb;->c:Lcrittercism/android/bn;

    invoke-virtual {v1}, Lcrittercism/android/bn;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 141
    mul-int/lit8 v0, v0, 0x1f

    .line 142
    iget-object v1, p0, Lcrittercism/android/bb;->c:Lcrittercism/android/bn;

    invoke-virtual {v1}, Lcrittercism/android/bn;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 143
    mul-int/lit8 v0, v0, 0x1f

    .line 144
    iget-object v1, p0, Lcrittercism/android/bb;->c:Lcrittercism/android/bn;

    invoke-virtual {v1}, Lcrittercism/android/bn;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 145
    mul-int/lit8 v0, v0, 0x1f

    .line 146
    iget-object v1, p0, Lcrittercism/android/bb;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 148
    return v0
.end method
