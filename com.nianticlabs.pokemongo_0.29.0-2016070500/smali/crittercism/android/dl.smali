.class public final Lcrittercism/android/dl;
.super Lcrittercism/android/di;


# instance fields
.field public a:Ljava/util/Map;

.field private b:Lcrittercism/android/dw;

.field private c:Lcrittercism/android/au;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Lcrittercism/android/au;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Lcrittercism/android/di;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcrittercism/android/dl;->a:Ljava/util/Map;

    .line 24
    iput-boolean v1, p0, Lcrittercism/android/dl;->d:Z

    .line 25
    iput-boolean v1, p0, Lcrittercism/android/dl;->e:Z

    .line 26
    iput-boolean v1, p0, Lcrittercism/android/dl;->f:Z

    .line 27
    iput-boolean v1, p0, Lcrittercism/android/dl;->g:Z

    .line 30
    iput-object p1, p0, Lcrittercism/android/dl;->c:Lcrittercism/android/au;

    .line 31
    invoke-interface {p1}, Lcrittercism/android/au;->l()Lcrittercism/android/dw;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/dl;->b:Lcrittercism/android/dw;

    .line 32
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcrittercism/android/dl;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v0, 0x0

    .line 60
    iget-object v1, p0, Lcrittercism/android/dl;->b:Lcrittercism/android/dw;

    invoke-virtual {v1}, Lcrittercism/android/dw;->b()Z

    move-result v1

    .line 62
    iget-boolean v2, p0, Lcrittercism/android/dl;->d:Z

    if-eqz v2, :cond_0

    .line 63
    const-string v2, "optOutStatus"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcrittercism/android/dl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    :cond_0
    if-nez v1, :cond_4

    .line 67
    iget-boolean v1, p0, Lcrittercism/android/dl;->e:Z

    if-eqz v1, :cond_1

    .line 68
    const-string v1, "crashedOnLastLoad"

    sget-boolean v2, Lcrittercism/android/dq;->a:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcrittercism/android/dl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    :cond_1
    iget-boolean v1, p0, Lcrittercism/android/dl;->f:Z

    if-eqz v1, :cond_2

    .line 72
    const-string v1, "userUUID"

    iget-object v2, p0, Lcrittercism/android/dl;->c:Lcrittercism/android/au;

    invoke-interface {v2}, Lcrittercism/android/au;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcrittercism/android/dl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    :cond_2
    iget-boolean v1, p0, Lcrittercism/android/dl;->g:Z

    if-eqz v1, :cond_4

    .line 76
    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v1

    iget-object v1, v1, Lcrittercism/android/az;->A:Lcrittercism/android/dt;

    .line 77
    if-eqz v1, :cond_4

    .line 80
    const-string v2, "shouldShowRateAppAlert"

    iget-object v3, v1, Lcrittercism/android/dt;->a:Landroid/content/SharedPreferences;

    const-string v4, "rateMyAppEnabled"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcrittercism/android/dt;->a:Landroid/content/SharedPreferences;

    const-string v4, "hasRatedApp"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1}, Lcrittercism/android/dt;->a()I

    move-result v3

    iget-object v4, v1, Lcrittercism/android/dt;->a:Landroid/content/SharedPreferences;

    const-string v5, "rateAfterNumLoads"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-lt v3, v4, :cond_3

    iget-object v5, v1, Lcrittercism/android/dt;->a:Landroid/content/SharedPreferences;

    const-string v6, "remindAfterNumLoads"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    sub-int/2addr v3, v4

    rem-int/2addr v3, v5

    if-nez v3, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcrittercism/android/dl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    const-string v0, "message"

    invoke-virtual {v1}, Lcrittercism/android/dt;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcrittercism/android/dl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    const-string v0, "title"

    invoke-virtual {v1}, Lcrittercism/android/dt;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcrittercism/android/dl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    :cond_4
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcrittercism/android/dl;->d:Z

    .line 36
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcrittercism/android/dl;->e:Z

    .line 40
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcrittercism/android/dl;->f:Z

    .line 44
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcrittercism/android/dl;->g:Z

    .line 48
    return-void
.end method
