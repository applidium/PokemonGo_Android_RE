.class public Lcom/nianticlabs/nia/account/AccountsActivity;
.super Landroid/app/Activity;
.source "AccountsActivity.java"


# static fields
.field static final AUTH_TOKEN_SCOPE_PREFIX:Ljava/lang/String; = "audience:server:client_id:"

.field static EXTRA_OAUTH_CLIENT_ID:Ljava/lang/String; = null

.field private static final REQUEST_CHOOSE_ACCOUNT:I = 0x1

.field private static final REQUEST_GET_AUTH:I = 0x2

.field private static TAG:Ljava/lang/String;


# instance fields
.field private accountManager:Lcom/nianticlabs/nia/account/NianticAccountManager;

.field private authInProgress:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "AccountsActivity"

    sput-object v0, Lcom/nianticlabs/nia/account/AccountsActivity;->TAG:Ljava/lang/String;

    .line 30
    const-string v0, "oauthClientId"

    sput-object v0, Lcom/nianticlabs/nia/account/AccountsActivity;->EXTRA_OAUTH_CLIENT_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticlabs/nia/account/AccountsActivity;->authInProgress:Z

    return-void
.end method

.method static synthetic access$000(Lcom/nianticlabs/nia/account/AccountsActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/nianticlabs/nia/account/AccountsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/nianticlabs/nia/account/AccountsActivity;->getAuthTokenBlocking(Lcom/nianticlabs/nia/account/AccountsActivity;Ljava/lang/String;)V

    return-void
.end method

.method private askUserToRecover(Lcom/google/android/gms/auth/UserRecoverableAuthException;)V
    .locals 1
    .param p1, "e"    # Lcom/google/android/gms/auth/UserRecoverableAuthException;

    .prologue
    .line 177
    new-instance v0, Lcom/nianticlabs/nia/account/AccountsActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/nianticlabs/nia/account/AccountsActivity$2;-><init>(Lcom/nianticlabs/nia/account/AccountsActivity;Lcom/google/android/gms/auth/UserRecoverableAuthException;)V

    invoke-virtual {p0, v0}, Lcom/nianticlabs/nia/account/AccountsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 183
    return-void
.end method

.method private failAuth(Lcom/nianticlabs/nia/account/NianticAccountManager$Status;Ljava/lang/String;)V
    .locals 2
    .param p1, "status"    # Lcom/nianticlabs/nia/account/NianticAccountManager$Status;
    .param p2, "error"    # Ljava/lang/String;

    .prologue
    .line 171
    sget-object v0, Lcom/nianticlabs/nia/account/AccountsActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/nianticlabs/nia/account/AccountsActivity;->accountManager:Lcom/nianticlabs/nia/account/NianticAccountManager;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/nianticlabs/nia/account/NianticAccountManager;->setAuthToken(Lcom/nianticlabs/nia/account/NianticAccountManager$Status;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/nianticlabs/nia/account/AccountsActivity;->finish()V

    .line 174
    return-void
.end method

.method private getAuth(Ljava/lang/String;)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 133
    new-instance v0, Lcom/nianticlabs/nia/account/AccountsActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/nianticlabs/nia/account/AccountsActivity$1;-><init>(Lcom/nianticlabs/nia/account/AccountsActivity;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 138
    invoke-virtual {v0, v1}, Lcom/nianticlabs/nia/account/AccountsActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 139
    return-void
.end method

.method private getAuthOrAccount()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 121
    iget-object v1, p0, Lcom/nianticlabs/nia/account/AccountsActivity;->accountManager:Lcom/nianticlabs/nia/account/NianticAccountManager;

    invoke-virtual {v1}, Lcom/nianticlabs/nia/account/NianticAccountManager;->getAccountName()Ljava/lang/String;

    move-result-object v8

    .line 122
    .local v8, "accountName":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 123
    invoke-direct {p0, v8}, Lcom/nianticlabs/nia/account/AccountsActivity;->getAuth(Ljava/lang/String;)V

    .line 130
    :goto_0
    return-void

    .line 125
    :cond_0
    new-array v2, v10, [Ljava/lang/String;

    const-string v1, "com.google"

    aput-object v1, v2, v3

    move-object v1, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/common/AccountPicker;->newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/ArrayList;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v9

    .line 128
    .local v9, "googlePicker":Landroid/content/Intent;
    invoke-virtual {p0, v9, v10}, Lcom/nianticlabs/nia/account/AccountsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private static getAuthTokenBlocking(Lcom/nianticlabs/nia/account/AccountsActivity;Ljava/lang/String;)V
    .locals 9
    .param p0, "activity"    # Lcom/nianticlabs/nia/account/AccountsActivity;
    .param p1, "accountName"    # Ljava/lang/String;

    .prologue
    .line 146
    :try_start_0
    sget-object v6, Lcom/nianticlabs/nia/account/AccountsActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Authenticating with account: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {p0}, Lcom/nianticlabs/nia/account/AccountsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    sget-object v7, Lcom/nianticlabs/nia/account/AccountsActivity;->EXTRA_OAUTH_CLIENT_ID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "clientId":Ljava/lang/String;
    sget-object v6, Lcom/nianticlabs/nia/account/AccountsActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Authenticating with client id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "audience:server:client_id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, "scope":Ljava/lang/String;
    sget-object v6, Lcom/nianticlabs/nia/account/AccountsActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Authenticating with scope: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {p0, p1, v2}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 154
    .local v3, "token":Ljava/lang/String;
    iget-object v6, p0, Lcom/nianticlabs/nia/account/AccountsActivity;->accountManager:Lcom/nianticlabs/nia/account/NianticAccountManager;

    sget-object v7, Lcom/nianticlabs/nia/account/NianticAccountManager$Status;->OK:Lcom/nianticlabs/nia/account/NianticAccountManager$Status;

    invoke-virtual {v6, v7, v3}, Lcom/nianticlabs/nia/account/NianticAccountManager;->setAuthToken(Lcom/nianticlabs/nia/account/NianticAccountManager$Status;Ljava/lang/String;)V

    .line 155
    invoke-direct {p0}, Lcom/nianticlabs/nia/account/AccountsActivity;->postFinish()V
    :try_end_0
    .catch Lcom/google/android/gms/auth/UserRecoverableAuthException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_0 .. :try_end_0} :catch_2

    .line 168
    .end local v1    # "clientId":Ljava/lang/String;
    .end local v2    # "scope":Ljava/lang/String;
    .end local v3    # "token":Ljava/lang/String;
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v5

    .line 157
    .local v5, "userAuthEx":Lcom/google/android/gms/auth/UserRecoverableAuthException;
    invoke-direct {p0, v5}, Lcom/nianticlabs/nia/account/AccountsActivity;->askUserToRecover(Lcom/google/android/gms/auth/UserRecoverableAuthException;)V

    goto :goto_0

    .line 158
    .end local v5    # "userAuthEx":Lcom/google/android/gms/auth/UserRecoverableAuthException;
    :catch_1
    move-exception v4

    .line 159
    .local v4, "transientEx":Ljava/io/IOException;
    sget-object v6, Lcom/nianticlabs/nia/account/AccountsActivity;->TAG:Ljava/lang/String;

    const-string v7, "Unable to get authToken at this time."

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    iget-object v6, p0, Lcom/nianticlabs/nia/account/AccountsActivity;->accountManager:Lcom/nianticlabs/nia/account/NianticAccountManager;

    sget-object v7, Lcom/nianticlabs/nia/account/NianticAccountManager$Status;->NON_RECOVERABLE_ERROR:Lcom/nianticlabs/nia/account/NianticAccountManager$Status;

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lcom/nianticlabs/nia/account/NianticAccountManager;->setAuthToken(Lcom/nianticlabs/nia/account/NianticAccountManager$Status;Ljava/lang/String;)V

    .line 162
    invoke-direct {p0}, Lcom/nianticlabs/nia/account/AccountsActivity;->postFinish()V

    goto :goto_0

    .line 163
    .end local v4    # "transientEx":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 164
    .local v0, "authEx":Lcom/google/android/gms/auth/GoogleAuthException;
    sget-object v6, Lcom/nianticlabs/nia/account/AccountsActivity;->TAG:Ljava/lang/String;

    const-string v7, "User cannot be authenticated."

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    iget-object v6, p0, Lcom/nianticlabs/nia/account/AccountsActivity;->accountManager:Lcom/nianticlabs/nia/account/NianticAccountManager;

    sget-object v7, Lcom/nianticlabs/nia/account/NianticAccountManager$Status;->NON_RECOVERABLE_ERROR:Lcom/nianticlabs/nia/account/NianticAccountManager$Status;

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lcom/nianticlabs/nia/account/NianticAccountManager;->setAuthToken(Lcom/nianticlabs/nia/account/NianticAccountManager$Status;Ljava/lang/String;)V

    .line 166
    invoke-direct {p0}, Lcom/nianticlabs/nia/account/AccountsActivity;->postFinish()V

    goto :goto_0
.end method

.method private postFinish()V
    .locals 1

    .prologue
    .line 186
    new-instance v0, Lcom/nianticlabs/nia/account/AccountsActivity$3;

    invoke-direct {v0, p0}, Lcom/nianticlabs/nia/account/AccountsActivity$3;-><init>(Lcom/nianticlabs/nia/account/AccountsActivity;)V

    invoke-virtual {p0, v0}, Lcom/nianticlabs/nia/account/AccountsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 192
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected requestCode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "error":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 117
    sget-object v2, Lcom/nianticlabs/nia/account/AccountsActivity;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :goto_0
    return-void

    .line 89
    :pswitch_0
    if-nez p2, :cond_0

    .line 90
    sget-object v2, Lcom/nianticlabs/nia/account/NianticAccountManager$Status;->USER_CANCELED_LOGIN:Lcom/nianticlabs/nia/account/NianticAccountManager$Status;

    const-string v3, "User decided to cancel account selection."

    invoke-direct {p0, v2, v3}, Lcom/nianticlabs/nia/account/AccountsActivity;->failAuth(Lcom/nianticlabs/nia/account/NianticAccountManager$Status;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_0
    if-nez p3, :cond_1

    .line 96
    sget-object v2, Lcom/nianticlabs/nia/account/NianticAccountManager$Status;->NON_RECOVERABLE_ERROR:Lcom/nianticlabs/nia/account/NianticAccountManager$Status;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to choose null account, resultCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/nianticlabs/nia/account/AccountsActivity;->failAuth(Lcom/nianticlabs/nia/account/NianticAccountManager$Status;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_1
    const-string v2, "authAccount"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "accountName":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 102
    :cond_2
    sget-object v2, Lcom/nianticlabs/nia/account/NianticAccountManager$Status;->NON_RECOVERABLE_ERROR:Lcom/nianticlabs/nia/account/NianticAccountManager$Status;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to choose unnamed account, resultCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/nianticlabs/nia/account/AccountsActivity;->failAuth(Lcom/nianticlabs/nia/account/NianticAccountManager$Status;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_3
    iget-object v2, p0, Lcom/nianticlabs/nia/account/AccountsActivity;->accountManager:Lcom/nianticlabs/nia/account/NianticAccountManager;

    invoke-virtual {v2, v0}, Lcom/nianticlabs/nia/account/NianticAccountManager;->setAccountName(Ljava/lang/String;)V

    .line 107
    invoke-direct {p0, v0}, Lcom/nianticlabs/nia/account/AccountsActivity;->getAuth(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    .end local v0    # "accountName":Ljava/lang/String;
    :pswitch_1
    invoke-direct {p0}, Lcom/nianticlabs/nia/account/AccountsActivity;->getAuthOrAccount()V

    goto :goto_0

    .line 87
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/nianticlabs/nia/account/AccountsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "accounts_activity"

    const-string v4, "layout"

    invoke-virtual {p0}, Lcom/nianticlabs/nia/account/AccountsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 48
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lcom/nianticlabs/nia/account/AccountsActivity;->setContentView(I)V

    .line 50
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nianticlabs/nia/account/AccountsActivity;->accountManager:Lcom/nianticlabs/nia/account/NianticAccountManager;

    .line 51
    invoke-static {}, Lcom/nianticlabs/nia/account/NianticAccountManager;->getInstance()Ljava/lang/ref/WeakReference;

    move-result-object v1

    .line 52
    .local v1, "weakAccountManager":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/nianticlabs/nia/account/NianticAccountManager;>;"
    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nianticlabs/nia/account/NianticAccountManager;

    iput-object v2, p0, Lcom/nianticlabs/nia/account/AccountsActivity;->accountManager:Lcom/nianticlabs/nia/account/NianticAccountManager;

    .line 56
    :cond_0
    iget-object v2, p0, Lcom/nianticlabs/nia/account/AccountsActivity;->accountManager:Lcom/nianticlabs/nia/account/NianticAccountManager;

    if-nez v2, :cond_1

    .line 57
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unable to locate NianticAccountManager"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 65
    invoke-static {p0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    .line 66
    .local v0, "resultCode":I
    if-eqz v0, :cond_1

    .line 70
    sget-object v1, Lcom/nianticlabs/nia/account/AccountsActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Google Play Services not available, need to do something. Error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v1, p0, Lcom/nianticlabs/nia/account/AccountsActivity;->accountManager:Lcom/nianticlabs/nia/account/NianticAccountManager;

    sget-object v2, Lcom/nianticlabs/nia/account/NianticAccountManager$Status;->NON_RECOVERABLE_ERROR:Lcom/nianticlabs/nia/account/NianticAccountManager$Status;

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/nianticlabs/nia/account/NianticAccountManager;->setAuthToken(Lcom/nianticlabs/nia/account/NianticAccountManager$Status;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/nianticlabs/nia/account/AccountsActivity;->finish()V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-boolean v1, p0, Lcom/nianticlabs/nia/account/AccountsActivity;->authInProgress:Z

    if-nez v1, :cond_0

    .line 78
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nianticlabs/nia/account/AccountsActivity;->authInProgress:Z

    .line 79
    invoke-direct {p0}, Lcom/nianticlabs/nia/account/AccountsActivity;->getAuthOrAccount()V

    goto :goto_0
.end method
