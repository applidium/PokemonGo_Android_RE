.class Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;
.super Ljava/lang/Object;
.source "MediaControllerCompat.java"

# interfaces
.implements Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StubApi21"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;


# direct methods
.method private constructor <init>(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/media/session/MediaControllerCompat$Callback;Landroid/support/v4/media/session/MediaControllerCompat$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/media/session/MediaControllerCompat$Callback;
    .param p2, "x1"    # Landroid/support/v4/media/session/MediaControllerCompat$1;

    .prologue
    .line 438
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Ljava/lang/Object;)V
    .locals 2
    .param p1, "metadataObj"    # Ljava/lang/Object;

    .prologue
    .line 457
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    invoke-static {p1}, Landroid/support/v4/media/MediaMetadataCompat;->fromMediaMetadata(Ljava/lang/Object;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 459
    return-void
.end method

.method public onPlaybackStateChanged(Ljava/lang/Object;)V
    .locals 2
    .param p1, "stateObj"    # Ljava/lang/Object;

    .prologue
    .line 451
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->fromPlaybackState(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 453
    return-void
.end method

.method public onSessionDestroyed()V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onSessionDestroyed()V

    .line 442
    return-void
.end method

.method public onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 446
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$Callback$StubApi21;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 447
    return-void
.end method
