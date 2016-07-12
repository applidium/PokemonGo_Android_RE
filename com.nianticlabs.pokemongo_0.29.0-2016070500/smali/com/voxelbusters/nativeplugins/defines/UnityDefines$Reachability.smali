.class public Lcom/voxelbusters/nativeplugins/defines/UnityDefines$Reachability;
.super Ljava/lang/Object;
.source "UnityDefines.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxelbusters/nativeplugins/defines/UnityDefines;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Reachability"
.end annotation


# static fields
.field public static final NETWORK_CONNECTIVITY_HARDWARE_STATUS_CHANGE:Ljava/lang/String; = "NetworkHardwareStatusChange"

.field public static final NETWORK_CONNECTIVITY_SOCKET_STATUS_CHANGE:Ljava/lang/String; = "NetworkSocketStatusChange"


# instance fields
.field final synthetic this$0:Lcom/voxelbusters/nativeplugins/defines/UnityDefines;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/nativeplugins/defines/UnityDefines;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/voxelbusters/nativeplugins/defines/UnityDefines$Reachability;->this$0:Lcom/voxelbusters/nativeplugins/defines/UnityDefines;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
