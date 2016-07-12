.class public Lcom/google/vr/cardboard/DisplaySynchronizer;
.super Ljava/lang/Object;
.source "DisplaySynchronizer.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# static fields
.field private static final FRAME_TIME_NS:J = 0xfe502aL


# instance fields
.field private choreographer:Landroid/view/Choreographer;

.field private final nativeDisplaySynchronizer:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-wide/32 v0, 0xfe502a

    invoke-direct {p0, v0, v1}, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeInit(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDisplaySynchronizer:J

    .line 23
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->choreographer:Landroid/view/Choreographer;

    .line 24
    iget-object v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->choreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 25
    return-void
.end method

.method private native nativeAddSyncTime(JJ)V
.end method

.method private native nativeDestroy(J)V
.end method

.method private native nativeInit(J)J
.end method

.method private native nativeRetainNativeDisplaySynchronizer(J)J
.end method

.method private native nativeSyncToNextVsync(J)J
.end method


# virtual methods
.method public doFrame(J)V
    .locals 3
    .param p1, "vsync"    # J

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDisplaySynchronizer:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeAddSyncTime(JJ)V

    .line 48
    iget-object v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->choreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 49
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 30
    :try_start_0
    iget-wide v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDisplaySynchronizer:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDestroy(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 34
    return-void

    .line 32
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public retainNativeDisplaySynchronizer()J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDisplaySynchronizer:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeRetainNativeDisplaySynchronizer(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public syncToNextVsync()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeDisplaySynchronizer:J

    invoke-direct {p0, v0, v1}, Lcom/google/vr/cardboard/DisplaySynchronizer;->nativeSyncToNextVsync(J)J

    move-result-wide v0

    return-wide v0
.end method
