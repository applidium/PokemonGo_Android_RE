.class public abstract Lcom/crittercism/app/Transaction;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcrittercism/android/az;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/crittercism/app/Transaction;
    .locals 3

    .prologue
    .line 34
    if-eqz p0, :cond_0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "Transaction was created with a null/zero-length name. Returning no-op transaction"

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Transaction created with null/zero-length name"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcrittercism/android/dx;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcrittercism/android/be;

    invoke-direct {v0}, Lcrittercism/android/be;-><init>()V

    .line 39
    :goto_0
    return-object v0

    .line 34
    :cond_1
    invoke-static {}, Lcrittercism/android/az;->A()Lcrittercism/android/az;

    move-result-object v1

    iget-boolean v0, v1, Lcrittercism/android/az;->b:Z

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Lcrittercism/android/az;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcrittercism/android/be;

    invoke-direct {v0}, Lcrittercism/android/be;-><init>()V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    throw v0

    .line 34
    :cond_2
    :try_start_1
    new-instance v0, Lcrittercism/android/bg;

    invoke-direct {v0, v1, p0}, Lcrittercism/android/bg;-><init>(Lcrittercism/android/az;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 37
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dx;->a(Ljava/lang/Throwable;)V

    .line 39
    new-instance v0, Lcrittercism/android/be;

    invoke-direct {v0}, Lcrittercism/android/be;-><init>()V

    goto :goto_0

    .line 34
    :cond_3
    :try_start_2
    const-string v0, "Transaction was created before Crittercism.initialize() was called. Returning no-op transaction"

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Transaction created before Crittercism.initialize()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcrittercism/android/dx;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcrittercism/android/be;

    invoke-direct {v0}, Lcrittercism/android/be;-><init>()V
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(I)V
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method

.method public abstract d()I
.end method
