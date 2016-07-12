.class public final Lcrittercism/android/bx$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/bw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/bx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcrittercism/android/bx$b;->a:Ljava/lang/Integer;

    .line 103
    invoke-static {}, Lcrittercism/android/bx;->a()Lcrittercism/android/at;

    .line 104
    invoke-static {}, Lcrittercism/android/bx;->a()Lcrittercism/android/at;

    move-result-object v0

    iget v0, v0, Lcrittercism/android/at;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/bx$b;->a:Ljava/lang/Integer;

    .line 105
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-string v0, "app_version_code"

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcrittercism/android/bx$b;->a:Ljava/lang/Integer;

    return-object v0
.end method
