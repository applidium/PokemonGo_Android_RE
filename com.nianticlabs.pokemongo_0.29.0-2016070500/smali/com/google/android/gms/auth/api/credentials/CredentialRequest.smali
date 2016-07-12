.class public final Lcom/google/android/gms/auth/api/credentials/CredentialRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/credentials/CredentialRequest$1;,
        Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/auth/api/credentials/CredentialRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field private final zzSo:Z

.field private final zzSp:[Ljava/lang/String;

.field private final zzSq:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

.field private final zzSr:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IZ[Ljava/lang/String;Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "supportsPasswordLogin"    # Z
    .param p3, "accountTypes"    # [Ljava/lang/String;
    .param p4, "credentialPickerConfig"    # Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;
    .param p5, "credentialHintPickerConfig"    # Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->mVersionCode:I

    iput-boolean p2, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzSo:Z

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzSp:[Ljava/lang/String;

    if-nez p4, :cond_0

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;->build()Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    move-result-object p4

    .end local p4    # "credentialPickerConfig":Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;
    :cond_0
    iput-object p4, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzSq:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    if-nez p5, :cond_1

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;->build()Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    move-result-object p5

    .end local p5    # "credentialHintPickerConfig":Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;
    :cond_1
    iput-object p5, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzSr:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;)V
    .locals 6
    .param p1, "builder"    # Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;

    .prologue
    const/4 v1, 0x2

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->zza(Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;)Z

    move-result v2

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->zzb(Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->zzc(Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;)Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    move-result-object v4

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->zzd(Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;)Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;-><init>(IZ[Ljava/lang/String;Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;Lcom/google/android/gms/auth/api/credentials/CredentialRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;
    .param p2, "x1"    # Lcom/google/android/gms/auth/api/credentials/CredentialRequest$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;-><init>(Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccountTypes()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzSp:[Ljava/lang/String;

    return-object v0
.end method

.method public getCredentialHintPickerConfig()Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzSr:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    return-object v0
.end method

.method public getCredentialPickerConfig()Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzSq:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    return-object v0
.end method

.method public getSupportsPasswordLogin()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzSo:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/api/credentials/zzc;->zza(Lcom/google/android/gms/auth/api/credentials/CredentialRequest;Landroid/os/Parcel;I)V

    return-void
.end method
