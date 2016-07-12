.class Landroid/support/v4/media/session/MediaSessionCompatApi18$OnPlaybackPositionUpdateListener;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi18.java"

# interfaces
.implements Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompatApi18;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OnPlaybackPositionUpdateListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;"
    }
.end annotation


# instance fields
.field protected final mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Landroid/support/v4/media/session/MediaSessionCompatApi18$OnPlaybackPositionUpdateListener;, "Landroid/support/v4/media/session/MediaSessionCompatApi18$OnPlaybackPositionUpdateListener<TT;>;"
    .local p1, "callback":Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompatApi18$OnPlaybackPositionUpdateListener;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;

    .line 86
    return-void
.end method


# virtual methods
.method public onPlaybackPositionUpdate(J)V
    .locals 1
    .param p1, "newPositionMs"    # J

    .prologue
    .line 90
    .local p0, "this":Landroid/support/v4/media/session/MediaSessionCompatApi18$OnPlaybackPositionUpdateListener;, "Landroid/support/v4/media/session/MediaSessionCompatApi18$OnPlaybackPositionUpdateListener<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompatApi18$OnPlaybackPositionUpdateListener;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;->onSeekTo(J)V

    .line 91
    return-void
.end method
