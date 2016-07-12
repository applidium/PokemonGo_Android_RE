.class final Lcrittercism/android/az$8;
.super Lcrittercism/android/di;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcrittercism/android/az;->a(Lcrittercism/android/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcrittercism/android/c;

.field final synthetic b:Lcrittercism/android/az;


# direct methods
.method constructor <init>(Lcrittercism/android/az;Lcrittercism/android/c;)V
    .locals 0

    .prologue
    .line 739
    iput-object p1, p0, Lcrittercism/android/az$8;->b:Lcrittercism/android/az;

    iput-object p2, p0, Lcrittercism/android/az$8;->a:Lcrittercism/android/c;

    invoke-direct {p0}, Lcrittercism/android/di;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 741
    iget-object v0, p0, Lcrittercism/android/az$8;->b:Lcrittercism/android/az;

    iget-object v0, v0, Lcrittercism/android/az;->l:Lcrittercism/android/bs;

    iget-object v1, p0, Lcrittercism/android/az$8;->a:Lcrittercism/android/c;

    invoke-virtual {v0, v1}, Lcrittercism/android/bs;->a(Lcrittercism/android/ch;)Z

    .line 742
    return-void
.end method
