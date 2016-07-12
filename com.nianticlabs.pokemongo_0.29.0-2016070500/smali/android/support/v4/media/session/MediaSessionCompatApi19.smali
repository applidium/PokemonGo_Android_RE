.class public Landroid/support/v4/media/session/MediaSessionCompatApi19;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi19.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompatApi19$OnMetadataUpdateListener;
    }
.end annotation


# static fields
.field private static final ACTION_SET_RATING:J = 0x80L

.field private static final METADATA_KEY_RATING:Ljava/lang/String; = "android.media.metadata.RATING"

.field private static final METADATA_KEY_USER_RATING:Ljava/lang/String; = "android.media.metadata.USER_RATING"

.field private static final METADATA_KEY_YEAR:Ljava/lang/String; = "android.media.metadata.YEAR"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method static addNewMetadata(Landroid/os/Bundle;Landroid/media/RemoteControlClient$MetadataEditor;)V
    .locals 4
    .param p0, "metadata"    # Landroid/os/Bundle;
    .param p1, "editor"    # Landroid/media/RemoteControlClient$MetadataEditor;

    .prologue
    .line 69
    if-nez p0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    const-string v0, "android.media.metadata.YEAR"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    const/16 v0, 0x8

    const-string v1, "android.media.metadata.YEAR"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 76
    :cond_2
    const-string v0, "android.media.metadata.RATING"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    const/16 v0, 0x65

    const-string v1, "android.media.metadata.RATING"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putObject(ILjava/lang/Object;)Landroid/media/MediaMetadataEditor;

    .line 80
    :cond_3
    const-string v0, "android.media.metadata.USER_RATING"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const v0, 0x10000001

    const-string v1, "android.media.metadata.USER_RATING"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putObject(ILjava/lang/Object;)Landroid/media/MediaMetadataEditor;

    goto :goto_0
.end method

.method public static createMetadataUpdateListener(Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;)Ljava/lang/Object;
    .locals 1
    .param p0, "callback"    # Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;

    .prologue
    .line 40
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompatApi19$OnMetadataUpdateListener;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompatApi19$OnMetadataUpdateListener;-><init>(Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;)V

    return-object v0
.end method

.method static getRccTransportControlFlagsFromActions(J)I
    .locals 6
    .param p0, "actions"    # J

    .prologue
    .line 60
    invoke-static {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->getRccTransportControlFlagsFromActions(J)I

    move-result v0

    .line 62
    .local v0, "transportControlFlags":I
    const-wide/16 v2, 0x80

    and-long/2addr v2, p0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 63
    or-int/lit16 v0, v0, 0x200

    .line 65
    :cond_0
    return v0
.end method

.method public static setMetadata(Ljava/lang/Object;Landroid/os/Bundle;J)V
    .locals 6
    .param p0, "rccObj"    # Ljava/lang/Object;
    .param p1, "metadata"    # Landroid/os/Bundle;
    .param p2, "actions"    # J

    .prologue
    .line 44
    check-cast p0, Landroid/media/RemoteControlClient;

    .end local p0    # "rccObj":Ljava/lang/Object;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    .line 46
    .local v0, "editor":Landroid/media/RemoteControlClient$MetadataEditor;
    invoke-static {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->buildOldMetadata(Landroid/os/Bundle;Landroid/media/RemoteControlClient$MetadataEditor;)V

    .line 47
    invoke-static {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompatApi19;->addNewMetadata(Landroid/os/Bundle;Landroid/media/RemoteControlClient$MetadataEditor;)V

    .line 48
    const-wide/16 v2, 0x80

    and-long/2addr v2, p2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 49
    const v1, 0x10000001

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->addEditableKey(I)V

    .line 51
    :cond_0
    invoke-virtual {v0}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    .line 52
    return-void
.end method

.method public static setOnMetadataUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "rccObj"    # Ljava/lang/Object;
    .param p1, "onMetadataUpdateObj"    # Ljava/lang/Object;

    .prologue
    .line 55
    check-cast p0, Landroid/media/RemoteControlClient;

    .end local p0    # "rccObj":Ljava/lang/Object;
    check-cast p1, Landroid/media/RemoteControlClient$OnMetadataUpdateListener;

    .end local p1    # "onMetadataUpdateObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/RemoteControlClient;->setMetadataUpdateListener(Landroid/media/RemoteControlClient$OnMetadataUpdateListener;)V

    .line 57
    return-void
.end method

.method public static setTransportControlFlags(Ljava/lang/Object;J)V
    .locals 1
    .param p0, "rccObj"    # Ljava/lang/Object;
    .param p1, "actions"    # J

    .prologue
    .line 35
    check-cast p0, Landroid/media/RemoteControlClient;

    .end local p0    # "rccObj":Ljava/lang/Object;
    invoke-static {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi19;->getRccTransportControlFlagsFromActions(J)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    .line 37
    return-void
.end method
