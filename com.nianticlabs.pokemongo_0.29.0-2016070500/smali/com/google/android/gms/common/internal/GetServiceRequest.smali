.class public Lcom/google/android/gms/common/internal/GetServiceRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/internal/GetServiceRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final version:I

.field final zzafq:I

.field zzafr:I

.field zzafs:Ljava/lang/String;

.field zzaft:Landroid/os/IBinder;

.field zzafu:[Lcom/google/android/gms/common/api/Scope;

.field zzafv:Landroid/os/Bundle;

.field zzafw:Landroid/accounts/Account;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/GetServiceRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "serviceId"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->version:I

    sget v0, Lcom/google/android/gms/common/GoogleApiAvailability;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    iput v0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzafr:I

    iput p1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzafq:I

    return-void
.end method

.method constructor <init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "serviceId"    # I
    .param p3, "clientVersion"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "accountAccessorBinder"    # Landroid/os/IBinder;
    .param p6, "scopes"    # [Lcom/google/android/gms/common/api/Scope;
    .param p7, "extraArgs"    # Landroid/os/Bundle;
    .param p8, "clientRequestedAccount"    # Landroid/accounts/Account;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->version:I

    iput p2, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzafq:I

    iput p3, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzafr:I

    iput-object p4, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzafs:Ljava/lang/String;

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    invoke-direct {p0, p5}, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzaG(Landroid/os/IBinder;)Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzafw:Landroid/accounts/Account;

    :goto_0
    iput-object p6, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzafu:[Lcom/google/android/gms/common/api/Scope;

    iput-object p7, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzafv:Landroid/os/Bundle;

    return-void

    :cond_0
    iput-object p5, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzaft:Landroid/os/IBinder;

    iput-object p8, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzafw:Landroid/accounts/Account;

    goto :goto_0
.end method

.method private zzaG(Landroid/os/IBinder;)Landroid/accounts/Account;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzp$zza;->zzaH(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zza;->zzb(Lcom/google/android/gms/common/internal/zzp;)Landroid/accounts/Account;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/zzi;->zza(Lcom/google/android/gms/common/internal/GetServiceRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzc(Landroid/accounts/Account;)Lcom/google/android/gms/common/internal/GetServiceRequest;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzafw:Landroid/accounts/Account;

    return-object p0
.end method

.method public zzc(Lcom/google/android/gms/common/internal/zzp;)Lcom/google/android/gms/common/internal/GetServiceRequest;
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/common/internal/zzp;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzaft:Landroid/os/IBinder;

    :cond_0
    return-object p0
.end method

.method public zzcl(Ljava/lang/String;)Lcom/google/android/gms/common/internal/GetServiceRequest;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzafs:Ljava/lang/String;

    return-object p0
.end method

.method public zzd(Ljava/util/Collection;)Lcom/google/android/gms/common/internal/GetServiceRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Lcom/google/android/gms/common/internal/GetServiceRequest;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/common/api/Scope;

    iput-object v0, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzafu:[Lcom/google/android/gms/common/api/Scope;

    return-object p0
.end method

.method public zzg(Landroid/os/Bundle;)Lcom/google/android/gms/common/internal/GetServiceRequest;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzafv:Landroid/os/Bundle;

    return-object p0
.end method
