.class public Lcom/voxelbusters/nativeplugins/defines/Keys$MediaLibrary;
.super Ljava/lang/Object;
.source "Keys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxelbusters/nativeplugins/defines/Keys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaLibrary"
.end annotation


# static fields
.field public static final CANCEL:Ljava/lang/String; = "Cancel"

.field public static final CHOOSE_FROM_GALLERY:Ljava/lang/String; = "Choose from gallery"

.field public static final EMBEDDED_PLAYER_SCHEME:Ljava/lang/String; = "embeddedplayer"

.field public static final FINISH_REASON:Ljava/lang/String; = "finish-reason"

.field public static final IMAGE_PATH:Ljava/lang/String; = "image-path"

.field public static final OPEN_CAMERA:Ljava/lang/String; = "Open camera"

.field public static final PICK_IMAGE_CANCELLED:Ljava/lang/String; = "pick-image-cancelled"

.field public static final PICK_IMAGE_FAILED:Ljava/lang/String; = "pick-image-failed"

.field public static final PICK_IMAGE_SELECTED:Ljava/lang/String; = "pick-image-selected"

.field public static final PICK_VIDEO_CANCELLED:Ljava/lang/String; = "pick-video-cancelled"

.field public static final PICK_VIDEO_FAILED:Ljava/lang/String; = "pick-video-failed"

.field public static final PICK_VIDEO_SELECTED:Ljava/lang/String; = "pick-video-selected"

.field public static final PLAY_VIDEO_ENDED:Ljava/lang/String; = "play-video-ended"

.field public static final PLAY_VIDEO_ERROR:Ljava/lang/String; = "play-video-error"

.field public static final SELECT_MEDIA:Ljava/lang/String; = "Select media"

.field public static final SELECT_SOURCE:Ljava/lang/String; = "Select source"

.field public static final USER_EXITED:Ljava/lang/String; = "user-exited"

.field public static final YOUTUBE_VIDEO_ID:Ljava/lang/String; = "youtube-video-id"


# instance fields
.field final synthetic this$0:Lcom/voxelbusters/nativeplugins/defines/Keys;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/nativeplugins/defines/Keys;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/voxelbusters/nativeplugins/defines/Keys$MediaLibrary;->this$0:Lcom/voxelbusters/nativeplugins/defines/Keys;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
