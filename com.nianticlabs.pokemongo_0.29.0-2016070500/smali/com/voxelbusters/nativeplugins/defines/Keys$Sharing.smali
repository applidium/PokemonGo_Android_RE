.class public Lcom/voxelbusters/nativeplugins/defines/Keys$Sharing;
.super Ljava/lang/Object;
.source "Keys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxelbusters/nativeplugins/defines/Keys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Sharing"
.end annotation


# static fields
.field public static final BCC_RECIPIENT_LIST:Ljava/lang/String; = "bcc-recipient-list"

.field public static final CC_RECIPIENT_LIST:Ljava/lang/String; = "cc-recipient-list"

.field public static final CLOSED:Ljava/lang/String; = "closed"

.field public static final FAILED:Ljava/lang/String; = "failed"

.field public static final MAIL:Ljava/lang/String; = "mail"

.field public static final SMS:Ljava/lang/String; = "sms"

.field public static final TO_RECIPIENT_LIST:Ljava/lang/String; = "to-recipient-list"

.field public static final WHATS_APP:Ljava/lang/String; = "whatsapp"


# instance fields
.field final synthetic this$0:Lcom/voxelbusters/nativeplugins/defines/Keys;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/nativeplugins/defines/Keys;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/voxelbusters/nativeplugins/defines/Keys$Sharing;->this$0:Lcom/voxelbusters/nativeplugins/defines/Keys;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
