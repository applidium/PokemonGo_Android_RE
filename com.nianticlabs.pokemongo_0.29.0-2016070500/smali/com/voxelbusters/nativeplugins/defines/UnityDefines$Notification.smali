.class public Lcom/voxelbusters/nativeplugins/defines/UnityDefines$Notification;
.super Ljava/lang/Object;
.source "UnityDefines.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxelbusters/nativeplugins/defines/UnityDefines;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Notification"
.end annotation


# static fields
.field public static final DID_FAIL_TO_REGISTER_FOR_REMOTE_NOTIFICATION:Ljava/lang/String; = "DidFailToRegisterRemoteNotifications"

.field public static final DID_RECEIVE_LAUNCH_NOTIFICATION:Ljava/lang/String; = "DidReceiveAppLaunchInfo"

.field public static final DID_RECEIVE_LOCAL_NOTIFICATION:Ljava/lang/String; = "DidReceiveLocalNotification"

.field public static final DID_RECEIVE_REMOTE_NOTIFICATION:Ljava/lang/String; = "DidReceiveRemoteNotification"

.field public static final DID_REGISTER_FOR_REMOTE_NOTIFICATION:Ljava/lang/String; = "DidRegisterRemoteNotification"


# instance fields
.field final synthetic this$0:Lcom/voxelbusters/nativeplugins/defines/UnityDefines;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/nativeplugins/defines/UnityDefines;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/voxelbusters/nativeplugins/defines/UnityDefines$Notification;->this$0:Lcom/voxelbusters/nativeplugins/defines/UnityDefines;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
