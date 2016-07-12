.class public Lcom/crittercism/app/CritterUserDataRequest;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/crittercism/app/CritterCallback;

.field private b:Lcrittercism/android/az;

.field private c:Ljava/util/Map;

.field private d:Lcrittercism/android/dl;


# direct methods
.method public constructor <init>(Lcom/crittercism/app/CritterCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/crittercism/app/CritterCallback;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/crittercism/app/CritterUserDataRequest;->a:Lcom/crittercism/app/CritterCallback;

    .line 41
    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/app/CritterUserDataRequest;->b:Lcrittercism/android/az;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/crittercism/app/CritterUserDataRequest;->c:Ljava/util/Map;

    .line 43
    new-instance v0, Lcrittercism/android/dl;

    iget-object v1, p0, Lcom/crittercism/app/CritterUserDataRequest;->b:Lcrittercism/android/az;

    invoke-direct {v0, v1}, Lcrittercism/android/dl;-><init>(Lcrittercism/android/au;)V

    iput-object v0, p0, Lcom/crittercism/app/CritterUserDataRequest;->d:Lcrittercism/android/dl;

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/crittercism/app/CritterUserDataRequest;)Lcrittercism/android/dl;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/crittercism/app/CritterUserDataRequest;->d:Lcrittercism/android/dl;

    return-object v0
.end method

.method static synthetic a(Lcom/crittercism/app/CritterUserDataRequest;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/crittercism/app/CritterUserDataRequest;->c:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic b(Lcom/crittercism/app/CritterUserDataRequest;)Lcrittercism/android/az;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/crittercism/app/CritterUserDataRequest;->b:Lcrittercism/android/az;

    return-object v0
.end method

.method static synthetic c(Lcom/crittercism/app/CritterUserDataRequest;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/crittercism/app/CritterUserDataRequest;->c:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic d(Lcom/crittercism/app/CritterUserDataRequest;)Lcom/crittercism/app/CritterCallback;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/crittercism/app/CritterUserDataRequest;->a:Lcom/crittercism/app/CritterCallback;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized makeRequest()V
    .locals 3

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/crittercism/app/CritterUserDataRequest;->b:Lcrittercism/android/az;

    iget-object v0, v0, Lcrittercism/android/az;->q:Lcrittercism/android/dg;

    .line 94
    if-nez v0, :cond_1

    .line 95
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Must initialize Crittercism before calling "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".makeRequest()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcrittercism/android/dx;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 100
    :cond_1
    :try_start_1
    new-instance v1, Lcom/crittercism/app/CritterUserDataRequest$1;

    invoke-direct {v1, p0}, Lcom/crittercism/app/CritterUserDataRequest$1;-><init>(Lcom/crittercism/app/CritterUserDataRequest;)V

    .line 109
    invoke-virtual {v0, v1}, Lcrittercism/android/dg;->a(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcrittercism/android/dy;

    invoke-direct {v0, v1}, Lcrittercism/android/dy;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcrittercism/android/dy;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requestDidCrashOnLastLoad()Lcom/crittercism/app/CritterUserDataRequest;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/crittercism/app/CritterUserDataRequest;->d:Lcrittercism/android/dl;

    invoke-virtual {v0}, Lcrittercism/android/dl;->c()V

    .line 65
    return-object p0
.end method

.method public requestOptOutStatus()Lcom/crittercism/app/CritterUserDataRequest;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/crittercism/app/CritterUserDataRequest;->d:Lcrittercism/android/dl;

    invoke-virtual {v0}, Lcrittercism/android/dl;->b()V

    .line 85
    return-object p0
.end method

.method public requestRateMyAppInfo()Lcom/crittercism/app/CritterUserDataRequest;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/crittercism/app/CritterUserDataRequest;->d:Lcrittercism/android/dl;

    invoke-virtual {v0}, Lcrittercism/android/dl;->e()V

    .line 54
    return-object p0
.end method

.method public requestUserUUID()Lcom/crittercism/app/CritterUserDataRequest;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/crittercism/app/CritterUserDataRequest;->d:Lcrittercism/android/dl;

    invoke-virtual {v0}, Lcrittercism/android/dl;->d()V

    .line 75
    return-object p0
.end method
