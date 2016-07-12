.class public Lcom/voxelbusters/nativeplugins/defines/Keys$Notification;
.super Ljava/lang/Object;
.source "Keys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxelbusters/nativeplugins/defines/Keys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Notification"
.end annotation


# static fields
.field public static final IS_REMOTE_NOTIFICATION:Ljava/lang/String; = "is-remote-notification"

.field public static final NOTIFICATION_PAYLOAD:Ljava/lang/String; = "notification-data"

.field public static final SAVED_CUSTOM_ICON_SELECTION:Ljava/lang/String; = "allow-custom-icon-drawing"

.field public static final SAVED_KEYS_FILE:Ljava/lang/String; = "np-saved-notification-keys-data"

.field public static final SAVED_KEYS_INFO:Ljava/lang/String; = "keys-info"

.field public static final SAVED_NOTIFICATION_META_INFO:Ljava/lang/String; = "notification-meta-info"

.field public static final SAVED_VIBRATION_SELECTION:Ljava/lang/String; = "allow-vibration"


# instance fields
.field final synthetic this$0:Lcom/voxelbusters/nativeplugins/defines/Keys;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/nativeplugins/defines/Keys;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/voxelbusters/nativeplugins/defines/Keys$Notification;->this$0:Lcom/voxelbusters/nativeplugins/defines/Keys;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
