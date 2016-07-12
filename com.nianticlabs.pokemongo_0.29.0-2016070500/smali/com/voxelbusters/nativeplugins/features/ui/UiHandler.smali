.class public Lcom/voxelbusters/nativeplugins/features/ui/UiHandler;
.super Ljava/lang/Object;
.source "UiHandler.java"


# static fields
.field private static INSTANCE:Lcom/voxelbusters/nativeplugins/features/ui/UiHandler;


# instance fields
.field private currentDisplayedUiTag:Ljava/lang/String;

.field private final queueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final uiElementsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiHandler;->uiElementsMap:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiHandler;->queueList:Ljava/util/ArrayList;

    .line 47
    return-void
.end method

.method public static getInstance()Lcom/voxelbusters/nativeplugins/features/ui/UiHandler;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/voxelbusters/nativeplugins/features/ui/UiHandler;->INSTANCE:Lcom/voxelbusters/nativeplugins/features/ui/UiHandler;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/voxelbusters/nativeplugins/features/ui/UiHandler;

    invoke-direct {v0}, Lcom/voxelbusters/nativeplugins/features/ui/UiHandler;-><init>()V

    sput-object v0, Lcom/voxelbusters/nativeplugins/features/ui/UiHandler;->INSTANCE:Lcom/voxelbusters/nativeplugins/features/ui/UiHandler;

    .line 39
    :cond_0
    sget-object v0, Lcom/voxelbusters/nativeplugins/features/ui/UiHandler;->INSTANCE:Lcom/voxelbusters/nativeplugins/features/ui/UiHandler;

    return-object v0
.end method


# virtual methods
.method public onFinish(Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 131
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiHandler;->currentDisplayedUiTag:Ljava/lang/String;

    .line 132
    iget-object v1, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiHandler;->queueList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiHandler;->queueList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiHandler;->queueList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    .local v0, "newTag":Ljava/lang/String;
    iget-object v1, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiHandler;->uiElementsMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {p0, v1, v0}, Lcom/voxelbusters/nativeplugins/features/ui/UiHandler;->pushToActivityQueue(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 137
    .end local v0    # "newTag":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public pushToActivityQueue(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .param p1, "bundleInfo"    # Landroid/os/Bundle;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiHandler;->currentDisplayedUiTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 111
    const-string v0, "NativePlugins.Ui"

    const-string v1, "Queuing this ui element"

    invoke-static {v0, v1}, Lcom/voxelbusters/nativeplugins/utilities/Debug;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiHandler;->queueList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-virtual {p0, p1}, Lcom/voxelbusters/nativeplugins/features/ui/UiHandler;->startActivity(Landroid/os/Bundle;)V

    .line 117
    iput-object p2, p0, Lcom/voxelbusters/nativeplugins/features/ui/UiHandler;->currentDisplayedUiTag:Ljava/lang/String;

    goto :goto_0
.end method

.method public showAlertDialogWithMultipleButtons(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "buttonsListJson"    # Ljava/lang/String;
    .param p4, "tag"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v1, "button-list"

    invoke-static {p3}, Lcom/voxelbusters/nativeplugins/utilities/StringUtility;->convertJsonStringToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 55
    const-string v1, "tag"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v1, "type"

    sget-object v2, Lcom/voxelbusters/nativeplugins/features/ui/eUiType;->ALERT_DIALOG:Lcom/voxelbusters/nativeplugins/features/ui/eUiType;

    invoke-virtual {v2}, Lcom/voxelbusters/nativeplugins/features/ui/eUiType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 58
    invoke-virtual {p0, v0, p4}, Lcom/voxelbusters/nativeplugins/features/ui/UiHandler;->pushToActivityQueue(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public showLoginPromptDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "placeHolder1"    # Ljava/lang/String;
    .param p4, "placeHolder2"    # Ljava/lang/String;
    .param p5, "buttonsListJson"    # Ljava/lang/String;

    .prologue
    .line 77
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 78
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v1, "button-list"

    invoke-static {p5}, Lcom/voxelbusters/nativeplugins/utilities/StringUtility;->convertJsonStringToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 81
    const-string v1, "place-holder-text-1"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v1, "place-holder-text-2"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v1, "type"

    sget-object v2, Lcom/voxelbusters/nativeplugins/features/ui/eUiType;->LOGIN_PROMPT:Lcom/voxelbusters/nativeplugins/features/ui/eUiType;

    invoke-virtual {v2}, Lcom/voxelbusters/nativeplugins/features/ui/eUiType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    invoke-virtual {p0, v0}, Lcom/voxelbusters/nativeplugins/features/ui/UiHandler;->startActivity(Landroid/os/Bundle;)V

    .line 87
    return-void
.end method

.method public showSingleFieldPromptDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "placeHolder"    # Ljava/lang/String;
    .param p4, "useSecureText"    # Z
    .param p5, "buttonsListJson"    # Ljava/lang/String;

    .prologue
    .line 63
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 64
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v1, "message"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v1, "button-list"

    invoke-static {p5}, Lcom/voxelbusters/nativeplugins/utilities/StringUtility;->convertJsonStringToStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 67
    const-string v1, "is-secure"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 68
    const-string v1, "place-holder-text-1"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v1, "type"

    sget-object v2, Lcom/voxelbusters/nativeplugins/features/ui/eUiType;->SINGLE_FIELD_PROMPT:Lcom/voxelbusters/nativeplugins/features/ui/eUiType;

    invoke-virtual {v2}, Lcom/voxelbusters/nativeplugins/features/ui/eUiType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    invoke-virtual {p0, v0}, Lcom/voxelbusters/nativeplugins/features/ui/UiHandler;->startActivity(Landroid/os/Bundle;)V

    .line 73
    return-void
.end method

.method public showToast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "lengthType"    # Ljava/lang/String;

    .prologue
    .line 91
    const-string v2, "SHORT"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    .line 93
    .local v1, "toastLength":I
    :goto_0
    new-instance v0, Lcom/voxelbusters/nativeplugins/features/ui/UiHandler$1;

    invoke-direct {v0, p0, p1, v1}, Lcom/voxelbusters/nativeplugins/features/ui/UiHandler$1;-><init>(Lcom/voxelbusters/nativeplugins/features/ui/UiHandler;Ljava/lang/String;I)V

    .line 102
    .local v0, "runnableThread":Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/voxelbusters/nativeplugins/NativePluginHelper;->executeOnUIThread(Ljava/lang/Runnable;)V

    .line 103
    return-void

    .line 91
    .end local v0    # "runnableThread":Ljava/lang/Runnable;
    .end local v1    # "toastLength":I
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method startActivity(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundleInfo"    # Landroid/os/Bundle;

    .prologue
    .line 124
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/voxelbusters/nativeplugins/NativePluginHelper;->getCurrentContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/voxelbusters/nativeplugins/features/ui/UiActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 126
    invoke-static {v0}, Lcom/voxelbusters/nativeplugins/NativePluginHelper;->startActivityOnUiThread(Landroid/content/Intent;)V

    .line 127
    return-void
.end method
