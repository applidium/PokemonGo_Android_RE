.class public final Lcrittercism/android/at;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/crittercism/app/CrittercismConfig;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "1.0"

    iput-object v0, p0, Lcrittercism/android/at;->a:Ljava/lang/String;

    .line 13
    iput v1, p0, Lcrittercism/android/at;->b:I

    .line 16
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 22
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, p0, Lcrittercism/android/at;->a:Ljava/lang/String;

    .line 23
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lcrittercism/android/at;->b:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :goto_0
    invoke-virtual {p2}, Lcom/crittercism/app/CrittercismConfig;->getCustomVersionName()Ljava/lang/String;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 31
    iput-object v0, p0, Lcrittercism/android/at;->a:Ljava/lang/String;

    .line 34
    :cond_0
    invoke-virtual {p2}, Lcom/crittercism/app/CrittercismConfig;->isVersionCodeToBeIncludedInVersionString()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcrittercism/android/at;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcrittercism/android/at;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/at;->a:Ljava/lang/String;

    .line 37
    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
