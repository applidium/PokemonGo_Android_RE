.class public final Lcrittercism/android/az$7;
.super Lcrittercism/android/di;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/az;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcrittercism/android/cf;

.field final synthetic b:Lcrittercism/android/az;


# direct methods
.method public constructor <init>(Lcrittercism/android/az;Lcrittercism/android/cf;)V
    .locals 0

    .prologue
    .line 725
    iput-object p1, p0, Lcrittercism/android/az$7;->b:Lcrittercism/android/az;

    iput-object p2, p0, Lcrittercism/android/az$7;->a:Lcrittercism/android/cf;

    invoke-direct {p0}, Lcrittercism/android/di;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 728
    iget-object v0, p0, Lcrittercism/android/az$7;->b:Lcrittercism/android/az;

    iget-object v0, v0, Lcrittercism/android/az;->k:Lcrittercism/android/bs;

    iget-object v1, p0, Lcrittercism/android/az$7;->a:Lcrittercism/android/cf;

    invoke-virtual {v0, v1}, Lcrittercism/android/bs;->a(Lcrittercism/android/ch;)Z

    .line 729
    return-void
.end method
