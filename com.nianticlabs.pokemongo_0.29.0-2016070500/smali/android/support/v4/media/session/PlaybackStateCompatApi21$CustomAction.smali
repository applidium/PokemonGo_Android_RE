.class final Landroid/support/v4/media/session/PlaybackStateCompatApi21$CustomAction;
.super Ljava/lang/Object;
.source "PlaybackStateCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/PlaybackStateCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CustomAction"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAction(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "customActionObj"    # Ljava/lang/Object;

    .prologue
    .line 81
    check-cast p0, Landroid/media/session/PlaybackState$CustomAction;

    .end local p0    # "customActionObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/PlaybackState$CustomAction;->getAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExtras(Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 1
    .param p0, "customActionObj"    # Ljava/lang/Object;

    .prologue
    .line 92
    check-cast p0, Landroid/media/session/PlaybackState$CustomAction;

    .end local p0    # "customActionObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/PlaybackState$CustomAction;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static getIcon(Ljava/lang/Object;)I
    .locals 1
    .param p0, "customActionObj"    # Ljava/lang/Object;

    .prologue
    .line 89
    check-cast p0, Landroid/media/session/PlaybackState$CustomAction;

    .end local p0    # "customActionObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/PlaybackState$CustomAction;->getIcon()I

    move-result v0

    return v0
.end method

.method public static getName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "customActionObj"    # Ljava/lang/Object;

    .prologue
    .line 85
    check-cast p0, Landroid/media/session/PlaybackState$CustomAction;

    .end local p0    # "customActionObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/session/PlaybackState$CustomAction;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/Bundle;)Ljava/lang/Object;
    .locals 2
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 97
    new-instance v0, Landroid/media/session/PlaybackState$CustomAction$Builder;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/session/PlaybackState$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 99
    .local v0, "customActionObj":Landroid/media/session/PlaybackState$CustomAction$Builder;
    invoke-virtual {v0, p3}, Landroid/media/session/PlaybackState$CustomAction$Builder;->setExtras(Landroid/os/Bundle;)Landroid/media/session/PlaybackState$CustomAction$Builder;

    .line 100
    invoke-virtual {v0}, Landroid/media/session/PlaybackState$CustomAction$Builder;->build()Landroid/media/session/PlaybackState$CustomAction;

    move-result-object v1

    return-object v1
.end method
