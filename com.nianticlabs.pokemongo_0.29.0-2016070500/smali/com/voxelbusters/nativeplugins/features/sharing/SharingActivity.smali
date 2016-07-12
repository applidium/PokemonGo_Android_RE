.class public Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity;
.super Landroid/app/Activity;
.source "SharingActivity.java"


# instance fields
.field final SEND_MAIL_REQUEST_CODE:I

.field final SEND_SMS_REQUEST_CODE:I

.field final SHARE_ON_WHATS_APP_REQUEST_CODE:I

.field final SHARING_REQUEST_CODE:I

.field bundleInfo:Landroid/os/Bundle;

.field currentImageFileShared:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity;->SHARING_REQUEST_CODE:I

    .line 32
    const/4 v0, 0x2

    iput v0, p0, Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity;->SEND_MAIL_REQUEST_CODE:I

    .line 33
    const/4 v0, 0x3

    iput v0, p0, Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity;->SEND_SMS_REQUEST_CODE:I

    .line 34
    const/4 v0, 0x4

    iput v0, p0, Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity;->SHARE_ON_WHATS_APP_REQUEST_CODE:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity;->currentImageFileShared:Ljava/io/File;

    .line 28
    return-void
.end method

.method private shareItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 20
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "urlString"    # Ljava/lang/String;
    .param p3, "imagePath"    # Ljava/lang/String;
    .param p4, "type"    # Ljava/lang/String;
    .param p5, "excludedShareOptions"    # [Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {}, Lcom/voxelbusters/nativeplugins/NativePluginHelper;->getCurrentContext()Landroid/content/Context;

    move-result-object v6

    .line 89
    .local v6, "context":Landroid/content/Context;
    new-instance v13, Landroid/content/Intent;

    const-string v17, "android.intent.action.SEND"

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .local v13, "shareIntent":Landroid/content/Intent;
    invoke-static/range {p3 .. p3}, Lcom/voxelbusters/nativeplugins/utilities/StringUtility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    const/16 v17, 0x0

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity;->getMimeType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 93
    .local v9, "mimeType":Ljava/lang/String;
    invoke-virtual {v13, v9}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    invoke-static/range {p2 .. p2}, Lcom/voxelbusters/nativeplugins/utilities/StringUtility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 97
    const-string v17, "android.intent.extra.TEXT"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    :goto_1
    invoke-static/range {p3 .. p3}, Lcom/voxelbusters/nativeplugins/utilities/StringUtility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 106
    const-string v17, "android.intent.extra.STREAM"

    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 109
    :cond_0
    const-string v17, "android.intent.category.DEFAULT"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const/4 v7, 0x0

    .line 113
    .local v7, "failedSharing":Z
    const/4 v10, 0x0

    .line 116
    .local v10, "needsOnlySocialNetworkingServices":Z
    if-eqz p5, :cond_1

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;->MESSAGE:Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    invoke-virtual/range {v18 .. v18}, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;->ordinal()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lcom/voxelbusters/nativeplugins/utilities/StringUtility;->contains(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;->MAIL:Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    invoke-virtual/range {v18 .. v18}, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;->ordinal()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lcom/voxelbusters/nativeplugins/utilities/StringUtility;->contains(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v18, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;->WHATSAPP:Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;

    invoke-virtual/range {v18 .. v18}, Lcom/voxelbusters/nativeplugins/defines/Enums$eShareOptions;->ordinal()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lcom/voxelbusters/nativeplugins/utilities/StringUtility;->contains(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 118
    const/4 v10, 0x1

    .line 121
    :cond_1
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 123
    .local v4, "availableActivitiesResInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_a

    .line 125
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v15, "targetedIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_2
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_6

    .line 154
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_9

    .line 157
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/Intent;

    .line 159
    .local v14, "startIntent":Landroid/content/Intent;
    const-string v17, "Share via"

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    .line 160
    .local v5, "chooserIntent":Landroid/content/Intent;
    const-string v18, "android.intent.extra.INITIAL_INTENTS"

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Landroid/os/Parcelable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Landroid/os/Parcelable;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 161
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 162
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 174
    .end local v5    # "chooserIntent":Landroid/content/Intent;
    .end local v14    # "startIntent":Landroid/content/Intent;
    .end local v15    # "targetedIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    :goto_3
    if-eqz v7, :cond_3

    .line 177
    new-instance v17, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v18, "Share"

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const-string v18, "No services found!"

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    const v18, 0x104000a

    new-instance v19, Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity$1;

    invoke-direct/range {v19 .. v20}, Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity$1;-><init>(Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity;)V

    invoke-virtual/range {v17 .. v19}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 187
    .local v3, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    new-instance v17, Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity$2;-><init>(Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity;)V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 202
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    .line 203
    .local v16, "warningDialog":Landroid/app/AlertDialog;
    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog;->show()V

    .line 206
    .end local v3    # "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    .end local v16    # "warningDialog":Landroid/app/AlertDialog;
    :cond_3
    return-void

    .line 91
    .end local v4    # "availableActivitiesResInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7    # "failedSharing":Z
    .end local v9    # "mimeType":Ljava/lang/String;
    .end local v10    # "needsOnlySocialNetworkingServices":Z
    :cond_4
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 101
    .restart local v9    # "mimeType":Ljava/lang/String;
    :cond_5
    const-string v17, "android.intent.extra.TEXT"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 127
    .restart local v4    # "availableActivitiesResInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v7    # "failedSharing":Z
    .restart local v10    # "needsOnlySocialNetworkingServices":Z
    .restart local v15    # "targetedIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    :cond_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 129
    .local v12, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v11, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 133
    .local v11, "packageName":Ljava/lang/String;
    :goto_4
    if-eqz v11, :cond_2

    move-object/from16 v0, p5

    invoke-static {v11, v0}, Lcom/voxelbusters/nativeplugins/features/sharing/SharingHelper;->checkIfPackageMatchesShareOptions(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 138
    if-eqz v10, :cond_7

    .line 140
    invoke-static {v11}, Lcom/voxelbusters/nativeplugins/features/sharing/SharingHelper;->isSocialNetwork(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 146
    :cond_7
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v13}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 148
    .local v8, "intent":Landroid/content/Intent;
    new-instance v18, Landroid/content/ComponentName;

    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v11, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 149
    invoke-virtual {v8, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 129
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v11    # "packageName":Ljava/lang/String;
    :cond_8
    const/4 v11, 0x0

    goto :goto_4

    .line 166
    .end local v12    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_9
    const/4 v7, 0x1

    .line 168
    goto/16 :goto_3

    .line 171
    .end local v15    # "targetedIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    :cond_a
    const/4 v7, 0x1

    goto/16 :goto_3
.end method


# virtual methods
.method getMimeType(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "hasImage"    # Z

    .prologue
    .line 303
    const-string v0, "text/plain"

    .line 305
    .local v0, "mimeType":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 307
    const-string v0, "image/*"

    .line 311
    :cond_0
    const-string v1, "mail"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    const-string v0, "message/rfc822"

    .line 316
    :cond_1
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 322
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 324
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 327
    const-string v0, "SharingFinished"

    const-string v1, "closed"

    invoke-static {v0, v1}, Lcom/voxelbusters/nativeplugins/NativePluginHelper;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity;->finish()V

    .line 344
    return-void

    .line 329
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 331
    const-string v0, "MailShareFinished"

    const-string v1, "closed"

    invoke-static {v0, v1}, Lcom/voxelbusters/nativeplugins/NativePluginHelper;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 335
    const-string v0, "MessagingShareFinished"

    const-string v1, "closed"

    invoke-static {v0, v1}, Lcom/voxelbusters/nativeplugins/NativePluginHelper;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 339
    const-string v0, "WhatsAppShareFinished"

    const-string v1, "closed"

    invoke-static {v0, v1}, Lcom/voxelbusters/nativeplugins/NativePluginHelper;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    iget-object v0, p0, Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity;->bundleInfo:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 49
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity;->bundleInfo:Landroid/os/Bundle;

    .line 52
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v0, p0, Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity;->bundleInfo:Landroid/os/Bundle;

    const-string v7, "type"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, "type":Ljava/lang/String;
    invoke-static {v4}, Lcom/voxelbusters/nativeplugins/utilities/StringUtility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity;->bundleInfo:Landroid/os/Bundle;

    const-string v7, "message"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "message":Ljava/lang/String;
    iget-object v0, p0, Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity;->bundleInfo:Landroid/os/Bundle;

    const-string v7, "url"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "url":Ljava/lang/String;
    iget-object v0, p0, Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity;->bundleInfo:Landroid/os/Bundle;

    const-string v7, "image-path"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "imagePath":Ljava/lang/String;
    iget-object v0, p0, Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity;->bundleInfo:Landroid/os/Bundle;

    const-string v7, "exclude-list"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .local v5, "exclusionList":[Ljava/lang/String;
    move-object v0, p0

    .line 63
    invoke-direct/range {v0 .. v5}, Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity;->shareItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 82
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    .end local v3    # "imagePath":Ljava/lang/String;
    .end local v5    # "exclusionList":[Ljava/lang/String;
    :goto_0
    return-void

    .line 66
    :cond_1
    const-string v0, "sms"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity;->bundleInfo:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity;->shareWithSMS(Landroid/os/Bundle;)V

    goto :goto_0

    .line 70
    :cond_2
    const-string v0, "mail"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 72
    iget-object v0, p0, Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity;->bundleInfo:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity;->shareWithEmail(Landroid/os/Bundle;)V

    goto :goto_0

    .line 74
    :cond_3
    const-string v0, "whatsapp"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 76
    iget-object v0, p0, Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity;->bundleInfo:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity;->shareOnWhatsApp(Landroid/os/Bundle;)V

    goto :goto_0

    .line 80
    :cond_4
    const-string v0, "NativePlugins.Sharing"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Sharing not implemented for this type "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/voxelbusters/nativeplugins/utilities/Debug;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method shareOnWhatsApp(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "info"    # Landroid/os/Bundle;

    .prologue
    .line 278
    const-string v5, "message"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 279
    .local v3, "message":Ljava/lang/String;
    const-string v5, "image-path"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 281
    .local v1, "imagePath":Ljava/lang/String;
    const-string v6, "whatsapp"

    invoke-static {v1}, Lcom/voxelbusters/nativeplugins/utilities/StringUtility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p0, v6, v5}, Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity;->getMimeType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 283
    .local v4, "mimeType":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 284
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_0

    .line 286
    const-string v5, "android.intent.extra.TEXT"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    :cond_0
    if-eqz v1, :cond_1

    .line 291
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 292
    .local v0, "attachmentUri":Landroid/net/Uri;
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 295
    .end local v0    # "attachmentUri":Landroid/net/Uri;
    :cond_1
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const-string v5, "com.whatsapp"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    const/4 v5, 0x4

    invoke-virtual {p0, v2, v5}, Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 299
    return-void

    .line 281
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "mimeType":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x1

    goto :goto_0
.end method

.method shareWithEmail(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "info"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    .line 210
    const-string v12, "body"

    invoke-virtual {p1, v12}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 212
    .local v4, "body":Ljava/lang/CharSequence;
    const-string v12, "subject"

    invoke-virtual {p1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 214
    .local v8, "subject":Ljava/lang/String;
    const-string v12, "to-recipient-list"

    invoke-virtual {p1, v12}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 215
    .local v9, "toRecipients":[Ljava/lang/String;
    const-string v12, "cc-recipient-list"

    invoke-virtual {p1, v12}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 216
    .local v5, "ccRecipients":[Ljava/lang/String;
    const-string v12, "bcc-recipient-list"

    invoke-virtual {p1, v12}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 218
    .local v3, "bccRecipients":[Ljava/lang/String;
    const-string v12, "attachment"

    invoke-virtual {p1, v12}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 220
    .local v2, "attachmentPaths":[Ljava/lang/String;
    const-string v12, "mail"

    invoke-virtual {p0, v12, v11}, Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity;->getMimeType(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 222
    .local v7, "mimeType":Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    const-string v12, "android.intent.action.SEND"

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v12, "android.intent.extra.TEXT"

    invoke-virtual {v6, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 225
    const-string v12, "android.intent.extra.SUBJECT"

    invoke-virtual {v6, v12, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v12, "android.intent.extra.EMAIL"

    invoke-virtual {v6, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    const-string v12, "android.intent.extra.CC"

    invoke-virtual {v6, v12, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string v12, "android.intent.extra.BCC"

    invoke-virtual {v6, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    if-eqz v2, :cond_0

    .line 234
    const-string v12, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v6, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v10, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    array-length v12, v2

    :goto_0
    if-lt v11, v12, :cond_1

    .line 243
    const-string v11, "android.intent.extra.STREAM"

    invoke-virtual {v6, v11, v10}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 249
    .end local v10    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_0
    const/4 v11, 0x2

    invoke-virtual {p0, v6, v11}, Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 251
    return-void

    .line 237
    .restart local v10    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_1
    aget-object v1, v2, v11

    .line 239
    .local v1, "attachmentPath":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 240
    .local v0, "_eachUri":Landroid/net/Uri;
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    add-int/lit8 v11, v11, 0x1

    goto :goto_0
.end method

.method shareWithSMS(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "info"    # Landroid/os/Bundle;

    .prologue
    .line 255
    const-string v6, "message"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "message":Ljava/lang/String;
    const-string v6, "to-recipient-list"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 257
    .local v3, "recipientsList":[Ljava/lang/String;
    const-string v4, ""

    .line 259
    .local v4, "recipientsListStr":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 261
    array-length v7, v3

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v7, :cond_1

    .line 267
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "smsto:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 269
    .local v5, "smsUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.SENDTO"

    invoke-direct {v1, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 270
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "sms_body"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const/4 v6, 0x3

    invoke-virtual {p0, v1, v6}, Lcom/voxelbusters/nativeplugins/features/sharing/SharingActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 273
    return-void

    .line 261
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v5    # "smsUri":Landroid/net/Uri;
    :cond_1
    aget-object v0, v3, v6

    .line 263
    .local v0, "each":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 261
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method
