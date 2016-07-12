.class Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"

# interfaces
.implements Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaSessionImplApi21"
.end annotation


# instance fields
.field private mMediaButtonIntent:Landroid/app/PendingIntent;

.field private final mSessionObj:Ljava/lang/Object;

.field private final mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 1919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1920
    invoke-static {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->createSession(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    .line 1921
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->getSessionToken(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 1922
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "mediaSession"    # Ljava/lang/Object;

    .prologue
    .line 1924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1925
    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->verifySession(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    .line 1926
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->getSessionToken(Ljava/lang/Object;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 1927
    return-void
.end method


# virtual methods
.method public getMediaSession()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2029
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    return-object v0
.end method

.method public getRemoteControlClient()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2034
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .prologue
    .line 1972
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 1957
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->isActive(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 1967
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->release(Ljava/lang/Object;)V

    .line 1968
    return-void
.end method

.method public sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1962
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->sendSessionEvent(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1963
    return-void
.end method

.method public setActive(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 1952
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setActive(Ljava/lang/Object;Z)V

    .line 1953
    return-void
.end method

.method public setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Landroid/support/v4/media/session/MediaSessionCompat$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1931
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    iget-object v1, p1, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackObj:Ljava/lang/Object;

    invoke-static {v0, v1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setCallback(Ljava/lang/Object;Ljava/lang/Object;Landroid/os/Handler;)V

    .line 1932
    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2024
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setExtras(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 2025
    return-void
.end method

.method public setFlags(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 1936
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setFlags(Ljava/lang/Object;I)V

    .line 1937
    return-void
.end method

.method public setMediaButtonReceiver(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "mbr"    # Landroid/app/PendingIntent;

    .prologue
    .line 1992
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mMediaButtonIntent:Landroid/app/PendingIntent;

    .line 1993
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setMediaButtonReceiver(Ljava/lang/Object;Landroid/app/PendingIntent;)V

    .line 1994
    return-void
.end method

.method public setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 2
    .param p1, "metadata"    # Landroid/support/v4/media/MediaMetadataCompat;

    .prologue
    .line 1982
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getMediaMetadata()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setMetadata(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1983
    return-void
.end method

.method public setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V
    .locals 2
    .param p1, "state"    # Landroid/support/v4/media/session/PlaybackStateCompat;

    .prologue
    .line 1977
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackState()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setPlaybackState(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1978
    return-void
.end method

.method public setPlaybackToLocal(I)V
    .locals 1
    .param p1, "stream"    # I

    .prologue
    .line 1941
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setPlaybackToLocal(Ljava/lang/Object;I)V

    .line 1942
    return-void
.end method

.method public setPlaybackToRemote(Landroid/support/v4/media/VolumeProviderCompat;)V
    .locals 2
    .param p1, "volumeProvider"    # Landroid/support/v4/media/VolumeProviderCompat;

    .prologue
    .line 1946
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/media/VolumeProviderCompat;->getVolumeProvider()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setPlaybackToRemote(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1948
    return-void
.end method

.method public setQueue(Ljava/util/List;)V
    .locals 4
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
    .line 1998
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;>;"
    const/4 v2, 0x0

    .line 1999
    .local v2, "queueObjs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 2000
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "queueObjs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2001
    .restart local v2    # "queueObjs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    .line 2002
    .local v1, "item":Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;
    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getQueueItem()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2005
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;
    :cond_0
    iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-static {v3, v2}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setQueue(Ljava/lang/Object;Ljava/util/List;)V

    .line 2006
    return-void
.end method

.method public setQueueTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 2010
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setQueueTitle(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 2011
    return-void
.end method

.method public setRatingType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 2015
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-ge v0, v1, :cond_0

    .line 2020
    :goto_0
    return-void

    .line 2018
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi22;->setRatingType(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public setSessionActivity(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 1987
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setSessionActivity(Ljava/lang/Object;Landroid/app/PendingIntent;)V

    .line 1988
    return-void
.end method
