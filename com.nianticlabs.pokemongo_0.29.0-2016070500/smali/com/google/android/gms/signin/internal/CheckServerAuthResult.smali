.class public Lcom/google/android/gms/signin/internal/CheckServerAuthResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/signin/internal/CheckServerAuthResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field final zzaVi:Z

.field final zzaVj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/signin/internal/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/signin/internal/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/signin/internal/CheckServerAuthResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IZLjava/util/List;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "newAuthCodeRequired"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "additionalScopes":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/common/api/Scope;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/signin/internal/CheckServerAuthResult;->mVersionCode:I

    iput-boolean p2, p0, Lcom/google/android/gms/signin/internal/CheckServerAuthResult;->zzaVi:Z

    iput-object p3, p0, Lcom/google/android/gms/signin/internal/CheckServerAuthResult;->zzaVj:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ZLjava/util/Set;)V
    .locals 2
    .param p1, "newAuthCodeRequired"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "additionalScopes":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/android/gms/common/api/Scope;>;"
    const/4 v0, 0x1

    invoke-static {p2}, Lcom/google/android/gms/signin/internal/CheckServerAuthResult;->zze(Ljava/util/Set;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/signin/internal/CheckServerAuthResult;-><init>(IZLjava/util/List;)V

    return-void
.end method

.method private static zze(Ljava/util/Set;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
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
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/signin/internal/zzc;->zza(Lcom/google/android/gms/signin/internal/CheckServerAuthResult;Landroid/os/Parcel;I)V

    return-void
.end method
