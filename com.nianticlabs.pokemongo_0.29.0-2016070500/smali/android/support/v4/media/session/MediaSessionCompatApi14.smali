.class public Landroid/support/v4/media/session/MediaSessionCompatApi14;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi14.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompatApi14$Callback;
    }
.end annotation


# static fields
.field private static final ACTION_FAST_FORWARD:J = 0x40L

.field private static final ACTION_PAUSE:J = 0x2L

.field private static final ACTION_PLAY:J = 0x4L

.field private static final ACTION_PLAY_PAUSE:J = 0x200L

.field private static final ACTION_REWIND:J = 0x8L

.field private static final ACTION_SKIP_TO_NEXT:J = 0x20L

.field private static final ACTION_SKIP_TO_PREVIOUS:J = 0x10L

.field private static final ACTION_STOP:J = 0x1L

.field private static final METADATA_KEY_ALBUM:Ljava/lang/String; = "android.media.metadata.ALBUM"

.field private static final METADATA_KEY_ALBUM_ART:Ljava/lang/String; = "android.media.metadata.ALBUM_ART"

.field private static final METADATA_KEY_ALBUM_ARTIST:Ljava/lang/String; = "android.media.metadata.ALBUM_ARTIST"

.field private static final METADATA_KEY_ART:Ljava/lang/String; = "android.media.metadata.ART"

.field private static final METADATA_KEY_ARTIST:Ljava/lang/String; = "android.media.metadata.ARTIST"

.field private static final METADATA_KEY_AUTHOR:Ljava/lang/String; = "android.media.metadata.AUTHOR"

.field private static final METADATA_KEY_COMPILATION:Ljava/lang/String; = "android.media.metadata.COMPILATION"

.field private static final METADATA_KEY_COMPOSER:Ljava/lang/String; = "android.media.metadata.COMPOSER"

.field private static final METADATA_KEY_DATE:Ljava/lang/String; = "android.media.metadata.DATE"

.field private static final METADATA_KEY_DISC_NUMBER:Ljava/lang/String; = "android.media.metadata.DISC_NUMBER"

.field private static final METADATA_KEY_DURATION:Ljava/lang/String; = "android.media.metadata.DURATION"

.field private static final METADATA_KEY_GENRE:Ljava/lang/String; = "android.media.metadata.GENRE"

.field private static final METADATA_KEY_TITLE:Ljava/lang/String; = "android.media.metadata.TITLE"

.field private static final METADATA_KEY_TRACK_NUMBER:Ljava/lang/String; = "android.media.metadata.TRACK_NUMBER"

.field private static final METADATA_KEY_WRITER:Ljava/lang/String; = "android.media.metadata.WRITER"

.field static final RCC_PLAYSTATE_NONE:I = 0x0

.field static final STATE_BUFFERING:I = 0x6

.field static final STATE_CONNECTING:I = 0x8

.field static final STATE_ERROR:I = 0x7

.field static final STATE_FAST_FORWARDING:I = 0x4

.field static final STATE_NONE:I = 0x0

.field static final STATE_PAUSED:I = 0x2

.field static final STATE_PLAYING:I = 0x3

.field static final STATE_REWINDING:I = 0x5

.field static final STATE_SKIPPING_TO_NEXT:I = 0xa

.field static final STATE_SKIPPING_TO_PREVIOUS:I = 0x9

.field static final STATE_SKIPPING_TO_QUEUE_ITEM:I = 0xb

.field static final STATE_STOPPED:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    return-void
.end method

.method static buildOldMetadata(Landroid/os/Bundle;Landroid/media/RemoteControlClient$MetadataEditor;)V
    .locals 4
    .param p0, "metadata"    # Landroid/os/Bundle;
    .param p1, "editor"    # Landroid/media/RemoteControlClient$MetadataEditor;

    .prologue
    const/16 v2, 0x64

    .line 162
    if-nez p0, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    const-string v1, "android.media.metadata.ART"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 166
    const-string v1, "android.media.metadata.ART"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 167
    .local v0, "art":Landroid/graphics/Bitmap;
    invoke-virtual {p1, v2, v0}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 173
    .end local v0    # "art":Landroid/graphics/Bitmap;
    :cond_2
    :goto_1
    const-string v1, "android.media.metadata.ALBUM"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 174
    const/4 v1, 0x1

    const-string v2, "android.media.metadata.ALBUM"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 177
    :cond_3
    const-string v1, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 178
    const/16 v1, 0xd

    const-string v2, "android.media.metadata.ALBUM_ARTIST"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 181
    :cond_4
    const-string v1, "android.media.metadata.ARTIST"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 182
    const/4 v1, 0x2

    const-string v2, "android.media.metadata.ARTIST"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 185
    :cond_5
    const-string v1, "android.media.metadata.AUTHOR"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 186
    const/4 v1, 0x3

    const-string v2, "android.media.metadata.AUTHOR"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 189
    :cond_6
    const-string v1, "android.media.metadata.COMPILATION"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 190
    const/16 v1, 0xf

    const-string v2, "android.media.metadata.COMPILATION"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 193
    :cond_7
    const-string v1, "android.media.metadata.COMPOSER"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 194
    const/4 v1, 0x4

    const-string v2, "android.media.metadata.COMPOSER"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 197
    :cond_8
    const-string v1, "android.media.metadata.DATE"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 198
    const/4 v1, 0x5

    const-string v2, "android.media.metadata.DATE"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 201
    :cond_9
    const-string v1, "android.media.metadata.DISC_NUMBER"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 202
    const/16 v1, 0xe

    const-string v2, "android.media.metadata.DISC_NUMBER"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 205
    :cond_a
    const-string v1, "android.media.metadata.DURATION"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 206
    const/16 v1, 0x9

    const-string v2, "android.media.metadata.DURATION"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 209
    :cond_b
    const-string v1, "android.media.metadata.GENRE"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 210
    const/4 v1, 0x6

    const-string v2, "android.media.metadata.GENRE"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 213
    :cond_c
    const-string v1, "android.media.metadata.TITLE"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 214
    const/4 v1, 0x7

    const-string v2, "android.media.metadata.TITLE"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 217
    :cond_d
    const-string v1, "android.media.metadata.TRACK_NUMBER"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 218
    const/4 v1, 0x0

    const-string v2, "android.media.metadata.TRACK_NUMBER"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 221
    :cond_e
    const-string v1, "android.media.metadata.WRITER"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    const/16 v1, 0xb

    const-string v2, "android.media.metadata.WRITER"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    goto/16 :goto_0

    .line 168
    :cond_f
    const-string v1, "android.media.metadata.ALBUM_ART"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 170
    const-string v1, "android.media.metadata.ALBUM_ART"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 171
    .restart local v0    # "art":Landroid/graphics/Bitmap;
    invoke-virtual {p1, v2, v0}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;

    goto/16 :goto_1
.end method

.method public static createRemoteControlClient(Landroid/app/PendingIntent;)Ljava/lang/Object;
    .locals 1
    .param p0, "mbIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 74
    new-instance v0, Landroid/media/RemoteControlClient;

    invoke-direct {v0, p0}, Landroid/media/RemoteControlClient;-><init>(Landroid/app/PendingIntent;)V

    return-object v0
.end method

.method static getRccStateFromState(I)I
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 104
    packed-switch p0, :pswitch_data_0

    .line 128
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 107
    :pswitch_0
    const/16 v0, 0x8

    goto :goto_0

    .line 109
    :pswitch_1
    const/16 v0, 0x9

    goto :goto_0

    .line 111
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 113
    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    .line 115
    :pswitch_4
    const/4 v0, 0x2

    goto :goto_0

    .line 117
    :pswitch_5
    const/4 v0, 0x3

    goto :goto_0

    .line 119
    :pswitch_6
    const/4 v0, 0x5

    goto :goto_0

    .line 121
    :pswitch_7
    const/4 v0, 0x7

    goto :goto_0

    .line 124
    :pswitch_8
    const/4 v0, 0x6

    goto :goto_0

    .line 126
    :pswitch_9
    const/4 v0, 0x1

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_9
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method static getRccTransportControlFlagsFromActions(J)I
    .locals 6
    .param p0, "actions"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 133
    const/4 v0, 0x0

    .line 134
    .local v0, "transportControlFlags":I
    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 135
    or-int/lit8 v0, v0, 0x20

    .line 137
    :cond_0
    const-wide/16 v2, 0x2

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 138
    or-int/lit8 v0, v0, 0x10

    .line 140
    :cond_1
    const-wide/16 v2, 0x4

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 141
    or-int/lit8 v0, v0, 0x4

    .line 143
    :cond_2
    const-wide/16 v2, 0x8

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 144
    or-int/lit8 v0, v0, 0x2

    .line 146
    :cond_3
    const-wide/16 v2, 0x10

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    .line 147
    or-int/lit8 v0, v0, 0x1

    .line 149
    :cond_4
    const-wide/16 v2, 0x20

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    .line 150
    or-int/lit16 v0, v0, 0x80

    .line 152
    :cond_5
    const-wide/16 v2, 0x40

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_6

    .line 153
    or-int/lit8 v0, v0, 0x40

    .line 155
    :cond_6
    const-wide/16 v2, 0x200

    and-long/2addr v2, p0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_7

    .line 156
    or-int/lit8 v0, v0, 0x8

    .line 158
    :cond_7
    return v0
.end method

.method public static registerRemoteControlClient(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rccObj"    # Ljava/lang/Object;

    .prologue
    .line 94
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 95
    .local v0, "am":Landroid/media/AudioManager;
    check-cast p1, Landroid/media/RemoteControlClient;

    .end local p1    # "rccObj":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 96
    return-void
.end method

.method public static setMetadata(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "rccObj"    # Ljava/lang/Object;
    .param p1, "metadata"    # Landroid/os/Bundle;

    .prologue
    .line 87
    check-cast p0, Landroid/media/RemoteControlClient;

    .end local p0    # "rccObj":Ljava/lang/Object;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    .line 89
    .local v0, "editor":Landroid/media/RemoteControlClient$MetadataEditor;
    invoke-static {p1, v0}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->buildOldMetadata(Landroid/os/Bundle;Landroid/media/RemoteControlClient$MetadataEditor;)V

    .line 90
    invoke-virtual {v0}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    .line 91
    return-void
.end method

.method public static setState(Ljava/lang/Object;I)V
    .locals 1
    .param p0, "rccObj"    # Ljava/lang/Object;
    .param p1, "state"    # I

    .prologue
    .line 78
    check-cast p0, Landroid/media/RemoteControlClient;

    .end local p0    # "rccObj":Ljava/lang/Object;
    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->getRccStateFromState(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    .line 79
    return-void
.end method

.method public static setTransportControlFlags(Ljava/lang/Object;J)V
    .locals 1
    .param p0, "rccObj"    # Ljava/lang/Object;
    .param p1, "actions"    # J

    .prologue
    .line 82
    check-cast p0, Landroid/media/RemoteControlClient;

    .end local p0    # "rccObj":Ljava/lang/Object;
    invoke-static {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->getRccTransportControlFlagsFromActions(J)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    .line 84
    return-void
.end method

.method public static unregisterRemoteControlClient(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rccObj"    # Ljava/lang/Object;

    .prologue
    .line 99
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 100
    .local v0, "am":Landroid/media/AudioManager;
    check-cast p1, Landroid/media/RemoteControlClient;

    .end local p1    # "rccObj":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 101
    return-void
.end method
