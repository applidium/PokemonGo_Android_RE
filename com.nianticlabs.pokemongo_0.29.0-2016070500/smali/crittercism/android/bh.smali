.class public final Lcrittercism/android/bh;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:Lorg/json/JSONObject;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcrittercism/android/bh;->a:Z

    .line 26
    const/16 v0, 0xa

    iput v0, p0, Lcrittercism/android/bh;->b:I

    .line 27
    const v0, 0x36ee80

    iput v0, p0, Lcrittercism/android/bh;->c:I

    .line 28
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcrittercism/android/bh;->d:Lorg/json/JSONObject;

    .line 59
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    const v3, 0x36ee80

    const/16 v2, 0xa

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v1, p0, Lcrittercism/android/bh;->a:Z

    .line 26
    iput v2, p0, Lcrittercism/android/bh;->b:I

    .line 27
    iput v3, p0, Lcrittercism/android/bh;->c:I

    .line 28
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcrittercism/android/bh;->d:Lorg/json/JSONObject;

    .line 62
    const-string v0, "enabled"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcrittercism/android/bh;->a:Z

    .line 65
    const-string v0, "interval"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcrittercism/android/bh;->b:I

    .line 67
    const-string v0, "defaultTimeout"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcrittercism/android/bh;->c:I

    .line 70
    const-string v0, "transactions"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/bh;->d:Lorg/json/JSONObject;

    .line 71
    iget-object v0, p0, Lcrittercism/android/bh;->d:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcrittercism/android/bh;->d:Lorg/json/JSONObject;

    .line 74
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcrittercism/android/bh;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 31
    const-string v0, "com.crittercism.txn.config"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 36
    new-instance v1, Lcrittercism/android/bh;

    invoke-direct {v1}, Lcrittercism/android/bh;-><init>()V

    .line 37
    const-string v2, "enabled"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Lcrittercism/android/bh;->a:Z

    .line 40
    const-string v2, "interval"

    const/16 v3, 0xa

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcrittercism/android/bh;->b:I

    .line 42
    const-string v2, "defaultTimeout"

    const v3, 0x36ee80

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcrittercism/android/bh;->c:I

    .line 44
    const-string v2, "transactions"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, v1, Lcrittercism/android/bh;->d:Lorg/json/JSONObject;

    .line 46
    if-eqz v0, :cond_0

    .line 48
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcrittercism/android/bh;->d:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 107
    iget-object v0, p0, Lcrittercism/android/bh;->d:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_0

    .line 109
    const-string v1, "timeout"

    iget v2, p0, Lcrittercism/android/bh;->c:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 111
    :goto_0
    return-wide v0

    :cond_0
    iget v0, p0, Lcrittercism/android/bh;->c:I

    int-to-long v0, v0

    goto :goto_0
.end method
