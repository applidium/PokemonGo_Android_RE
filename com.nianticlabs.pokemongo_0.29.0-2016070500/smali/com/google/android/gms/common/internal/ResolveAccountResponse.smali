.class public Lcom/google/android/gms/common/internal/ResolveAccountResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/internal/ResolveAccountResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field private zzabG:Z

.field zzaeH:Landroid/os/IBinder;

.field private zzagq:Lcom/google/android/gms/common/ConnectionResult;

.field private zzagr:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/zzz;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/zzz;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "connectionResultStatusCode"    # I

    .prologue
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;-><init>(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Lcom/google/android/gms/common/ConnectionResult;ZZ)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "accountAccessorBinder"    # Landroid/os/IBinder;
    .param p3, "connectionResult"    # Lcom/google/android/gms/common/ConnectionResult;
    .param p4, "saveDefaultAccount"    # Z
    .param p5, "isFromCrossClientAuth"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->zzaeH:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->zzagq:Lcom/google/android/gms/common/ConnectionResult;

    iput-boolean p4, p0, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->zzabG:Z

    iput-boolean p5, p0, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->zzagr:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 6
    .param p1, "result"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;-><init>(ILandroid/os/IBinder;Lcom/google/android/gms/common/ConnectionResult;ZZ)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/common/internal/ResolveAccountResponse;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->zzagq:Lcom/google/android/gms/common/ConnectionResult;

    iget-object v3, p1, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->zzagq:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/ConnectionResult;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->zzpq()Lcom/google/android/gms/common/internal/zzp;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->zzpq()Lcom/google/android/gms/common/internal/zzp;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/internal/zzz;->zza(Lcom/google/android/gms/common/internal/ResolveAccountResponse;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzpq()Lcom/google/android/gms/common/internal/zzp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->zzaeH:Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzp$zza;->zzaH(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzp;

    move-result-object v0

    return-object v0
.end method

.method public zzpr()Lcom/google/android/gms/common/ConnectionResult;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->zzagq:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method public zzps()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->zzabG:Z

    return v0
.end method

.method public zzpt()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/ResolveAccountResponse;->zzagr:Z

    return v0
.end method
