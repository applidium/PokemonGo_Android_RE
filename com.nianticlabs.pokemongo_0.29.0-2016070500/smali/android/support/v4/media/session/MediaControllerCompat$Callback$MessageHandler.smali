.class Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;
.super Landroid/os/Handler;
.source "MediaControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# static fields
.field private static final MSG_DESTROYED:I = 0x8

.field private static final MSG_EVENT:I = 0x1

.field private static final MSG_UPDATE_EXTRAS:I = 0x7

.field private static final MSG_UPDATE_METADATA:I = 0x3

.field private static final MSG_UPDATE_PLAYBACK_STATE:I = 0x2

.field private static final MSG_UPDATE_QUEUE:I = 0x5

.field private static final MSG_UPDATE_QUEUE_TITLE:I = 0x6

.field private static final MSG_UPDATE_VOLUME:I = 0x4


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaControllerCompat$Callback;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 520
    iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    .line 521
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 522
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 526
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    # getter for: Landroid/support/v4/media/session/MediaControllerCompat$Callback;->mRegistered:Z
    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->access$300(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    :goto_0
    return-void

    .line 529
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 531
    :pswitch_0
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 534
    :pswitch_1
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/media/session/PlaybackStateCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    goto :goto_0

    .line 537
    :pswitch_2
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/media/MediaMetadataCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V

    goto :goto_0

    .line 540
    :pswitch_3
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onQueueChanged(Ljava/util/List;)V

    goto :goto_0

    .line 543
    :pswitch_4
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onQueueTitleChanged(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 546
    :pswitch_5
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onExtrasChanged(Landroid/os/Bundle;)V

    goto :goto_0

    .line 549
    :pswitch_6
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    invoke-virtual {v1, v0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onAudioInfoChanged(Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;)V

    goto :goto_0

    .line 552
    :pswitch_7
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onSessionDestroyed()V

    goto :goto_0

    .line 529
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public post(ILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    .line 558
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$Callback$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 559
    return-void
.end method
