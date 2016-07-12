.class Lcom/nianticlabs/nia/account/AccountsActivity$2;
.super Ljava/lang/Object;
.source "AccountsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/nia/account/AccountsActivity;->askUserToRecover(Lcom/google/android/gms/auth/UserRecoverableAuthException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/nia/account/AccountsActivity;

.field final synthetic val$e:Lcom/google/android/gms/auth/UserRecoverableAuthException;


# direct methods
.method constructor <init>(Lcom/nianticlabs/nia/account/AccountsActivity;Lcom/google/android/gms/auth/UserRecoverableAuthException;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticlabs/nia/account/AccountsActivity;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/nianticlabs/nia/account/AccountsActivity$2;->this$0:Lcom/nianticlabs/nia/account/AccountsActivity;

    iput-object p2, p0, Lcom/nianticlabs/nia/account/AccountsActivity$2;->val$e:Lcom/google/android/gms/auth/UserRecoverableAuthException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/nianticlabs/nia/account/AccountsActivity$2;->this$0:Lcom/nianticlabs/nia/account/AccountsActivity;

    iget-object v1, p0, Lcom/nianticlabs/nia/account/AccountsActivity$2;->val$e:Lcom/google/android/gms/auth/UserRecoverableAuthException;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/UserRecoverableAuthException;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/nianticlabs/nia/account/AccountsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 181
    return-void
.end method
