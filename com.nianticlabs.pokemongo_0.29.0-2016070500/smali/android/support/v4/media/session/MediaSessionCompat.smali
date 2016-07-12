.class public Landroid/support/v4/media/session/MediaSessionCompat;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompat$1;,
        Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;,
        Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;,
        Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;,
        Landroid/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;,
        Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;,
        Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;,
        Landroid/support/v4/media/session/MediaSessionCompat$Token;,
        Landroid/support/v4/media/session/MediaSessionCompat$Callback;,
        Landroid/support/v4/media/session/MediaSessionCompat$SessionFlags;
    }
.end annotation


# static fields
.field public static final FLAG_HANDLES_MEDIA_BUTTONS:I = 0x1

.field public static final FLAG_HANDLES_TRANSPORT_CONTROLS:I = 0x2


# instance fields
.field private final mActiveListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mController:Landroid/support/v4/media/session/MediaControllerCompat;

.field private final mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "impl"    # Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mActiveListeners:Ljava/util/ArrayList;

    .line 144
    iput-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    .line 145
    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-direct {v0, p1, p0}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "mediaButtonEventReceiver"    # Landroid/content/ComponentName;
    .param p4, "mbrIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mActiveListeners:Ljava/util/ArrayList;

    .line 119
    if-nez p1, :cond_0

    .line 120
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "context must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "tag must not be null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_1
    if-eqz p3, :cond_2

    if-nez p4, :cond_2

    .line 128
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, "mediaButtonIntent":Landroid/content/Intent;
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 131
    invoke-static {p1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p4

    .line 134
    .end local v0    # "mediaButtonIntent":Landroid/content/Intent;
    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_3

    .line 135
    new-instance v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;

    invoke-direct {v1, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    .line 136
    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v1, p4}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V

    .line 140
    :goto_0
    new-instance v1, Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-direct {v1, p1, p0}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat;)V

    iput-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 141
    return-void

    .line 138
    :cond_3
    new-instance v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V

    iput-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    goto :goto_0
.end method

.method public static obtain(Landroid/content/Context;Ljava/lang/Object;)Landroid/support/v4/media/session/MediaSessionCompat;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mediaSession"    # Ljava/lang/Object;

    .prologue
    .line 463
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat;

    new-instance v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;

    invoke-direct {v1, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;)V

    return-object v0
.end method


# virtual methods
.method public addOnActiveChangeListener(Landroid/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;

    .prologue
    .line 436
    if-nez p1, :cond_0

    .line 437
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mActiveListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 440
    return-void
.end method

.method public getController()Landroid/support/v4/media/session/MediaControllerCompat;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mController:Landroid/support/v4/media/session/MediaControllerCompat;

    return-object v0
.end method

.method public getMediaSession()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->getMediaSession()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteControlClient()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->getRemoteControlClient()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->isActive()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->release()V

    .line 296
    return-void
.end method

.method public removeOnActiveChangeListener(Landroid/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;

    .prologue
    .line 449
    if-nez p1, :cond_0

    .line 450
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mActiveListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 453
    return-void
.end method

.method public sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 283
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 287
    return-void
.end method

.method public setActive(Z)V
    .locals 3
    .param p1, "active"    # Z

    .prologue
    .line 259
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v2, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setActive(Z)V

    .line 260
    iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mActiveListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;

    .line 261
    .local v1, "listener":Landroid/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;
    invoke-interface {v1}, Landroid/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;->onActiveChanged()V

    goto :goto_0

    .line 263
    .end local v1    # "listener":Landroid/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;
    :cond_0
    return-void
.end method

.method public setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Handler;)V

    .line 157
    return-void
.end method

.method public setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Handler;)V
    .locals 1
    .param p1, "callback"    # Landroid/support/v4/media/session/MediaSessionCompat$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 168
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    if-eqz p2, :cond_0

    .end local p2    # "handler":Landroid/os/Handler;
    :goto_0
    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Handler;)V

    .line 169
    return-void

    .line 168
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_0
    new-instance p2, Landroid/os/Handler;

    .end local p2    # "handler":Landroid/os/Handler;
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    goto :goto_0
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 397
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setExtras(Landroid/os/Bundle;)V

    .line 398
    return-void
.end method

.method public setFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 206
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setFlags(I)V

    .line 207
    return-void
.end method

.method public setMediaButtonReceiver(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "mbr"    # Landroid/app/PendingIntent;

    .prologue
    .line 197
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V

    .line 198
    return-void
.end method

.method public setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 1
    .param p1, "metadata"    # Landroid/support/v4/media/MediaMetadataCompat;

    .prologue
    .line 342
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 343
    return-void
.end method

.method public setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 1
    .param p1, "state"    # Landroid/support/v4/media/session/PlaybackStateCompat;

    .prologue
    .line 332
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 333
    return-void
.end method

.method public setPlaybackToLocal(I)V
    .locals 1
    .param p1, "stream"    # I

    .prologue
    .line 220
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setPlaybackToLocal(I)V

    .line 221
    return-void
.end method

.method public setPlaybackToRemote(Landroid/support/v4/media/VolumeProviderCompat;)V
    .locals 2
    .param p1, "volumeProvider"    # Landroid/support/v4/media/VolumeProviderCompat;

    .prologue
    .line 239
    if-nez p1, :cond_0

    .line 240
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "volumeProvider may not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setPlaybackToRemote(Landroid/support/v4/media/VolumeProviderCompat;)V

    .line 243
    return-void
.end method

.method public setQueue(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 357
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;>;"
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setQueue(Ljava/util/List;)V

    .line 358
    return-void
.end method

.method public setQueueTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 368
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setQueueTitle(Ljava/lang/CharSequence;)V

    .line 369
    return-void
.end method

.method public setRatingType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 385
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setRatingType(I)V

    .line 386
    return-void
.end method

.method public setSessionActivity(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 180
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setSessionActivity(Landroid/app/PendingIntent;)V

    .line 181
    return-void
.end method
