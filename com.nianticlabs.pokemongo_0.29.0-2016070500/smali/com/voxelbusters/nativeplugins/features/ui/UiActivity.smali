.class public Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;
.super Landroid/app/Activity;
.source "UiActivity.java"


# instance fields
.field alertDialog:Landroid/app/AlertDialog;

.field bundleInfo:Landroid/os/Bundle;

.field paused:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private showAlertDialog(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x3

    .line 108
    const-string v8, "tag"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 110
    .local v6, "tag":Ljava/lang/String;
    const-string v8, "button-list"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "buttonsList":[Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;->getDialogWithDefaultDetails(Landroid/os/Bundle;)Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 114
    array-length v8, v1

    if-le v8, v4, :cond_0

    .line 115
    .local v4, "length":I
    :goto_0
    move-object v7, v1

    .line 116
    .local v7, "tempButtonList":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "eachButtonIndex":I
    :goto_1
    if-lt v2, v4, :cond_1

    .line 147
    iget-object v8, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 149
    return-void

    .line 114
    .end local v2    # "eachButtonIndex":I
    .end local v4    # "length":I
    .end local v7    # "tempButtonList":[Ljava/lang/String;
    :cond_0
    array-length v4, v1

    goto :goto_0

    .line 120
    .restart local v2    # "eachButtonIndex":I
    .restart local v4    # "length":I
    .restart local v7    # "tempButtonList":[Ljava/lang/String;
    :cond_1
    rsub-int/lit8 v0, v2, -0x1

    .line 122
    .local v0, "buttonActionIndex":I
    move v3, v2

    .line 123
    .local v3, "index":I
    new-instance v5, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity$2;

    invoke-direct {v5, p0, v7, v3, v6}, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity$2;-><init>(Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;[Ljava/lang/String;ILjava/lang/String;)V

    .line 144
    .local v5, "onClickListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v8, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;->alertDialog:Landroid/app/AlertDialog;

    aget-object v9, v1, v2

    invoke-virtual {v8, v0, v9, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private showLoginPrompt(Landroid/os/Bundle;)V
    .locals 16
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 214
    const-string v2, "button-list"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 216
    .local v8, "buttonsList":[Ljava/lang/String;
    new-instance v12, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 217
    .local v12, "mainlayout":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;->setContentView(Landroid/view/View;)V

    .line 219
    move-object v3, v8

    .line 221
    .local v3, "finalButtonList":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;->getDialogWithDefaultDetails(Landroid/os/Bundle;)Landroid/app/AlertDialog;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 223
    new-instance v5, Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 224
    .local v5, "usernameField":Landroid/widget/EditText;
    new-instance v6, Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 226
    .local v6, "passwordField":Landroid/widget/EditText;
    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 227
    .local v10, "layout":Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 228
    invoke-virtual {v10, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 229
    invoke-virtual {v10, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 234
    const-string v2, "place-holder-text-1"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 235
    .local v13, "placeHolder1Text":Ljava/lang/String;
    const-string v2, "place-holder-text-2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 238
    .local v14, "placeHolder2Text":Ljava/lang/String;
    new-instance v2, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v2}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 241
    invoke-virtual {v5, v13}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 242
    invoke-virtual {v6, v14}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 247
    array-length v2, v3

    const/4 v15, 0x3

    if-le v2, v15, :cond_0

    const/4 v11, 0x3

    .line 248
    .local v11, "length":I
    :goto_0
    const/4 v9, 0x0

    .local v9, "eachButtonIndex":I
    :goto_1
    if-lt v9, v11, :cond_1

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 281
    return-void

    .line 247
    .end local v9    # "eachButtonIndex":I
    .end local v11    # "length":I
    :cond_0
    array-length v11, v3

    goto :goto_0

    .line 252
    .restart local v9    # "eachButtonIndex":I
    .restart local v11    # "length":I
    :cond_1
    rsub-int/lit8 v7, v9, -0x1

    .line 254
    .local v7, "buttonActionIndex":I
    move v4, v9

    .line 255
    .local v4, "index":I
    new-instance v1, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity$4;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity$4;-><init>(Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;[Ljava/lang/String;ILandroid/widget/EditText;Landroid/widget/EditText;)V

    .line 277
    .local v1, "onClickListener":Landroid/content/DialogInterface$OnClickListener;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;->alertDialog:Landroid/app/AlertDialog;

    aget-object v15, v3, v9

    invoke-virtual {v2, v7, v15, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 248
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method private showSinglePrompt(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x3

    .line 153
    const-string v10, "button-list"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "buttonsList":[Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;->getDialogWithDefaultDetails(Landroid/os/Bundle;)Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 157
    new-instance v8, Landroid/widget/EditText;

    invoke-direct {v8, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 159
    .local v8, "promptField":Landroid/widget/EditText;
    iget-object v10, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10, v8}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 161
    const-string v10, "is-secure"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 162
    .local v4, "isSecureText":Z
    const-string v10, "place-holder-text-1"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 164
    .local v7, "placeHolderText":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 166
    new-instance v10, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v10}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v8, v10}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 169
    :cond_0
    if-eqz v7, :cond_1

    .line 171
    invoke-virtual {v8, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 177
    :cond_1
    array-length v10, v1

    if-le v10, v5, :cond_2

    .line 178
    .local v5, "length":I
    :goto_0
    move-object v9, v1

    .line 179
    .local v9, "tempButtonList":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "eachButtonIndex":I
    :goto_1
    if-lt v2, v5, :cond_3

    .line 209
    iget-object v10, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    .line 210
    return-void

    .line 177
    .end local v2    # "eachButtonIndex":I
    .end local v5    # "length":I
    .end local v9    # "tempButtonList":[Ljava/lang/String;
    :cond_2
    array-length v5, v1

    goto :goto_0

    .line 183
    .restart local v2    # "eachButtonIndex":I
    .restart local v5    # "length":I
    .restart local v9    # "tempButtonList":[Ljava/lang/String;
    :cond_3
    rsub-int/lit8 v0, v2, -0x1

    .line 185
    .local v0, "buttonActionIndex":I
    move v3, v2

    .line 186
    .local v3, "index":I
    new-instance v6, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity$3;

    invoke-direct {v6, p0, v8, v9, v3}, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity$3;-><init>(Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;Landroid/widget/EditText;[Ljava/lang/String;I)V

    .line 206
    .local v6, "onClickListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v10, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;->alertDialog:Landroid/app/AlertDialog;

    aget-object v11, v1, v2

    invoke-virtual {v10, v0, v11, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 179
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method getDialogWithDefaultDetails(Landroid/os/Bundle;)Landroid/app/AlertDialog;
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 286
    const-string v3, "title"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, "title":Ljava/lang/String;
    const-string v3, "message"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "message":Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 293
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {v2}, Lcom/voxelbusters/nativeplugins/utilities/StringUtility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 295
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 297
    :cond_0
    invoke-static {v1}, Lcom/voxelbusters/nativeplugins/utilities/StringUtility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 299
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 302
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 305
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "new_config"    # Landroid/content/res/Configuration;

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 92
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    iget-object v2, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;->bundleInfo:Landroid/os/Bundle;

    if-nez v2, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 34
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;->bundleInfo:Landroid/os/Bundle;

    .line 38
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-static {}, Lcom/voxelbusters/nativeplugins/features/ui/eUiType;->values()[Lcom/voxelbusters/nativeplugins/features/ui/eUiType;

    move-result-object v2

    iget-object v3, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;->bundleInfo:Landroid/os/Bundle;

    const-string v4, "type"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    aget-object v1, v2, v3

    .line 40
    .local v1, "type":Lcom/voxelbusters/nativeplugins/features/ui/eUiType;
    sget-object v2, Lcom/voxelbusters/nativeplugins/features/ui/eUiType;->ALERT_DIALOG:Lcom/voxelbusters/nativeplugins/features/ui/eUiType;

    if-ne v1, v2, :cond_2

    .line 42
    iget-object v2, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;->bundleInfo:Landroid/os/Bundle;

    invoke-direct {p0, v2}, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;->showAlertDialog(Landroid/os/Bundle;)V

    .line 53
    :cond_1
    :goto_0
    return-void

    .line 44
    :cond_2
    sget-object v2, Lcom/voxelbusters/nativeplugins/features/ui/eUiType;->SINGLE_FIELD_PROMPT:Lcom/voxelbusters/nativeplugins/features/ui/eUiType;

    if-ne v1, v2, :cond_3

    .line 46
    iget-object v2, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;->bundleInfo:Landroid/os/Bundle;

    invoke-direct {p0, v2}, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;->showSinglePrompt(Landroid/os/Bundle;)V

    goto :goto_0

    .line 48
    :cond_3
    sget-object v2, Lcom/voxelbusters/nativeplugins/features/ui/eUiType;->LOGIN_PROMPT:Lcom/voxelbusters/nativeplugins/features/ui/eUiType;

    if-ne v1, v2, :cond_1

    .line 50
    iget-object v2, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;->bundleInfo:Landroid/os/Bundle;

    invoke-direct {p0, v2}, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;->showLoginPrompt(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 98
    iget-object v0, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;->alertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 104
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;->paused:Z

    .line 86
    return-void
.end method

.method protected onResume()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 59
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 61
    iget-boolean v1, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;->paused:Z

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;->finish()V

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 67
    .local v0, "h":Landroid/os/Handler;
    new-instance v1, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity$1;

    invoke-direct {v1, p0}, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity$1;-><init>(Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;)V

    .line 75
    const-wide/16 v2, 0xa

    .line 67
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77
    .end local v0    # "h":Landroid/os/Handler;
    :cond_0
    return-void
.end method
