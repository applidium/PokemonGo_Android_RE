.class Landroid/support/v4/app/NotificationCompatApi20;
.super Ljava/lang/Object;
.source "NotificationCompatApi20.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/NotificationCompatApi20$Builder;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static addAction(Landroid/app/Notification$Builder;Landroid/support/v4/app/NotificationCompatBase$Action;)V
    .locals 8
    .param p0, "b"    # Landroid/app/Notification$Builder;
    .param p1, "action"    # Landroid/support/v4/app/NotificationCompatBase$Action;

    .prologue
    .line 102
    new-instance v0, Landroid/app/Notification$Action$Builder;

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getIcon()I

    move-result v5

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v7

    invoke-direct {v0, v5, v6, v7}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 104
    .local v0, "actionBuilder":Landroid/app/Notification$Action$Builder;
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 105
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object v5

    invoke-static {v5}, Landroid/support/v4/app/RemoteInputCompatApi20;->fromCompat([Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)[Landroid/app/RemoteInput;

    move-result-object v1

    .local v1, "arr$":[Landroid/app/RemoteInput;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 107
    .local v4, "remoteInput":Landroid/app/RemoteInput;
    invoke-virtual {v0, v4}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    .end local v1    # "arr$":[Landroid/app/RemoteInput;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "remoteInput":Landroid/app/RemoteInput;
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 111
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 113
    :cond_1
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 114
    return-void
.end method

.method public static getAction(Landroid/app/Notification;ILandroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/NotificationCompatBase$Action;
    .locals 1
    .param p0, "notif"    # Landroid/app/Notification;
    .param p1, "actionIndex"    # I
    .param p2, "actionFactory"    # Landroid/support/v4/app/NotificationCompatBase$Action$Factory;
    .param p3, "remoteInputFactory"    # Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;

    .prologue
    .line 119
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v0, v0, p1

    invoke-static {v0, p2, p3}, Landroid/support/v4/app/NotificationCompatApi20;->getActionCompatFromAction(Landroid/app/Notification$Action;Landroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/NotificationCompatBase$Action;

    move-result-object v0

    return-object v0
.end method

.method private static getActionCompatFromAction(Landroid/app/Notification$Action;Landroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/NotificationCompatBase$Action;
    .locals 6
    .param p0, "action"    # Landroid/app/Notification$Action;
    .param p1, "actionFactory"    # Landroid/support/v4/app/NotificationCompatBase$Action$Factory;
    .param p2, "remoteInputFactory"    # Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;

    .prologue
    .line 125
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/support/v4/app/RemoteInputCompatApi20;->toCompat([Landroid/app/RemoteInput;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object v5

    .line 127
    .local v5, "remoteInputs":[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
    iget v1, p0, Landroid/app/Notification$Action;->icon:I

    iget-object v2, p0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/app/NotificationCompatBase$Action$Factory;->build(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)Landroid/support/v4/app/NotificationCompatBase$Action;

    move-result-object v0

    return-object v0
.end method

.method private static getActionFromActionCompat(Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/app/Notification$Action;
    .locals 11
    .param p0, "actionCompat"    # Landroid/support/v4/app/NotificationCompatBase$Action;

    .prologue
    .line 133
    new-instance v7, Landroid/app/Notification$Action$Builder;

    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$Action;->getIcon()I

    move-result v8

    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    move-result-object v0

    .line 136
    .local v0, "actionBuilder":Landroid/app/Notification$Action$Builder;
    invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;

    move-result-object v5

    .line 137
    .local v5, "remoteInputCompats":[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
    if-eqz v5, :cond_0

    .line 138
    invoke-static {v5}, Landroid/support/v4/app/RemoteInputCompatApi20;->fromCompat([Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)[Landroid/app/RemoteInput;

    move-result-object v6

    .line 139
    .local v6, "remoteInputs":[Landroid/app/RemoteInput;
    move-object v1, v6

    .local v1, "arr$":[Landroid/app/RemoteInput;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 140
    .local v4, "remoteInput":Landroid/app/RemoteInput;
    invoke-virtual {v0, v4}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    .end local v1    # "arr$":[Landroid/app/RemoteInput;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "remoteInput":Landroid/app/RemoteInput;
    .end local v6    # "remoteInputs":[Landroid/app/RemoteInput;
    :cond_0
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v7

    return-object v7
.end method

.method public static getActionsFromParcelableArrayList(Ljava/util/ArrayList;Landroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)[Landroid/support/v4/app/NotificationCompatBase$Action;
    .locals 4
    .param p1, "actionFactory"    # Landroid/support/v4/app/NotificationCompatBase$Action$Factory;
    .param p2, "remoteInputFactory"    # Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;",
            "Landroid/support/v4/app/NotificationCompatBase$Action$Factory;",
            "Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;",
            ")[",
            "Landroid/support/v4/app/NotificationCompatBase$Action;"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    if-nez p0, :cond_1

    .line 157
    const/4 v1, 0x0

    .line 164
    :cond_0
    return-object v1

    .line 159
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-interface {p1, v3}, Landroid/support/v4/app/NotificationCompatBase$Action$Factory;->newArray(I)[Landroid/support/v4/app/NotificationCompatBase$Action;

    move-result-object v1

    .line 160
    .local v1, "actions":[Landroid/support/v4/app/NotificationCompatBase$Action;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 161
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$Action;

    .line 162
    .local v0, "action":Landroid/app/Notification$Action;
    invoke-static {v0, p1, p2}, Landroid/support/v4/app/NotificationCompatApi20;->getActionCompatFromAction(Landroid/app/Notification$Action;Landroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/NotificationCompatBase$Action;

    move-result-object v3

    aput-object v3, v1, v2

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getGroup(Landroid/app/Notification;)Ljava/lang/String;
    .locals 1
    .param p0, "notif"    # Landroid/app/Notification;

    .prologue
    .line 189
    invoke-virtual {p0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalOnly(Landroid/app/Notification;)Z
    .locals 1
    .param p0, "notif"    # Landroid/app/Notification;

    .prologue
    .line 185
    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getParcelableArrayListForActions([Landroid/support/v4/app/NotificationCompatBase$Action;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "actions"    # [Landroid/support/v4/app/NotificationCompatBase$Action;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/support/v4/app/NotificationCompatBase$Action;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    if-nez p0, :cond_1

    .line 175
    const/4 v4, 0x0

    .line 181
    :cond_0
    return-object v4

    .line 177
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p0

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 178
    .local v4, "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    move-object v1, p0

    .local v1, "arr$":[Landroid/support/v4/app/NotificationCompatBase$Action;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 179
    .local v0, "action":Landroid/support/v4/app/NotificationCompatBase$Action;
    invoke-static {v0}, Landroid/support/v4/app/NotificationCompatApi20;->getActionFromActionCompat(Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/app/Notification$Action;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getSortKey(Landroid/app/Notification;)Ljava/lang/String;
    .locals 1
    .param p0, "notif"    # Landroid/app/Notification;

    .prologue
    .line 197
    invoke-virtual {p0}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isGroupSummary(Landroid/app/Notification;)Z
    .locals 1
    .param p0, "notif"    # Landroid/app/Notification;

    .prologue
    .line 193
    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
