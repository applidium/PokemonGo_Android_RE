.class public final Lcrittercism/android/du;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/bv;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcrittercism/android/du;->a:I

    .line 27
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcrittercism/android/ax;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcrittercism/android/du;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, p2, p3, v0}, Lcrittercism/android/ax;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    iget v0, p0, Lcrittercism/android/du;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
