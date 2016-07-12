.class public final Lcrittercism/android/dz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 8
    new-instance v0, Lcrittercism/android/dy;

    invoke-direct {v0, p1}, Lcrittercism/android/dy;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method
