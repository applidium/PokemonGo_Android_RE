.class public Lcom/voxelbusters/nativeplugins/utilities/ApplicationUtility;
.super Ljava/lang/Object;
.source "ApplicationUtility.java"


# static fields
.field static final PLAY_SERVICES_RESOLUTION_REQUEST:I = 0x186a0


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetMainLauncherActivity(Landroid/content/Context;)Ljava/lang/Class;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 129
    .local v2, "launchIntent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "className":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 137
    :goto_0
    return-object v4

    .line 134
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 137
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getApplicationContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 54
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 57
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {p0}, Lcom/voxelbusters/nativeplugins/utilities/ApplicationUtility;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    .line 59
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 62
    const-string v3, "NativePlugins.ApplicationUtility"

    const-string v4, "Package name not found!"

    invoke-static {v3, v4}, Lcom/voxelbusters/nativeplugins/utilities/Debug;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getApplicationName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-static {p0}, Lcom/voxelbusters/nativeplugins/utilities/ApplicationUtility;->getApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 71
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 72
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, "name":Ljava/lang/String;
    return-object v1
.end method

.method public static getExternalTempDirectoryIfExists(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dirName"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-static {p0}, Lcom/voxelbusters/nativeplugins/utilities/ApplicationUtility;->hasExternalStorageWritable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/voxelbusters/nativeplugins/utilities/ApplicationUtility;->getSaveDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 162
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/voxelbusters/nativeplugins/utilities/ApplicationUtility;->getLocalSaveDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFileProviderAuthoityName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/voxelbusters/nativeplugins/utilities/ApplicationUtility;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".fileprovider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "authorityName":Ljava/lang/String;
    return-object v0
.end method

.method public static getLocalSaveDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dirName"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/voxelbusters/nativeplugins/utilities/ApplicationUtility;->getSaveDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "packageName":Ljava/lang/String;
    return-object v0
.end method

.method public static getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-static {p1}, Lcom/voxelbusters/nativeplugins/utilities/StringUtility;->getFileNameWithoutExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-static {p0}, Lcom/voxelbusters/nativeplugins/utilities/ApplicationUtility;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 122
    .local v0, "imageResourceId":I
    return v0
.end method

.method static getSaveDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dirName"    # Ljava/lang/String;
    .param p2, "destinationDir"    # Ljava/io/File;

    .prologue
    .line 168
    invoke-static {p1}, Lcom/voxelbusters/nativeplugins/utilities/StringUtility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 170
    invoke-static {p0}, Lcom/voxelbusters/nativeplugins/utilities/ApplicationUtility;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 173
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 174
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 176
    return-object v0
.end method

.method public static getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stringId"    # I

    .prologue
    .line 199
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static hasExternalStorageWritable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    const/4 v1, 0x1

    .line 188
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissionName"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 144
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-static {p0}, Lcom/voxelbusters/nativeplugins/utilities/ApplicationUtility;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 146
    .local v0, "hasPermission":I
    if-nez v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isGooglePlayServicesAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 33
    .local v0, "resultCode":I
    if-eqz v0, :cond_1

    .line 35
    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isUserRecoverableError(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    const v1, 0x186a0

    invoke-static {v0, p0, v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 43
    :goto_0
    const/4 v1, 0x0

    .line 46
    :goto_1
    return v1

    .line 41
    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    const-string v1, "NativePlugins.ApplicationUtility"

    const-string v2, "This device does not support Google Play Services."

    invoke-static {v1, v2}, Lcom/voxelbusters/nativeplugins/utilities/Debug;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 113
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/high16 v2, 0x10000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 114
    .local v0, "listOfIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isIntentAvailable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    if-eqz p3, :cond_0

    .line 102
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    :cond_0
    invoke-static {p0, v0}, Lcom/voxelbusters/nativeplugins/utilities/ApplicationUtility;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method
