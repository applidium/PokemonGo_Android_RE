.class public final Lcrittercism/android/dr;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Landroid/content/SharedPreferences;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-nez p1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    iput-object p1, p0, Lcrittercism/android/dr;->c:Landroid/content/Context;

    .line 59
    const-string v0, "com.crittercism.usersettings"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/dr;->a:Landroid/content/SharedPreferences;

    .line 60
    const-string v0, "com.crittercism.prefs"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/dr;->b:Landroid/content/SharedPreferences;

    .line 62
    iget-object v0, p0, Lcrittercism/android/dr;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 63
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "prefs were null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    iget-object v0, p0, Lcrittercism/android/dr;->b:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    .line 67
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "legacy prefs were null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcrittercism/android/dr;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 157
    const-string v1, "hashedDeviceID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 158
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method private b()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 72
    .line 75
    :try_start_0
    iget-object v1, p0, Lcrittercism/android/dr;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "9774d56d682e549c"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "utf8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 82
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 84
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    .line 92
    :cond_2
    :goto_1
    return-object v0

    .line 76
    :catch_0
    move-exception v0

    throw v0

    .line 78
    :catch_1
    move-exception v1

    invoke-static {v1}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 85
    :catch_2
    move-exception v0

    throw v0

    .line 87
    :catch_3
    move-exception v1

    invoke-static {v1}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 133
    iget-object v0, p0, Lcrittercism/android/dr;->a:Landroid/content/SharedPreferences;

    const-string v1, "hashedDeviceID"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcrittercism/android/dr;->b:Landroid/content/SharedPreferences;

    const-string v1, "com.crittercism.prefs.did"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcrittercism/android/dr;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcrittercism/android/dr;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 141
    const-string v2, "com.crittercism.prefs.did"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 142
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 146
    :cond_0
    if-nez v0, :cond_1

    .line 148
    invoke-direct {p0}, Lcrittercism/android/dr;->b()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-direct {p0, v0}, Lcrittercism/android/dr;->a(Ljava/lang/String;)Z

    .line 152
    :cond_1
    return-object v0
.end method
