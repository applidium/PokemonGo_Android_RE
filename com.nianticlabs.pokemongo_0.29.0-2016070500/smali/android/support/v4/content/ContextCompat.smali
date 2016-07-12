.class public Landroid/support/v4/content/ContextCompat;
.super Ljava/lang/Object;
.source "ContextCompat.java"


# static fields
.field private static final DIR_ANDROID:Ljava/lang/String; = "Android"

.field private static final DIR_CACHE:Ljava/lang/String; = "cache"

.field private static final DIR_DATA:Ljava/lang/String; = "data"

.field private static final DIR_FILES:Ljava/lang/String; = "files"

.field private static final DIR_OBB:Ljava/lang/String; = "obb"

.field private static final TAG:Ljava/lang/String; = "ContextCompat"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static varargs buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p0, "base"    # Ljava/io/File;
    .param p1, "segments"    # [Ljava/lang/String;

    .prologue
    .line 296
    move-object v1, p0

    .line 297
    .local v1, "cur":Ljava/io/File;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move-object v2, v1

    .end local v1    # "cur":Ljava/io/File;
    .local v2, "cur":Ljava/io/File;
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 298
    .local v5, "segment":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 299
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 297
    .end local v2    # "cur":Ljava/io/File;
    .restart local v1    # "cur":Ljava/io/File;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move-object v2, v1

    .end local v1    # "cur":Ljava/io/File;
    .restart local v2    # "cur":Ljava/io/File;
    goto :goto_0

    .line 300
    :cond_0
    if-eqz v5, :cond_2

    .line 301
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .end local v2    # "cur":Ljava/io/File;
    .restart local v1    # "cur":Ljava/io/File;
    goto :goto_1

    .line 304
    .end local v1    # "cur":Ljava/io/File;
    .end local v5    # "segment":Ljava/lang/String;
    .restart local v2    # "cur":Ljava/io/File;
    :cond_1
    return-object v2

    .restart local v5    # "segment":Ljava/lang/String;
    :cond_2
    move-object v1, v2

    .end local v2    # "cur":Ljava/io/File;
    .restart local v1    # "cur":Ljava/io/File;
    goto :goto_1
.end method

.method public static checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "permission"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 383
    if-nez p1, :cond_0

    .line 384
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "permission is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private static declared-synchronized createFilesDir(Ljava/io/File;)Ljava/io/File;
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 442
    const-class v1, Landroid/support/v4/content/ContextCompat;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    invoke-virtual {p0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 452
    .end local p0    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    monitor-exit v1

    return-object p0

    .line 448
    .restart local p0    # "file":Ljava/io/File;
    :cond_1
    :try_start_1
    const-string v0, "ContextCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create files subdir "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 449
    const/4 p0, 0x0

    goto :goto_0

    .line 442
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final getColor(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 364
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 365
    .local v0, "version":I
    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 366
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatApi23;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 368
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0
.end method

.method public static final getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 342
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 343
    .local v0, "version":I
    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 344
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatApi23;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 346
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_0
.end method

.method public static final getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 319
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 320
    .local v0, "version":I
    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 321
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatApi21;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 323
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public static getExternalCacheDirs(Landroid/content/Context;)[Ljava/io/File;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 280
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 281
    .local v1, "version":I
    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 282
    invoke-static {p0}, Landroid/support/v4/content/ContextCompatKitKat;->getExternalCacheDirs(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v2

    .line 291
    :goto_0
    return-object v2

    .line 285
    :cond_0
    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    .line 286
    invoke-static {p0}, Landroid/support/v4/content/ContextCompatFroyo;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 291
    .local v0, "single":Ljava/io/File;
    :goto_1
    new-array v2, v7, [Ljava/io/File;

    aput-object v0, v2, v6

    goto :goto_0

    .line 288
    .end local v0    # "single":Ljava/io/File;
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "Android"

    aput-object v4, v3, v6

    const-string v4, "data"

    aput-object v4, v3, v7

    const/4 v4, 0x2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "cache"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .restart local v0    # "single":Ljava/io/File;
    goto :goto_1
.end method

.method public static getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 220
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 221
    .local v1, "version":I
    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 222
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatKitKat;->getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    .line 231
    :goto_0
    return-object v2

    .line 225
    :cond_0
    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    .line 226
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatFroyo;->getExternalFilesDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 231
    .local v0, "single":Ljava/io/File;
    :goto_1
    new-array v2, v7, [Ljava/io/File;

    aput-object v0, v2, v6

    goto :goto_0

    .line 228
    .end local v0    # "single":Ljava/io/File;
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "Android"

    aput-object v4, v3, v6

    const-string v4, "data"

    aput-object v4, v3, v7

    const/4 v4, 0x2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "files"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .restart local v0    # "single":Ljava/io/File;
    goto :goto_1
.end method

.method public static getObbDirs(Landroid/content/Context;)[Ljava/io/File;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 160
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 161
    .local v1, "version":I
    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 162
    invoke-static {p0}, Landroid/support/v4/content/ContextCompatKitKat;->getObbDirs(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v2

    .line 171
    :goto_0
    return-object v2

    .line 165
    :cond_0
    const/16 v2, 0xb

    if-lt v1, v2, :cond_1

    .line 166
    invoke-static {p0}, Landroid/support/v4/content/ContextCompatHoneycomb;->getObbDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 171
    .local v0, "single":Ljava/io/File;
    :goto_1
    new-array v2, v7, [Ljava/io/File;

    aput-object v0, v2, v6

    goto :goto_0

    .line 168
    .end local v0    # "single":Ljava/io/File;
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "Android"

    aput-object v4, v3, v6

    const-string v4, "obb"

    aput-object v4, v3, v7

    const/4 v4, 0x2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .restart local v0    # "single":Ljava/io/File;
    goto :goto_1
.end method

.method public static startActivities(Landroid/content/Context;[Landroid/content/Intent;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intents"    # [Landroid/content/Intent;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/support/v4/content/ContextCompat;->startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 105
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 106
    .local v0, "version":I
    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    .line 107
    invoke-static {p0, p1, p2}, Landroid/support/v4/content/ContextCompatJellybean;->startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 113
    :goto_0
    return v1

    .line 109
    :cond_0
    const/16 v2, 0xb

    if-lt v0, v2, :cond_1

    .line 110
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatHoneycomb;->startActivities(Landroid/content/Context;[Landroid/content/Intent;)V

    goto :goto_0

    .line 113
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final getCodeCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 432
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 433
    .local v1, "version":I
    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 434
    invoke-static {p1}, Landroid/support/v4/content/ContextCompatApi21;->getCodeCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 437
    :goto_0
    return-object v2

    .line 436
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 437
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v4, "code_cache"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/support/v4/content/ContextCompat;->createFilesDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    goto :goto_0
.end method

.method public final getNoBackupFilesDir(Landroid/content/Context;)Ljava/io/File;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 407
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 408
    .local v1, "version":I
    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 409
    invoke-static {p1}, Landroid/support/v4/content/ContextCompatApi21;->getNoBackupFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 412
    :goto_0
    return-object v2

    .line 411
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 412
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v4, "no_backup"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/support/v4/content/ContextCompat;->createFilesDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    goto :goto_0
.end method
