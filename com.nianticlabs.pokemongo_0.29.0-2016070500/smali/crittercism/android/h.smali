.class public final Lcrittercism/android/h;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v0, p0, Lcrittercism/android/h;->a:Z

    .line 50
    iput-boolean v0, p0, Lcrittercism/android/h;->b:Z

    .line 60
    iput-boolean v0, p0, Lcrittercism/android/h;->c:Z

    .line 66
    const/16 v0, 0xa

    iput v0, p0, Lcrittercism/android/h;->d:I

    .line 79
    invoke-static {p1}, Lcrittercism/android/h;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcrittercism/android/h;->c:Z

    .line 82
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v2, p0, Lcrittercism/android/h;->a:Z

    .line 50
    iput-boolean v2, p0, Lcrittercism/android/h;->b:Z

    .line 60
    iput-boolean v2, p0, Lcrittercism/android/h;->c:Z

    .line 66
    iput v3, p0, Lcrittercism/android/h;->d:I

    .line 93
    const-string v0, "net"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 100
    :cond_0
    :try_start_0
    const-string v0, "net"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 106
    const-string v1, "enabled"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcrittercism/android/h;->a:Z

    .line 110
    const-string v1, "persist"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcrittercism/android/h;->b:Z

    .line 114
    const-string v1, "kill"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcrittercism/android/h;->c:Z

    .line 118
    const-string v1, "interval"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcrittercism/android/h;->d:I

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    .prologue
    .line 196
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.crittercism.apm.disabled."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 248
    :try_start_0
    invoke-static {p0}, Lcrittercism/android/h;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to kill APM: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcrittercism/android/dx;->b(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 351
    if-ne p0, p1, :cond_1

    .line 376
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 355
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 356
    goto :goto_0

    .line 359
    :cond_2
    instance-of v2, p1, Lcrittercism/android/h;

    if-nez v2, :cond_3

    move v0, v1

    .line 360
    goto :goto_0

    .line 363
    :cond_3
    check-cast p1, Lcrittercism/android/h;

    .line 364
    .end local p1    # "obj":Ljava/lang/Object;
    iget-boolean v2, p0, Lcrittercism/android/h;->c:Z

    iget-boolean v3, p1, Lcrittercism/android/h;->c:Z

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 365
    goto :goto_0

    .line 367
    :cond_4
    iget-boolean v2, p0, Lcrittercism/android/h;->a:Z

    iget-boolean v3, p1, Lcrittercism/android/h;->a:Z

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 368
    goto :goto_0

    .line 370
    :cond_5
    iget-boolean v2, p0, Lcrittercism/android/h;->b:Z

    iget-boolean v3, p1, Lcrittercism/android/h;->b:Z

    if-eq v2, v3, :cond_6

    move v0, v1

    .line 371
    goto :goto_0

    .line 373
    :cond_6
    iget v2, p0, Lcrittercism/android/h;->d:I

    iget v3, p1, Lcrittercism/android/h;->d:I

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 374
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    const/16 v2, 0x4d5

    const/16 v1, 0x4cf

    .line 334
    iget-boolean v0, p0, Lcrittercism/android/h;->c:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 337
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcrittercism/android/h;->a:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    .line 338
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcrittercism/android/h;->b:Z

    if-eqz v3, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 339
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcrittercism/android/h;->d:I

    add-int/2addr v0, v1

    .line 340
    return v0

    :cond_0
    move v0, v2

    .line 334
    goto :goto_0

    :cond_1
    move v0, v2

    .line 337
    goto :goto_1

    :cond_2
    move v1, v2

    .line 338
    goto :goto_2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OptmzConfiguration [\nisSendTaskEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcrittercism/android/h;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n, shouldPersist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcrittercism/android/h;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n, isKilled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcrittercism/android/h;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n, statisticsSendInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcrittercism/android/h;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
