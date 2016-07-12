.class public Lcom/voxelbusters/nativeplugins/defines/UnityDefines;
.super Ljava/lang/Object;
.source "UnityDefines.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxelbusters/nativeplugins/defines/UnityDefines$AddressBook;,
        Lcom/voxelbusters/nativeplugins/defines/UnityDefines$Billing;,
        Lcom/voxelbusters/nativeplugins/defines/UnityDefines$GameServices;,
        Lcom/voxelbusters/nativeplugins/defines/UnityDefines$MediaLibrary;,
        Lcom/voxelbusters/nativeplugins/defines/UnityDefines$Notification;,
        Lcom/voxelbusters/nativeplugins/defines/UnityDefines$Reachability;,
        Lcom/voxelbusters/nativeplugins/defines/UnityDefines$Sharing;,
        Lcom/voxelbusters/nativeplugins/defines/UnityDefines$Twitter;,
        Lcom/voxelbusters/nativeplugins/defines/UnityDefines$Ui;,
        Lcom/voxelbusters/nativeplugins/defines/UnityDefines$WebView;
    }
.end annotation


# static fields
.field public static NATIVE_BINDING_EVENT_LISTENER:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-string v0, "NPBinding"

    sput-object v0, Lcom/voxelbusters/nativeplugins/defines/UnityDefines;->NATIVE_BINDING_EVENT_LISTENER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
