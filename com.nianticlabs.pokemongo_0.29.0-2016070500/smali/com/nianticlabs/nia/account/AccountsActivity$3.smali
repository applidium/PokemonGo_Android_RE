.class Lcom/nianticlabs/nia/account/AccountsActivity$3;
.super Ljava/lang/Object;
.source "AccountsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/nia/account/AccountsActivity;->postFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/nia/account/AccountsActivity;


# direct methods
.method constructor <init>(Lcom/nianticlabs/nia/account/AccountsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticlabs/nia/account/AccountsActivity;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/nianticlabs/nia/account/AccountsActivity$3;->this$0:Lcom/nianticlabs/nia/account/AccountsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/nianticlabs/nia/account/AccountsActivity$3;->this$0:Lcom/nianticlabs/nia/account/AccountsActivity;

    invoke-virtual {v0}, Lcom/nianticlabs/nia/account/AccountsActivity;->finish()V

    .line 190
    return-void
.end method
