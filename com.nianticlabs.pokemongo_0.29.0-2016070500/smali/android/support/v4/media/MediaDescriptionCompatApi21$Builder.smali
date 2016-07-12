.class public Landroid/support/v4/media/MediaDescriptionCompatApi21$Builder;
.super Ljava/lang/Object;
.source "MediaDescriptionCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaDescriptionCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "builderObj"    # Ljava/lang/Object;

    .prologue
    .line 97
    check-cast p0, Landroid/media/MediaDescription$Builder;

    .end local p0    # "builderObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaDescription$Builder;->build()Landroid/media/MediaDescription;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    new-instance v0, Landroid/media/MediaDescription$Builder;

    invoke-direct {v0}, Landroid/media/MediaDescription$Builder;-><init>()V

    return-object v0
.end method

.method public static setDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "builderObj"    # Ljava/lang/Object;
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 81
    check-cast p0, Landroid/media/MediaDescription$Builder;

    .end local p0    # "builderObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaDescription$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    .line 82
    return-void
.end method

.method public static setExtras(Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "builderObj"    # Ljava/lang/Object;
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 93
    check-cast p0, Landroid/media/MediaDescription$Builder;

    .end local p0    # "builderObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaDescription$Builder;->setExtras(Landroid/os/Bundle;)Landroid/media/MediaDescription$Builder;

    .line 94
    return-void
.end method

.method public static setIconBitmap(Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "builderObj"    # Ljava/lang/Object;
    .param p1, "iconBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 85
    check-cast p0, Landroid/media/MediaDescription$Builder;

    .end local p0    # "builderObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaDescription$Builder;->setIconBitmap(Landroid/graphics/Bitmap;)Landroid/media/MediaDescription$Builder;

    .line 86
    return-void
.end method

.method public static setIconUri(Ljava/lang/Object;Landroid/net/Uri;)V
    .locals 0
    .param p0, "builderObj"    # Ljava/lang/Object;
    .param p1, "iconUri"    # Landroid/net/Uri;

    .prologue
    .line 89
    check-cast p0, Landroid/media/MediaDescription$Builder;

    .end local p0    # "builderObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaDescription$Builder;->setIconUri(Landroid/net/Uri;)Landroid/media/MediaDescription$Builder;

    .line 90
    return-void
.end method

.method public static setMediaId(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p0, "builderObj"    # Ljava/lang/Object;
    .param p1, "mediaId"    # Ljava/lang/String;

    .prologue
    .line 69
    check-cast p0, Landroid/media/MediaDescription$Builder;

    .end local p0    # "builderObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaDescription$Builder;->setMediaId(Ljava/lang/String;)Landroid/media/MediaDescription$Builder;

    .line 70
    return-void
.end method

.method public static setSubtitle(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "builderObj"    # Ljava/lang/Object;
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 77
    check-cast p0, Landroid/media/MediaDescription$Builder;

    .end local p0    # "builderObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaDescription$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    .line 78
    return-void
.end method

.method public static setTitle(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "builderObj"    # Ljava/lang/Object;
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 73
    check-cast p0, Landroid/media/MediaDescription$Builder;

    .end local p0    # "builderObj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/media/MediaDescription$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    .line 74
    return-void
.end method
