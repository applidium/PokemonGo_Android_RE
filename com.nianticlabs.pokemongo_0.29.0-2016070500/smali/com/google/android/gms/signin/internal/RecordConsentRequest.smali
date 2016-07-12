.class public Lcom/google/android/gms/signin/internal/RecordConsentRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/signin/internal/RecordConsentRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field private final zzQd:Landroid/accounts/Account;

.field private final zzTl:Ljava/lang/String;

.field private final zzaVk:[Lcom/google/android/gms/common/api/Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/signin/internal/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/signin/internal/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/signin/internal/RecordConsentRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/accounts/Account;[Lcom/google/android/gms/common/api/Scope;Ljava/lang/String;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "scopesToConsent"    # [Lcom/google/android/gms/common/api/Scope;
    .param p4, "serverClientId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/signin/internal/RecordConsentRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/signin/internal/RecordConsentRequest;->zzQd:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/google/android/gms/signin/internal/RecordConsentRequest;->zzaVk:[Lcom/google/android/gms/common/api/Scope;

    iput-object p4, p0, Lcom/google/android/gms/signin/internal/RecordConsentRequest;->zzTl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/signin/internal/RecordConsentRequest;->zzQd:Landroid/accounts/Account;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/signin/internal/zzg;->zza(Lcom/google/android/gms/signin/internal/RecordConsentRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzCj()[Lcom/google/android/gms/common/api/Scope;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/signin/internal/RecordConsentRequest;->zzaVk:[Lcom/google/android/gms/common/api/Scope;

    return-object v0
.end method

.method public zzmb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/signin/internal/RecordConsentRequest;->zzTl:Ljava/lang/String;

    return-object v0
.end method
