.class public Lcom/voxelbusters/utility/NativePlatformInfo;
.super Ljava/lang/Object;
.source "NativePlatformInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 7

    .prologue
    .line 43
    const/4 v3, 0x0

    .line 45
    .local v3, "info":Landroid/content/pm/PackageInfo;
    invoke-static {}, Lcom/voxelbusters/common/Configuration;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 46
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 47
    .local v0, "applicationContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 50
    .local v4, "manager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 57
    :goto_0
    return-object v3

    .line 52
    :catch_0
    move-exception v2

    .line 54
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 16
    const/4 v1, 0x0

    .line 17
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/voxelbusters/utility/NativePlatformInfo;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 19
    .local v0, "info":Landroid/content/pm/PackageInfo;
    const-string v2, "Utility"

    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    if-eqz v0, :cond_0

    .line 22
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 24
    :cond_0
    return-object v1
.end method

.method public static getPackageVersionName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    const/4 v1, 0x0

    .line 31
    .local v1, "packageVersionName":Ljava/lang/String;
    invoke-static {}, Lcom/voxelbusters/utility/NativePlatformInfo;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 33
    .local v0, "info":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    .line 35
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 38
    :cond_0
    return-object v1
.end method
