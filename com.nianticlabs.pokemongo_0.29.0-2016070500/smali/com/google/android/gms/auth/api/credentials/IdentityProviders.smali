.class public final Lcom/google/android/gms/auth/api/credentials/IdentityProviders;
.super Ljava/lang/Object;


# static fields
.field public static final FACEBOOK:Ljava/lang/String; = "https://www.facebook.com"

.field public static final GOOGLE:Ljava/lang/String; = "https://accounts.google.com"

.field public static final LINKEDIN:Ljava/lang/String; = "https://www.linkedin.com"

.field public static final MICROSOFT:Ljava/lang/String; = "https://login.live.com"

.field public static final PAYPAL:Ljava/lang/String; = "https://www.paypal.com"

.field public static final TWITTER:Ljava/lang/String; = "https://twitter.com"

.field public static final YAHOO:Ljava/lang/String; = "https://login.yahoo.com"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getIdentityProviderForAccount(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 2
    .param p0, "account"    # Landroid/accounts/Account;

    .prologue
    const-string v0, "account cannot be null"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.google"

    iget-object v1, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://accounts.google.com"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.facebook.auth.login"

    iget-object v1, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "https://www.facebook.com"

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
