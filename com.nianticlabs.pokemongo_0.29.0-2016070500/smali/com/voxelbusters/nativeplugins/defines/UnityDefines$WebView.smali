.class public Lcom/voxelbusters/nativeplugins/defines/UnityDefines$WebView;
.super Ljava/lang/Object;
.source "UnityDefines.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxelbusters/nativeplugins/defines/UnityDefines;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebView"
.end annotation


# static fields
.field public static final WEB_VIEW_DID_DESTROY:Ljava/lang/String; = "WebViewDidDestroy"

.field public static final WEB_VIEW_DID_FAIL_LOAD_WITH_ERROR:Ljava/lang/String; = "WebViewDidFailLoadWithError"

.field public static final WEB_VIEW_DID_FINISH_EVALUATING_JS:Ljava/lang/String; = "WebViewDidFinishEvaluatingJS"

.field public static final WEB_VIEW_DID_FINISH_LOAD:Ljava/lang/String; = "WebViewDidFinishLoad"

.field public static final WEB_VIEW_DID_HIDE:Ljava/lang/String; = "WebViewDidHide"

.field public static final WEB_VIEW_DID_RECEIVE_MESSAGE:Ljava/lang/String; = "WebViewDidReceiveMessage"

.field public static final WEB_VIEW_DID_SHOW:Ljava/lang/String; = "WebViewDidShow"

.field public static final WEB_VIEW_DID_START_LOAD:Ljava/lang/String; = "WebViewDidStartLoad"


# instance fields
.field final synthetic this$0:Lcom/voxelbusters/nativeplugins/defines/UnityDefines;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/nativeplugins/defines/UnityDefines;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/voxelbusters/nativeplugins/defines/UnityDefines$WebView;->this$0:Lcom/voxelbusters/nativeplugins/defines/UnityDefines;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
