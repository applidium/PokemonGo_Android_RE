.class Lcom/nianticlabs/nia/account/AccountsActivity$1;
.super Landroid/os/AsyncTask;
.source "AccountsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/nia/account/AccountsActivity;->getAuth(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/nia/account/AccountsActivity;

.field final synthetic val$accountName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nianticlabs/nia/account/AccountsActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticlabs/nia/account/AccountsActivity;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/nianticlabs/nia/account/AccountsActivity$1;->this$0:Lcom/nianticlabs/nia/account/AccountsActivity;

    iput-object p2, p0, Lcom/nianticlabs/nia/account/AccountsActivity$1;->val$accountName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 133
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/nianticlabs/nia/account/AccountsActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/nianticlabs/nia/account/AccountsActivity$1;->this$0:Lcom/nianticlabs/nia/account/AccountsActivity;

    iget-object v1, p0, Lcom/nianticlabs/nia/account/AccountsActivity$1;->val$accountName:Ljava/lang/String;

    # invokes: Lcom/nianticlabs/nia/account/AccountsActivity;->getAuthTokenBlocking(Lcom/nianticlabs/nia/account/AccountsActivity;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/nianticlabs/nia/account/AccountsActivity;->access$000(Lcom/nianticlabs/nia/account/AccountsActivity;Ljava/lang/String;)V

    .line 136
    const/4 v0, 0x0

    return-object v0
.end method
