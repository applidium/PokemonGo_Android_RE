.class public Lcom/nianticproject/holoholo/sfida/SfidaNotification;
.super Ljava/lang/Object;
.source "SfidaNotification.java"


# static fields
.field public static final ACTION_NOTIFICATION_DISMISS:Ljava/lang/String; = "com.nianticproject.holoholo.sfida.dismiss"

.field public static final ACTION_NOTIFICATION_VIBRATE:Ljava/lang/String; = "com.nianticproject.holoholo.sfida.vibrate"

.field public static final NOTIFICATION_ID:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static notification:Landroid/app/Notification;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/nianticproject/holoholo/sfida/SfidaNotification;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/holoholo/sfida/SfidaNotification;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addDismissAction(Landroid/content/Context;Landroid/app/Notification$Builder;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 59
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "com.nianticproject.holoholo.sfida.dismiss"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {p0, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 67
    .local v1, "pen":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "ic_eject_black_48dp"

    const-string v5, "drawable"

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 67
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 71
    .local v2, "resId":I
    const-string v3, "Disconnect"

    invoke-virtual {p1, v2, v3, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 75
    return-void
.end method

.method private static addVibrateAction(Landroid/content/Context;Landroid/app/Notification$Builder;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 80
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "com.nianticproject.holoholo.sfida.vibrate"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {p0, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 89
    .local v1, "pen":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "ic_eject_black_48dp"

    const-string v5, "drawable"

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 89
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 93
    .local v2, "resId":I
    const-string v3, "VibrateTest"

    invoke-virtual {p1, v2, v3, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 97
    return-void
.end method

.method public static dissmiss(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    sget-object v1, Lcom/nianticproject/holoholo/sfida/SfidaNotification;->notification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    .line 101
    const-string v1, "notification"

    .line 102
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 103
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 105
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method public static getNotification()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/nianticproject/holoholo/sfida/SfidaNotification;->notification:Landroid/app/Notification;

    return-object v0
.end method

.method public static showSfidaNotification(Landroid/content/Context;)Landroid/app/Notification;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 29
    sget-object v3, Lcom/nianticproject/holoholo/sfida/SfidaNotification;->TAG:Ljava/lang/String;

    const-string v4, "showSfidaNotification()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 32
    .local v0, "builder":Landroid/app/Notification$Builder;
    const-string v3, "PokemonGoPlus"

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 33
    const-string v3, "Connecting"

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 34
    const-string v3, "ticker"

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 37
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v7, v3, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "ic_eject_black_48dp"

    const-string v5, "drawable"

    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 38
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 41
    .local v2, "resId":I
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 42
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 43
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 44
    invoke-static {p0, v0}, Lcom/nianticproject/holoholo/sfida/SfidaNotification;->addDismissAction(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    .line 45
    invoke-static {p0, v0}, Lcom/nianticproject/holoholo/sfida/SfidaNotification;->addVibrateAction(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    .line 48
    const-string v3, "notification"

    .line 49
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 50
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    sput-object v3, Lcom/nianticproject/holoholo/sfida/SfidaNotification;->notification:Landroid/app/Notification;

    .line 51
    const/4 v3, 0x1

    sget-object v4, Lcom/nianticproject/holoholo/sfida/SfidaNotification;->notification:Landroid/app/Notification;

    invoke-virtual {v1, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 53
    sget-object v3, Lcom/nianticproject/holoholo/sfida/SfidaNotification;->notification:Landroid/app/Notification;

    return-object v3
.end method
