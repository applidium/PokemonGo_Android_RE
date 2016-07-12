.class Landroid/support/v4/media/TransportMediator$1;
.super Ljava/lang/Object;
.source "TransportMediator.java"

# interfaces
.implements Landroid/support/v4/media/TransportMediatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/TransportMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/TransportMediator;


# direct methods
.method constructor <init>(Landroid/support/v4/media/TransportMediator;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Landroid/support/v4/media/TransportMediator$1;->this$0:Landroid/support/v4/media/TransportMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlaybackPosition()J
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator$1;->this$0:Landroid/support/v4/media/TransportMediator;

    iget-object v0, v0, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;

    invoke-virtual {v0}, Landroid/support/v4/media/TransportPerformer;->onGetCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public handleAudioFocusChange(I)V
    .locals 1
    .param p1, "focusChange"    # I

    .prologue
    .line 65
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator$1;->this$0:Landroid/support/v4/media/TransportMediator;

    iget-object v0, v0, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/TransportPerformer;->onAudioFocusChange(I)V

    .line 66
    return-void
.end method

.method public handleKey(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "key"    # Landroid/view/KeyEvent;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator$1;->this$0:Landroid/support/v4/media/TransportMediator;

    iget-object v0, v0, Landroid/support/v4/media/TransportMediator;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;

    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;)Z

    .line 62
    return-void
.end method

.method public playbackPositionUpdate(J)V
    .locals 1
    .param p1, "newPositionMs"    # J

    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/v4/media/TransportMediator$1;->this$0:Landroid/support/v4/media/TransportMediator;

    iget-object v0, v0, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/TransportPerformer;->onSeekTo(J)V

    .line 76
    return-void
.end method
