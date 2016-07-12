.class public final Lcrittercism/android/dt;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/content/SharedPreferences;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "com.crittercism.ratemyapp"

    .line 29
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/dt;->a:Landroid/content/SharedPreferences;

    .line 30
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lcrittercism/android/dt;->a:Landroid/content/SharedPreferences;

    const-string v1, "numAppLoads"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcrittercism/android/dt;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "rateMyAppEnabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 61
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcrittercism/android/dt;->a:Landroid/content/SharedPreferences;

    const-string v1, "rateAppMessage"

    const-string v2, "Would you mind taking a second to rate my app?  I would really appreciate it!"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcrittercism/android/dt;->a:Landroid/content/SharedPreferences;

    const-string v1, "rateAppTitle"

    const-string v2, "Rate My App"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcrittercism/android/dt;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hasRatedApp"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 106
    return-void
.end method
