.class Lcom/nianticlabs/nia/account/NianticAccountManager$1;
.super Ljava/lang/Object;
.source "NianticAccountManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/nia/account/NianticAccountManager;->getAccount(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/nia/account/NianticAccountManager;

.field final synthetic val$clientId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nianticlabs/nia/account/NianticAccountManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticlabs/nia/account/NianticAccountManager;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/nianticlabs/nia/account/NianticAccountManager$1;->this$0:Lcom/nianticlabs/nia/account/NianticAccountManager;

    iput-object p2, p0, Lcom/nianticlabs/nia/account/NianticAccountManager$1;->val$clientId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 94
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nianticlabs/nia/account/NianticAccountManager$1;->this$0:Lcom/nianticlabs/nia/account/NianticAccountManager;

    # getter for: Lcom/nianticlabs/nia/account/NianticAccountManager;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/nianticlabs/nia/account/NianticAccountManager;->access$000(Lcom/nianticlabs/nia/account/NianticAccountManager;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/nianticlabs/nia/account/AccountsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 95
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/nianticlabs/nia/account/AccountsActivity;->EXTRA_OAUTH_CLIENT_ID:Ljava/lang/String;

    iget-object v2, p0, Lcom/nianticlabs/nia/account/NianticAccountManager$1;->val$clientId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    iget-object v1, p0, Lcom/nianticlabs/nia/account/NianticAccountManager$1;->this$0:Lcom/nianticlabs/nia/account/NianticAccountManager;

    # getter for: Lcom/nianticlabs/nia/account/NianticAccountManager;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/nianticlabs/nia/account/NianticAccountManager;->access$100(Lcom/nianticlabs/nia/account/NianticAccountManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 98
    return-void
.end method
