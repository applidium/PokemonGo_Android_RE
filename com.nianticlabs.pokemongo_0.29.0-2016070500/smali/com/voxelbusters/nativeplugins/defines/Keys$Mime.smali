.class public Lcom/voxelbusters/nativeplugins/defines/Keys$Mime;
.super Ljava/lang/Object;
.source "Keys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxelbusters/nativeplugins/defines/Keys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Mime"
.end annotation


# static fields
.field public static final EMAIL:Ljava/lang/String; = "message/rfc822"

.field public static final HTML_TEXT:Ljava/lang/String; = "text/html"

.field public static final IMAGE_ALL:Ljava/lang/String; = "image/*"

.field public static final PLAIN_TEXT:Ljava/lang/String; = "text/plain"

.field public static final VIDEO_ALL:Ljava/lang/String; = "video/*"


# instance fields
.field final synthetic this$0:Lcom/voxelbusters/nativeplugins/defines/Keys;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/nativeplugins/defines/Keys;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/voxelbusters/nativeplugins/defines/Keys$Mime;->this$0:Lcom/voxelbusters/nativeplugins/defines/Keys;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
