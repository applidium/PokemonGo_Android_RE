.class final Lcrittercism/android/az$9;
.super Lcrittercism/android/di;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcrittercism/android/az;->a(Lcrittercism/android/ci;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcrittercism/android/ci;

.field final synthetic b:Lcrittercism/android/az;


# direct methods
.method constructor <init>(Lcrittercism/android/az;Lcrittercism/android/ci;)V
    .locals 0

    .prologue
    .line 755
    iput-object p1, p0, Lcrittercism/android/az$9;->b:Lcrittercism/android/az;

    iput-object p2, p0, Lcrittercism/android/az$9;->a:Lcrittercism/android/ci;

    invoke-direct {p0}, Lcrittercism/android/di;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 758
    iget-object v0, p0, Lcrittercism/android/az$9;->b:Lcrittercism/android/az;

    iget-object v0, v0, Lcrittercism/android/az;->m:Lcrittercism/android/bs;

    iget-object v1, p0, Lcrittercism/android/az$9;->a:Lcrittercism/android/ci;

    invoke-virtual {v0, v1}, Lcrittercism/android/bs;->a(Lcrittercism/android/ch;)Z

    .line 759
    return-void
.end method
