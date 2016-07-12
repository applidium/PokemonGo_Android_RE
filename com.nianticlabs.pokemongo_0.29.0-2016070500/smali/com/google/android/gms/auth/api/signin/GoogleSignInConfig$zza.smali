.class public final Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field private zzQd:Landroid/accounts/Account;

.field private zzTi:Z

.field private zzTj:Z

.field private zzTk:Z

.field private zzTl:Ljava/lang/String;

.field private zzTm:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/common/api/Scope;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->zzTg:Lcom/google/android/gms/common/api/Scope;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig$zza;->zzTm:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public zzmc()Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;
    .locals 8

    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig$zza;->zzTm:Ljava/util/Set;

    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig$zza;->zzQd:Landroid/accounts/Account;

    iget-boolean v3, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig$zza;->zzTi:Z

    iget-boolean v4, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig$zza;->zzTj:Z

    iget-boolean v5, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig$zza;->zzTk:Z

    iget-object v6, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig$zza;->zzTl:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;-><init>(Ljava/util/Set;Landroid/accounts/Account;ZZZLjava/lang/String;Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig$1;)V

    return-object v0
.end method
