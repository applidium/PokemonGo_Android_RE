.class public Lcom/google/android/gms/common/internal/ResolveAccountRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/internal/ResolveAccountRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field private final zzQd:Landroid/accounts/Account;

.field private final zzagp:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/zzy;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/zzy;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/accounts/Account;I)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "account"    # Landroid/accounts/Account;
    .param p3, "sessionId"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->zzQd:Landroid/accounts/Account;

    iput p3, p0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->zzagp:I

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;I)V
    .locals 1
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "sessionId"    # I

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/common/internal/ResolveAccountRequest;-><init>(ILandroid/accounts/Account;I)V

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

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->zzQd:Landroid/accounts/Account;

    return-object v0
.end method

.method public getSessionId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/internal/ResolveAccountRequest;->zzagp:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/zzy;->zza(Lcom/google/android/gms/common/internal/ResolveAccountRequest;Landroid/os/Parcel;I)V

    return-void
.end method
