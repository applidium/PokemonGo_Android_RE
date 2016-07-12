.class public final Lcrittercism/android/bd;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private a:Lcrittercism/android/az;

.field private b:Ljava/lang/String;

.field private c:Lcrittercism/android/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcrittercism/android/az;)V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 20
    iput-object p2, p0, Lcrittercism/android/bd;->a:Lcrittercism/android/az;

    .line 21
    new-instance v0, Lcrittercism/android/d;

    invoke-direct {v0, p1}, Lcrittercism/android/d;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-virtual {v0}, Lcrittercism/android/d;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcrittercism/android/bd;->b:Ljava/lang/String;

    .line 24
    invoke-virtual {v0}, Lcrittercism/android/d;->a()Lcrittercism/android/b;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/bd;->c:Lcrittercism/android/b;

    .line 25
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CrittercismReceiver: INTENT ACTION = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcrittercism/android/dx;->b()V

    .line 32
    new-instance v0, Lcrittercism/android/d;

    invoke-direct {v0, p1}, Lcrittercism/android/d;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-virtual {v0}, Lcrittercism/android/d;->a()Lcrittercism/android/b;

    move-result-object v1

    .line 34
    iget-object v2, p0, Lcrittercism/android/bd;->c:Lcrittercism/android/b;

    if-eq v2, v1, :cond_1

    sget-object v2, Lcrittercism/android/b;->c:Lcrittercism/android/b;

    if-eq v1, v2, :cond_1

    .line 35
    sget-object v2, Lcrittercism/android/b;->d:Lcrittercism/android/b;

    if-ne v1, v2, :cond_5

    iget-object v2, p0, Lcrittercism/android/bd;->a:Lcrittercism/android/az;

    new-instance v3, Lcrittercism/android/ce;

    sget-object v4, Lcrittercism/android/ce$a;->b:Lcrittercism/android/ce$a;

    invoke-direct {v3, v4}, Lcrittercism/android/ce;-><init>(Lcrittercism/android/ce$a;)V

    invoke-virtual {v2, v3}, Lcrittercism/android/az;->a(Lcrittercism/android/ci;)V

    .line 36
    :cond_0
    :goto_0
    iput-object v1, p0, Lcrittercism/android/bd;->c:Lcrittercism/android/b;

    .line 39
    :cond_1
    invoke-virtual {v0}, Lcrittercism/android/d;->b()Ljava/lang/String;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcrittercism/android/bd;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 41
    iget-object v1, p0, Lcrittercism/android/bd;->b:Ljava/lang/String;

    const-string v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcrittercism/android/bd;->b:Ljava/lang/String;

    const-string v2, "disconnected"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_2
    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "disconnected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcrittercism/android/bd;->a:Lcrittercism/android/az;

    new-instance v2, Lcrittercism/android/ce;

    sget-object v3, Lcrittercism/android/ce$a;->c:Lcrittercism/android/ce$a;

    invoke-direct {v2, v3, v0}, Lcrittercism/android/ce;-><init>(Lcrittercism/android/ce$a;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcrittercism/android/az;->a(Lcrittercism/android/ci;)V

    .line 42
    :cond_3
    :goto_1
    iput-object v0, p0, Lcrittercism/android/bd;->b:Ljava/lang/String;

    .line 44
    :cond_4
    return-void

    .line 35
    :cond_5
    iget-object v2, p0, Lcrittercism/android/bd;->c:Lcrittercism/android/b;

    sget-object v3, Lcrittercism/android/b;->d:Lcrittercism/android/b;

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcrittercism/android/bd;->c:Lcrittercism/android/b;

    sget-object v3, Lcrittercism/android/b;->c:Lcrittercism/android/b;

    if-ne v2, v3, :cond_0

    :cond_6
    iget-object v2, p0, Lcrittercism/android/bd;->a:Lcrittercism/android/az;

    new-instance v3, Lcrittercism/android/ce;

    sget-object v4, Lcrittercism/android/ce$a;->a:Lcrittercism/android/ce$a;

    invoke-direct {v3, v4}, Lcrittercism/android/ce;-><init>(Lcrittercism/android/ce$a;)V

    invoke-virtual {v2, v3}, Lcrittercism/android/az;->a(Lcrittercism/android/ci;)V

    goto :goto_0

    .line 41
    :cond_7
    const-string v1, "disconnected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcrittercism/android/bd;->a:Lcrittercism/android/az;

    new-instance v2, Lcrittercism/android/ce;

    sget-object v3, Lcrittercism/android/ce$a;->d:Lcrittercism/android/ce$a;

    iget-object v4, p0, Lcrittercism/android/bd;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcrittercism/android/ce;-><init>(Lcrittercism/android/ce$a;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcrittercism/android/az;->a(Lcrittercism/android/ci;)V

    goto :goto_1

    :cond_8
    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcrittercism/android/bd;->a:Lcrittercism/android/az;

    new-instance v2, Lcrittercism/android/ce;

    sget-object v3, Lcrittercism/android/ce$a;->e:Lcrittercism/android/ce$a;

    iget-object v4, p0, Lcrittercism/android/bd;->b:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcrittercism/android/ce;-><init>(Lcrittercism/android/ce$a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcrittercism/android/az;->a(Lcrittercism/android/ci;)V

    goto :goto_1
.end method
