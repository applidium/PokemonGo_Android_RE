.class public final Lcrittercism/android/be;
.super Lcom/crittercism/app/Transaction;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/crittercism/app/Transaction;-><init>()V

    .line 7
    const-string v0, "Creating no-op transaction"

    invoke-static {v0}, Lcrittercism/android/dx;->c(Ljava/lang/String;)V

    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 12
    const-string v0, "No-op transaction. Ignoring Transaction.start() call."

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No-op transaction"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcrittercism/android/dx;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    return-void
.end method

.method public final a(I)V
    .locals 3

    .prologue
    .line 30
    const-string v0, "No-op transaction. Ignoring Transaction.setValue(double) call."

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No-op transaction"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcrittercism/android/dx;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 18
    const-string v0, "No-op transaction. Ignoring Transaction.stop() call."

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No-op transaction"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcrittercism/android/dx;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 24
    const-string v0, "No-op transaction. Ignoring Transaction.fail() call."

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No-op transaction"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcrittercism/android/dx;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    return-void
.end method

.method public final d()I
    .locals 3

    .prologue
    .line 36
    const-string v0, "No-op transaction. Ignoring Transaction.getValue() call."

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No-op transaction"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcrittercism/android/dx;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    const/4 v0, -0x1

    return v0
.end method
