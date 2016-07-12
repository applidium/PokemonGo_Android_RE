.class final Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$1;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Landroid/support/v4/app/NotificationCompatBase$UnreadConversation$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build([Ljava/lang/String;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;
    .locals 8
    .param p1, "messages"    # [Ljava/lang/String;
    .param p2, "remoteInput"    # Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
    .param p3, "replyPendingIntent"    # Landroid/app/PendingIntent;
    .param p4, "readPendingIntent"    # Landroid/app/PendingIntent;
    .param p5, "participants"    # [Ljava/lang/String;
    .param p6, "latestTimestamp"    # J

    .prologue
    .line 3163
    new-instance v0, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;

    move-object v2, p2

    check-cast v2, Landroid/support/v4/app/RemoteInput;

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;-><init>([Ljava/lang/String;Landroid/support/v4/app/RemoteInput;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)V

    return-object v0
.end method

.method public bridge synthetic build([Ljava/lang/String;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;
    .locals 2
    .param p1, "x0"    # [Ljava/lang/String;
    .param p2, "x1"    # Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
    .param p3, "x2"    # Landroid/app/PendingIntent;
    .param p4, "x3"    # Landroid/app/PendingIntent;
    .param p5, "x4"    # [Ljava/lang/String;
    .param p6, "x5"    # J

    .prologue
    .line 3157
    invoke-virtual/range {p0 .. p7}, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation$1;->build([Ljava/lang/String;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;

    move-result-object v0

    return-object v0
.end method
