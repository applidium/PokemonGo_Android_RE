.class public final Lcom/google/android/gms/auth/api/credentials/internal/SaveRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/auth/api/credentials/internal/SaveRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field private final zzSD:Lcom/google/android/gms/auth/api/credentials/Credential;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/internal/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/internal/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/credentials/internal/SaveRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/auth/api/credentials/Credential;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "credential"    # Lcom/google/android/gms/auth/api/credentials/Credential;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/api/credentials/internal/SaveRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/auth/api/credentials/internal/SaveRequest;->zzSD:Lcom/google/android/gms/auth/api/credentials/Credential;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .locals 1
    .param p1, "credential"    # Lcom/google/android/gms/auth/api/credentials/Credential;

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/auth/api/credentials/internal/SaveRequest;-><init>(ILcom/google/android/gms/auth/api/credentials/Credential;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCredential()Lcom/google/android/gms/auth/api/credentials/Credential;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/internal/SaveRequest;->zzSD:Lcom/google/android/gms/auth/api/credentials/Credential;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/api/credentials/internal/zzi;->zza(Lcom/google/android/gms/auth/api/credentials/internal/SaveRequest;Landroid/os/Parcel;I)V

    return-void
.end method
