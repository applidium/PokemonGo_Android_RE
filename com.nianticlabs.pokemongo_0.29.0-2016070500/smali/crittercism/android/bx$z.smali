.class public final Lcrittercism/android/bx$z;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/bw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/bx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "z"
.end annotation


# instance fields
.field private a:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcrittercism/android/bx$z;->a:Ljava/lang/Float;

    .line 223
    invoke-static {}, Lcrittercism/android/bx;->b()Landroid/content/Context;

    .line 224
    invoke-static {}, Lcrittercism/android/bx;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/bx$z;->a:Ljava/lang/Float;

    .line 225
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    const-string v0, "xdpi"

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcrittercism/android/bx$z;->a:Ljava/lang/Float;

    return-object v0
.end method
