.class public final Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static zzTr:I


# instance fields
.field final versionCode:I

.field private zzTl:Ljava/lang/String;

.field private final zzTs:Ljava/lang/String;

.field private zzTt:Lcom/google/android/gms/auth/api/signin/EmailSignInConfig;

.field private zzTu:Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;

.field private zzTv:Lcom/google/android/gms/auth/api/signin/FacebookSignInConfig;

.field private zzTw:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1f

    sput v0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzTr:I

    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/api/signin/EmailSignInConfig;Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;Lcom/google/android/gms/auth/api/signin/FacebookSignInConfig;Ljava/lang/String;)V
    .locals 1
    .param p1, "versionCode"    # I
    .param p2, "consumerPkgName"    # Ljava/lang/String;
    .param p3, "serverClientId"    # Ljava/lang/String;
    .param p4, "emailConfig"    # Lcom/google/android/gms/auth/api/signin/EmailSignInConfig;
    .param p5, "googleConfig"    # Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;
    .param p6, "facebookConfig"    # Lcom/google/android/gms/auth/api/signin/FacebookSignInConfig;
    .param p7, "apiKey"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->versionCode:I

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzcr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzTs:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzTl:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzTt:Lcom/google/android/gms/auth/api/signin/EmailSignInConfig;

    iput-object p5, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzTu:Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;

    iput-object p6, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzTv:Lcom/google/android/gms/auth/api/signin/FacebookSignInConfig;

    iput-object p7, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzTw:Ljava/lang/String;

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
    check-cast p1, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzTs:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzTl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzmb()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzTw:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzmi()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzTt:Lcom/google/android/gms/auth/api/signin/EmailSignInConfig;

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzmf()Lcom/google/android/gms/auth/api/signin/EmailSignInConfig;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_3
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzTv:Lcom/google/android/gms/auth/api/signin/FacebookSignInConfig;

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzmh()Lcom/google/android/gms/auth/api/signin/FacebookSignInConfig;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_4
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzTu:Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;

    if-nez v1, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzmg()Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_5
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzTl:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzmb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzTw:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzmi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzTt:Lcom/google/android/gms/auth/api/signin/EmailSignInConfig;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzmf()Lcom/google/android/gms/auth/api/signin/EmailSignInConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/api/signin/EmailSignInConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzTv:Lcom/google/android/gms/auth/api/signin/FacebookSignInConfig;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzmh()Lcom/google/android/gms/auth/api/signin/FacebookSignInConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/api/signin/FacebookSignInConfig;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzTu:Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzmg()Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_5

    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 2

    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzc;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzTs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zzc;->zzl(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/internal/zzc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzTl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zzc;->zzl(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/internal/zzc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzTw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zzc;->zzl(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/internal/zzc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzTt:Lcom/google/android/gms/auth/api/signin/EmailSignInConfig;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zzc;->zzl(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/internal/zzc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzTu:Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zzc;->zzl(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/internal/zzc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzTv:Lcom/google/android/gms/auth/api/signin/FacebookSignInConfig;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/internal/zzc;->zzl(Ljava/lang/Object;)Lcom/google/android/gms/auth/api/signin/internal/zzc;

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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/api/signin/internal/zzh;->zza(Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzmb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzTl:Ljava/lang/String;

    return-object v0
.end method

.method public zzme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzTs:Ljava/lang/String;

    return-object v0
.end method

.method public zzmf()Lcom/google/android/gms/auth/api/signin/EmailSignInConfig;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzTt:Lcom/google/android/gms/auth/api/signin/EmailSignInConfig;

    return-object v0
.end method

.method public zzmg()Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzTu:Lcom/google/android/gms/auth/api/signin/GoogleSignInConfig;

    return-object v0
.end method

.method public zzmh()Lcom/google/android/gms/auth/api/signin/FacebookSignInConfig;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzTv:Lcom/google/android/gms/auth/api/signin/FacebookSignInConfig;

    return-object v0
.end method

.method public zzmi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->zzTw:Ljava/lang/String;

    return-object v0
.end method
