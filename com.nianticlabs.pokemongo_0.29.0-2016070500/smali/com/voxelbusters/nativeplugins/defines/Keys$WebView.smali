.class public Lcom/voxelbusters/nativeplugins/defines/Keys$WebView;
.super Ljava/lang/Object;
.source "Keys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxelbusters/nativeplugins/defines/Keys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebView"
.end annotation


# static fields
.field public static final ARGUMENTS:Ljava/lang/String; = "arguments"

.field public static final HOST:Ljava/lang/String; = "host"

.field public static final MESSAGE_DATA:Ljava/lang/String; = "message-data"

.field public static final TAG:Ljava/lang/String; = "tag"

.field public static final TYPE_CLOSE_BUTTON:Ljava/lang/String; = "CLOSE_OPTION"

.field public static final TYPE_NO_CONTROLS:Ljava/lang/String; = "NONE"

.field public static final TYPE_TOOLBAR:Ljava/lang/String; = "TOOLBAR_OPTION"

.field public static final URL_SCHEME:Ljava/lang/String; = "url-scheme"


# instance fields
.field final synthetic this$0:Lcom/voxelbusters/nativeplugins/defines/Keys;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/nativeplugins/defines/Keys;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/voxelbusters/nativeplugins/defines/Keys$WebView;->this$0:Lcom/voxelbusters/nativeplugins/defines/Keys;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
