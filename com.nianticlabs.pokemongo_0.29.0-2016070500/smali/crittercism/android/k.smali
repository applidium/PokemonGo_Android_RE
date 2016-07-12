.class public final Lcrittercism/android/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcrittercism/android/k$a;
    }
.end annotation


# instance fields
.field a:Ljava/net/InetAddress;

.field b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field d:Lcrittercism/android/k$a;

.field e:I

.field f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "/"

    iput-object v0, p0, Lcrittercism/android/k;->c:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcrittercism/android/k;->d:Lcrittercism/android/k$a;

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcrittercism/android/k;->e:I

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcrittercism/android/k;->f:Z

    return-void
.end method
