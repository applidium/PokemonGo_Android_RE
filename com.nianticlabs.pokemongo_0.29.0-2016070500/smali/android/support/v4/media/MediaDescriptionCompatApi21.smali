.class public Landroid/support/v4/media/MediaDescriptionCompatApi21;
.super Ljava/lang/Object;
.source "MediaDescriptionCompatApi21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaDescriptionCompatApi21$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static fromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 59
    sget-object v0, Landroid/media/MediaDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "descriptionObj"    # Ljava/lang/Object;

    .prologue
    .line 39
    check-cast p0, Landroid/media/MediaDescription;

    .end local p0    # "descriptionObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaDescription;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getExtras(Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 1
    .param p0, "descriptionObj"    # Ljava/lang/Object;

    .prologue
    .line 51
    check-cast p0, Landroid/media/MediaDescription;

    .end local p0    # "descriptionObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaDescription;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static getIconBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "descriptionObj"    # Ljava/lang/Object;

    .prologue
    .line 43
    check-cast p0, Landroid/media/MediaDescription;

    .end local p0    # "descriptionObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaDescription;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getIconUri(Ljava/lang/Object;)Landroid/net/Uri;
    .locals 1
    .param p0, "descriptionObj"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p0, Landroid/media/MediaDescription;

    .end local p0    # "descriptionObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaDescription;->getIconUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getMediaId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "descriptionObj"    # Ljava/lang/Object;

    .prologue
    .line 27
    check-cast p0, Landroid/media/MediaDescription;

    .end local p0    # "descriptionObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaDescription;->getMediaId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSubtitle(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "descriptionObj"    # Ljava/lang/Object;

    .prologue
    .line 35
    check-cast p0, Landroid/media/MediaDescription;

    .end local p0    # "descriptionObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaDescription;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getTitle(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "descriptionObj"    # Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p0, Landroid/media/MediaDescription;

    .end local p0    # "descriptionObj":Ljava/lang/Object;
    invoke-virtual {p0}, Landroid/media/MediaDescription;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static writeToParcel(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .locals 0
    .param p0, "descriptionObj"    # Ljava/lang/Object;
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 55
    check-cast p0, Landroid/media/MediaDescription;

    .end local p0    # "descriptionObj":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaDescription;->writeToParcel(Landroid/os/Parcel;I)V

    .line 56
    return-void
.end method
