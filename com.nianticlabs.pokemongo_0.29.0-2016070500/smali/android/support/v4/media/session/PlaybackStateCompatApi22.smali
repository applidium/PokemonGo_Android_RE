.class Landroid/support/v4/media/session/PlaybackStateCompatApi22;
.super Ljava/lang/Object;
.source "PlaybackStateCompatApi22.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExtras(Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 1
    .param p0, "stateObj"    # Ljava/lang/Object;

    .prologue
    .line 27
    check-cast p0, Landroid/media/session/PlaybackState;

    .end local p0    # "stateObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(IJJFJLjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)Ljava/lang/Object;
    .locals 11
    .param p0, "state"    # I
    .param p1, "position"    # J
    .param p3, "bufferedPosition"    # J
    .param p5, "speed"    # F
    .param p6, "actions"    # J
    .param p8, "errorMessage"    # Ljava/lang/CharSequence;
    .param p9, "updateTime"    # J
    .param p12, "activeItemId"    # J
    .param p14, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJFJ",
            "Ljava/lang/CharSequence;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;J",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 34
    .local p11, "customActions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    new-instance v2, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v2}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    .local v2, "stateObj":Landroid/media/session/PlaybackState$Builder;
    move v3, p0

    move-wide v4, p1

    move/from16 v6, p5

    move-wide/from16 v7, p9

    .line 35
    invoke-virtual/range {v2 .. v8}, Landroid/media/session/PlaybackState$Builder;->setState(IJFJ)Landroid/media/session/PlaybackState$Builder;

    .line 36
    invoke-virtual {v2, p3, p4}, Landroid/media/session/PlaybackState$Builder;->setBufferedPosition(J)Landroid/media/session/PlaybackState$Builder;

    .line 37
    move-wide/from16 v0, p6

    invoke-virtual {v2, v0, v1}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    .line 38
    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Landroid/media/session/PlaybackState$Builder;->setErrorMessage(Ljava/lang/CharSequence;)Landroid/media/session/PlaybackState$Builder;

    .line 39
    invoke-interface/range {p11 .. p11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 40
    .local v9, "customAction":Ljava/lang/Object;
    check-cast v9, Landroid/media/session/PlaybackState$CustomAction;

    .end local v9    # "customAction":Ljava/lang/Object;
    invoke-virtual {v2, v9}, Landroid/media/session/PlaybackState$Builder;->addCustomAction(Landroid/media/session/PlaybackState$CustomAction;)Landroid/media/session/PlaybackState$Builder;

    goto :goto_0

    .line 42
    :cond_0
    move-wide/from16 v0, p12

    invoke-virtual {v2, v0, v1}, Landroid/media/session/PlaybackState$Builder;->setActiveQueueItemId(J)Landroid/media/session/PlaybackState$Builder;

    .line 43
    move-object/from16 v0, p14

    invoke-virtual {v2, v0}, Landroid/media/session/PlaybackState$Builder;->setExtras(Landroid/os/Bundle;)Landroid/media/session/PlaybackState$Builder;

    .line 44
    invoke-virtual {v2}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v3

    return-object v3
.end method
