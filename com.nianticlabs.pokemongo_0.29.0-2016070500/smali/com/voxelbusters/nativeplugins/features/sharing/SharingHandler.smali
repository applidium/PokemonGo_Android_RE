.class public Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler;
.super Ljava/lang/Object;
.source "SharingHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler$eShareCategeories;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static getInstance()Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler;->INSTANCE:Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler;

    invoke-direct {v0}, Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler;-><init>()V

    sput-object v0, Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler;->INSTANCE:Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler;

    .line 33
    :cond_0
    sget-object v0, Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler;->INSTANCE:Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler;

    return-object v0
.end method


# virtual methods
.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 154
    invoke-static {}, Lcom/voxelbusters/nativeplugins/NativePluginHelper;->getCurrentContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public isServiceAvailable(I)Z
    .locals 2
    .param p1, "serviceTypeInt"    # I

    .prologue
    .line 43
    invoke-static {}, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;->values()[Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    move-result-object v1

    aget-object v0, v1, p1

    .line 44
    .local v0, "serviceType":Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;
    invoke-virtual {p0}, Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/voxelbusters/nativeplugins/features/sharing/SharingHelper;->isServiceAvailable(Landroid/content/Context;Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;)Z

    move-result v1

    return v1
.end method

.method public sendMail(Ljava/lang/String;Ljava/lang/String;Z[BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "isHtmlBody"    # Z
    .param p4, "attachmentByteArray"    # [B
    .param p5, "attachmentByteArrayLength"    # I
    .param p6, "mimeType"    # Ljava/lang/String;
    .param p7, "attachmentFileNameWithExtn"    # Ljava/lang/String;
    .param p8, "toRecipientsJson"    # Ljava/lang/String;
    .param p9, "ccRecipientsJson"    # Ljava/lang/String;
    .param p10, "bccRecipientsJson"    # Ljava/lang/String;

    .prologue
    .line 89
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 90
    .local v4, "bundle":Landroid/os/Bundle;
    const-string v8, "type"

    const-string v9, "mail"

    invoke-virtual {v4, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v8, "subject"

    invoke-virtual {v4, v8, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {p2}, Lcom/voxelbusters/nativeplugins/utilities/StringUtility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 96
    const-string p2, ""

    .line 98
    :cond_0
    move-object v6, p2

    .line 100
    .local v6, "messageBody":Ljava/lang/CharSequence;
    if-eqz p3, :cond_1

    .line 102
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    .line 105
    :cond_1
    const-string v8, "body"

    invoke-virtual {v4, v8, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 107
    if-eqz p5, :cond_2

    .line 109
    invoke-virtual {p0}, Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler;->getContext()Landroid/content/Context;

    move-result-object v8

    sget-object v9, Lcom/voxelbusters/nativeplugins/defines/CommonDefines;->SHARING_DIR:Ljava/lang/String;

    move-object/from16 v0, p7

    invoke-static {v8, p4, p5, v9, v0}, Lcom/voxelbusters/nativeplugins/utilities/FileUtility;->createSharingFileUri(Landroid/content/Context;[BILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 111
    .local v1, "attachmentUri":Landroid/net/Uri;
    if-eqz v1, :cond_2

    .line 114
    const/4 v8, 0x1

    new-array v2, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v8

    .line 115
    .local v2, "attachments":[Ljava/lang/String;
    const-string v8, "attachment"

    invoke-virtual {v4, v8, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 120
    .end local v1    # "attachmentUri":Landroid/net/Uri;
    .end local v2    # "attachments":[Ljava/lang/String;
    :cond_2
    invoke-static/range {p8 .. p8}, Lcom/voxelbusters/nativeplugins/utilities/StringUtility;->convertJsonStringToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 121
    .local v7, "toRecipients":[Ljava/lang/String;
    invoke-static/range {p9 .. p9}, Lcom/voxelbusters/nativeplugins/utilities/StringUtility;->convertJsonStringToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 122
    .local v5, "ccRecipients":[Ljava/lang/String;
    invoke-static/range {p10 .. p10}, Lcom/voxelbusters/nativeplugins/utilities/StringUtility;->convertJsonStringToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, "bccRecipients":[Ljava/lang/String;
    const-string v8, "to-recipient-list"

    invoke-virtual {v4, v8, v7}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 125
    const-string v8, "cc-recipient-list"

    invoke-virtual {v4, v8, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 126
    const-string v8, "bcc-recipient-list"

    invoke-virtual {v4, v8, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0, v4}, Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler;->startActivity(Landroid/os/Bundle;)V

    .line 129
    return-void
.end method

.method public sendSms(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "messageBody"    # Ljava/lang/String;
    .param p2, "recipientsListJson"    # Ljava/lang/String;

    .prologue
    .line 70
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 71
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "type"

    const-string v3, "sms"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v2, "message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {p2}, Lcom/voxelbusters/nativeplugins/utilities/StringUtility;->convertJsonStringToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "recipientsList":[Ljava/lang/String;
    const-string v2, "to-recipient-list"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0, v0}, Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler;->startActivity(Landroid/os/Bundle;)V

    .line 78
    return-void
.end method

.method public share(Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;)V
    .locals 8
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "urlString"    # Ljava/lang/String;
    .param p3, "imageByteArray"    # [B
    .param p4, "byteArrayLength"    # I
    .param p5, "excludedShareOptionsJson"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static {p5}, Lcom/voxelbusters/nativeplugins/utilities/StringUtility;->convertJsonStringToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "excludedShareOptions":[Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 53
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "type"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v3, "message"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v3, "url"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/voxelbusters/nativeplugins/defines/CommonDefines;->SHARING_DIR:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, p3, p4, v4, v5}, Lcom/voxelbusters/nativeplugins/utilities/FileUtility;->createSharingFileUri(Landroid/content/Context;[BILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 58
    .local v2, "imageUri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 60
    const-string v3, "image-path"

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    const-string v3, "exclude-list"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, v0}, Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler;->startActivity(Landroid/os/Bundle;)V

    .line 66
    return-void
.end method

.method public shareOnWhatsApp(Ljava/lang/String;[BI)V
    .locals 8
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "imageByteArray"    # [B
    .param p3, "imageArrayLength"    # I

    .prologue
    .line 133
    const/4 v1, 0x0

    .line 135
    .local v1, "imageUri":Landroid/net/Uri;
    if-eqz p3, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/voxelbusters/nativeplugins/defines/CommonDefines;->SHARING_DIR:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, p2, p3, v3, v4}, Lcom/voxelbusters/nativeplugins/utilities/FileUtility;->createSharingFileUri(Landroid/content/Context;[BILjava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 140
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 141
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "type"

    const-string v3, "whatsapp"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v2, "message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    if-eqz v1, :cond_1

    .line 145
    const-string v2, "image-path"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_1
    invoke-virtual {p0, v0}, Lcom/voxelbusters/nativeplugins/features/sharing/SharingHandler;->startActivity(Landroid/os/Bundle;)V

    .line 150
    return-void
.end method

.method public startActivity(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundleInfo"    # Landroid/os/Bundle;

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/voxelbusters/nativeplugins/NativePluginHelper;->getCurrentContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 84
    invoke-static {v0}, Lcom/voxelbusters/nativeplugins/NativePluginHelper;->startActivityOnUiThread(Landroid/content/Intent;)V

    .line 85
    return-void
.end method
