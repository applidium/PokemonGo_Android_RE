.class Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;
.super Landroid/media/session/MediaSession$Callback;
.source "MediaSessionCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CallbackProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;",
        ">",
        "Landroid/media/session/MediaSession$Callback;"
    }
.end annotation


# instance fields
.field protected final mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "this":Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;, "Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy<TT;>;"
    .local p1, "callback":Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;, "TT;"
    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    .line 157
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    .line 158
    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    .prologue
    .line 162
    .local p0, "this":Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;, "Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 163
    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 233
    .local p0, "this":Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;, "Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 234
    return-void
.end method

.method public onFastForward()V
    .locals 1

    .prologue
    .line 208
    .local p0, "this":Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;, "Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;->onFastForward()V

    .line 209
    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "mediaButtonIntent"    # Landroid/content/Intent;

    .prologue
    .line 167
    .local p0, "this":Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;, "Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/media/session/MediaSession$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 193
    .local p0, "this":Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;, "Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;->onPause()V

    .line 194
    return-void
.end method

.method public onPlay()V
    .locals 1

    .prologue
    .line 173
    .local p0, "this":Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;, "Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;->onPlay()V

    .line 174
    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 178
    .local p0, "this":Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;, "Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 179
    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "search"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 183
    .local p0, "this":Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;, "Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 184
    return-void
.end method

.method public onRewind()V
    .locals 1

    .prologue
    .line 213
    .local p0, "this":Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;, "Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;->onRewind()V

    .line 214
    return-void
.end method

.method public onSeekTo(J)V
    .locals 1
    .param p1, "pos"    # J

    .prologue
    .line 223
    .local p0, "this":Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;, "Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;->onSeekTo(J)V

    .line 224
    return-void
.end method

.method public onSetRating(Landroid/media/Rating;)V
    .locals 1
    .param p1, "rating"    # Landroid/media/Rating;

    .prologue
    .line 228
    .local p0, "this":Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;, "Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;->onSetRating(Ljava/lang/Object;)V

    .line 229
    return-void
.end method

.method public onSkipToNext()V
    .locals 1

    .prologue
    .line 198
    .local p0, "this":Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;, "Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;->onSkipToNext()V

    .line 199
    return-void
.end method

.method public onSkipToPrevious()V
    .locals 1

    .prologue
    .line 203
    .local p0, "this":Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;, "Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;->onSkipToPrevious()V

    .line 204
    return-void
.end method

.method public onSkipToQueueItem(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 188
    .local p0, "this":Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;, "Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;->onSkipToQueueItem(J)V

    .line 189
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 218
    .local p0, "this":Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;, "Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy<TT;>;"
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompatApi21$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    invoke-interface {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;->onStop()V

    .line 219
    return-void
.end method
