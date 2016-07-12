.class public final Lcrittercism/android/bx$n;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/bw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/bx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "n"
.end annotation


# instance fields
.field private a:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    const/4 v0, 0x0

    iput-object v0, p0, Lcrittercism/android/bx$n;->a:Ljava/lang/Integer;

    .line 446
    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 447
    invoke-static {v0}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 448
    iget v1, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    iget v2, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x400

    .line 449
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/bx$n;->a:Ljava/lang/Integer;

    .line 450
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 453
    const-string v0, "memory_usage"

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcrittercism/android/bx$n;->a:Ljava/lang/Integer;

    return-object v0
.end method
