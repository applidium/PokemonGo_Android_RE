.class final Lcrittercism/android/bg$7;
.super Lcrittercism/android/di;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcrittercism/android/bg;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcrittercism/android/bg;

.field final synthetic b:Lcrittercism/android/bg;


# direct methods
.method constructor <init>(Lcrittercism/android/bg;Lcrittercism/android/bg;)V
    .locals 0

    .prologue
    .line 805
    iput-object p1, p0, Lcrittercism/android/bg$7;->b:Lcrittercism/android/bg;

    iput-object p2, p0, Lcrittercism/android/bg$7;->a:Lcrittercism/android/bg;

    invoke-direct {p0}, Lcrittercism/android/di;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 808
    iget-object v0, p0, Lcrittercism/android/bg$7;->b:Lcrittercism/android/bg;

    iget-object v0, v0, Lcrittercism/android/bg;->a:Lcrittercism/android/az;

    iget-object v0, v0, Lcrittercism/android/az;->q:Lcrittercism/android/dg;

    iget-object v0, v0, Lcrittercism/android/dg;->a:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 809
    iget-object v0, p0, Lcrittercism/android/bg$7;->b:Lcrittercism/android/bg;

    iget-object v0, v0, Lcrittercism/android/bg;->a:Lcrittercism/android/az;

    iget-object v0, v0, Lcrittercism/android/az;->n:Lcrittercism/android/bs;

    iget-object v1, p0, Lcrittercism/android/bg$7;->a:Lcrittercism/android/bg;

    invoke-virtual {v0, v1}, Lcrittercism/android/bs;->a(Lcrittercism/android/ch;)Z

    .line 810
    return-void
.end method
