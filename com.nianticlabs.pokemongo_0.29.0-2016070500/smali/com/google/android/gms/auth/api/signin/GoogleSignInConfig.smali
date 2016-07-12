.class public Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig$1;,
        Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig$zza;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzTe:Lcom/google/android/gms/common/api/Scope;

.field public static final zzTf:Lcom/google/android/gms/common/api/Scope;

.field public static final zzTg:Lcom/google/android/gms/common/api/Scope;

.field public static final zzTh:Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;


# instance fields
.field final versionCode:I

.field private zzQd:Landroid/accounts/Account;

.field private final zzSX:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private zzTi:Z

.field private final zzTj:Z

.field private final zzTk:Z

.field private zzTl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "profile"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->zzTe:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "email"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->zzTf:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "openid"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->zzTg:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig$zza;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig$zza;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig$zza;->zzmc()Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->zzTh:Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;

    new-instance v0, Lcom/google/android/gms/auth/api/signin/zze;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/signin/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/util/ArrayList;Landroid/accounts/Account;ZZZLjava/lang/String;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p3, "account"    # Landroid/accounts/Account;
    .param p4, "idTokenRequested"    # Z
    .param p5, "serverAuthCodeRequested"    # Z
    .param p6, "forceCodeForRefreshToken"    # Z
    .param p7, "serverClientId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;",
            "Landroid/accounts/Account;",
            "ZZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "scopes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/common/api/Scope;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->zzSX:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->zzQd:Landroid/accounts/Account;

    iput-boolean p4, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->zzTi:Z

    iput-boolean p5, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->zzTj:Z

    iput-boolean p6, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->zzTk:Z

    iput-object p7, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->zzTl:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/util/Set;Landroid/accounts/Account;ZZZLjava/lang/String;)V
    .locals 8
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "idTokenRequested"    # Z
    .param p4, "serverAuthCodeRequested"    # Z
    .param p5, "forceCodeForRefreshToken"    # Z
    .param p6, "serverClientId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;",
            "Landroid/accounts/Account;",
            "ZZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "scopes":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/android/gms/common/api/Scope;>;"
    const/4 v1, 0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;-><init>(ILjava/util/ArrayList;Landroid/accounts/Account;ZZZLjava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Set;Landroid/accounts/Account;ZZZLjava/lang/String;Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Set;
    .param p2, "x1"    # Landroid/accounts/Account;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Z
    .param p5, "x4"    # Z
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig$1;

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;-><init>(Ljava/util/Set;Landroid/accounts/Account;ZZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    :try_start_0
    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->zzSX:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->zzlS()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->zzSX:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->zzlS()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->zzQd:Landroid/accounts/Account;

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->zzTl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->zzmb()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_2
    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->zzTk:Z

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->zzma()Z

    move-result v2

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->zzTi:Z

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->zzlY()Z

    move-result v2

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->zzTj:Z

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->zzlZ()Z

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->zzQd:Landroid/accounts/Account;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->zzTl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->zzmb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->zzQd:Landroid/accounts/Account;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->zzSX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Scope;->zznG()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzc;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zzc;->zzl(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/internal/zzc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->zzQd:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zzc;->zzl(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/internal/zzc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->zzTl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zzc;->zzl(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/internal/zzc;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->zzTk:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zzc;->zzP(Z)Lcom/google/android/gms/auth/api/signin/internal/zzc;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->zzTi:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zzc;->zzP(Z)Lcom/google/android/gms/auth/api/signin/internal/zzc;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->zzTj:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zzc;->zzP(Z)Lcom/google/android/gms/auth/api/signin/internal/zzc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzc;->zzmd()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/api/signin/zze;->zza(Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzlS()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->zzSX:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public zzlY()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->zzTi:Z

    return v0
.end method

.method public zzlZ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->zzTj:Z

    return v0
.end method

.method public zzma()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->zzTk:Z

    return v0
.end method

.method public zzmb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->zzTl:Ljava/lang/String;

    return-object v0
.end method
