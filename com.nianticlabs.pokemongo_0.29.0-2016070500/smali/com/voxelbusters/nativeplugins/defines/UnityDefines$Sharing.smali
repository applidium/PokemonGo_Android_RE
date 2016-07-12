.class public Lcom/voxelbusters/nativeplugins/defines/UnityDefines$Sharing;
.super Ljava/lang/Object;
.source "UnityDefines.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxelbusters/nativeplugins/defines/UnityDefines;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Sharing"
.end annotation


# static fields
.field public static final FINISHED:Ljava/lang/String; = "SharingFinished"

.field public static final SENT_MAIL:Ljava/lang/String; = "MailShareFinished"

.field public static final SENT_SMS:Ljava/lang/String; = "MessagingShareFinished"

.field public static final WHATSAPP_SHARE_FINISHED:Ljava/lang/String; = "WhatsAppShareFinished"


# instance fields
.field final synthetic this$0:Lcom/voxelbusters/nativeplugins/defines/UnityDefines;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/nativeplugins/defines/UnityDefines;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/voxelbusters/nativeplugins/defines/UnityDefines$Sharing;->this$0:Lcom/voxelbusters/nativeplugins/defines/UnityDefines;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
