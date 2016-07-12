.class public Lcom/voxelbusters/nativeplugins/defines/UnityDefines$MediaLibrary;
.super Ljava/lang/Object;
.source "UnityDefines.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxelbusters/nativeplugins/defines/UnityDefines;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaLibrary"
.end annotation


# static fields
.field public static final PICK_IMAGE_FINISHED:Ljava/lang/String; = "PickImageFinished"

.field public static final PLAY_VIDEO_FINISHED:Ljava/lang/String; = "PlayVideoFinished"

.field public static final PLAY_VIDEO_FROM_GALLERY_FINISHED:Ljava/lang/String; = "PickVideoFinished"

.field public static final SAVE_IMAGE_TO_GALLERY_FINISHED:Ljava/lang/String; = "SaveImageToGalleryFinished"


# instance fields
.field final synthetic this$0:Lcom/voxelbusters/nativeplugins/defines/UnityDefines;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/nativeplugins/defines/UnityDefines;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/voxelbusters/nativeplugins/defines/UnityDefines$MediaLibrary;->this$0:Lcom/voxelbusters/nativeplugins/defines/UnityDefines;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
