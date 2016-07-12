.class public Lcom/google/android/gms/common/internal/AuthAccountRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/internal/AuthAccountRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzaeH:Landroid/os/IBinder;

.field final zzaeI:[Lcom/google/android/gms/common/api/Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/AuthAccountRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "accountAccessorBinder"    # Landroid/os/IBinder;
    .param p3, "scopes"    # [Lcom/google/android/gms/common/api/Scope;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/AuthAccountRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/AuthAccountRequest;->zzaeH:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/google/android/gms/common/internal/AuthAccountRequest;->zzaeI:[Lcom/google/android/gms/common/api/Scope;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/internal/zzp;Ljava/util/Set;)V
    .locals 3
    .param p1, "accountAccessor"    # Lcom/google/android/gms/common/internal/zzp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/zzp;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "scopes":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/android/gms/common/api/Scope;>;"
    const/4 v1, 0x1

    invoke-interface {p1}, Lcom/google/android/gms/common/internal/zzp;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/common/api/Scope;

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gms/common/internal/AuthAccountRequest;-><init>(ILandroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;)V

    return-void
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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/zzc;->zza(Lcom/google/android/gms/common/internal/AuthAccountRequest;Landroid/os/Parcel;I)V

    return-void
.end method
