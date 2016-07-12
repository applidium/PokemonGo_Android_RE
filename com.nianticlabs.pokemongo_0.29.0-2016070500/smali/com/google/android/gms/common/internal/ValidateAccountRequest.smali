.class public Lcom/google/android/gms/common/internal/ValidateAccountRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/internal/ValidateAccountRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field private final zzSb:Ljava/lang/String;

.field final zzaeH:Landroid/os/IBinder;

.field private final zzaeI:[Lcom/google/android/gms/common/api/Scope;

.field private final zzagu:I

.field private final zzagv:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/zzad;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/zzad;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/ValidateAccountRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILandroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "clientVersion"    # I
    .param p3, "accountAccessorBinder"    # Landroid/os/IBinder;
    .param p4, "scopes"    # [Lcom/google/android/gms/common/api/Scope;
    .param p5, "extraArgs"    # Landroid/os/Bundle;
    .param p6, "callingPackage"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/ValidateAccountRequest;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/common/internal/ValidateAccountRequest;->zzagu:I

    iput-object p3, p0, Lcom/google/android/gms/common/internal/ValidateAccountRequest;->zzaeH:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/google/android/gms/common/internal/ValidateAccountRequest;->zzaeI:[Lcom/google/android/gms/common/api/Scope;

    iput-object p5, p0, Lcom/google/android/gms/common/internal/ValidateAccountRequest;->zzagv:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/google/android/gms/common/internal/ValidateAccountRequest;->zzSb:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/internal/zzp;[Lcom/google/android/gms/common/api/Scope;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "accountAccessor"    # Lcom/google/android/gms/common/internal/zzp;
    .param p2, "scopes"    # [Lcom/google/android/gms/common/api/Scope;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "extraArgs"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    sget v2, Lcom/google/android/gms/common/GoogleApiAvailability;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    if-nez p1, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v0, p0

    move-object v4, p2

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/ValidateAccountRequest;-><init>(IILandroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/common/internal/zzp;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCallingPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ValidateAccountRequest;->zzSb:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/zzad;->zza(Lcom/google/android/gms/common/internal/ValidateAccountRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzpu()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/internal/ValidateAccountRequest;->zzagu:I

    return v0
.end method

.method public zzpv()[Lcom/google/android/gms/common/api/Scope;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ValidateAccountRequest;->zzaeI:[Lcom/google/android/gms/common/api/Scope;

    return-object v0
.end method

.method public zzpw()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ValidateAccountRequest;->zzagv:Landroid/os/Bundle;

    return-object v0
.end method
