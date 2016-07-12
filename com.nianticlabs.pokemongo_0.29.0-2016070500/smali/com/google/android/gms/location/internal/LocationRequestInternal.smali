.class public Lcom/google/android/gms/location/internal/LocationRequestInternal;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/internal/zzm;

.field static final zzaFD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/internal/ClientIdentity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mTag:Ljava/lang/String;

.field private final mVersionCode:I

.field zzaFE:Z

.field zzaFF:Z

.field zzaFG:Z

.field zzaFH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/internal/ClientIdentity;",
            ">;"
        }
    .end annotation
.end field

.field zzaFI:Z

.field zzasN:Lcom/google/android/gms/location/LocationRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->zzaFD:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/location/internal/zzm;

    invoke-direct {v0}, Lcom/google/android/gms/location/internal/zzm;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->CREATOR:Lcom/google/android/gms/location/internal/zzm;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/location/LocationRequest;ZZZLjava/util/List;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "locationRequest"    # Lcom/google/android/gms/location/LocationRequest;
    .param p3, "requestNlpDebugInfo"    # Z
    .param p4, "restorePendingIntentListeners"    # Z
    .param p5, "triggerUpdate"    # Z
    .param p7, "tag"    # Ljava/lang/String;
    .param p8, "hideFromAppOps"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/location/LocationRequest;",
            "ZZZ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/internal/ClientIdentity;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p6, "clients":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/location/internal/ClientIdentity;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->zzasN:Lcom/google/android/gms/location/LocationRequest;

    iput-boolean p3, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->zzaFE:Z

    iput-boolean p4, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->zzaFF:Z

    iput-boolean p5, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->zzaFG:Z

    iput-object p6, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->zzaFH:Ljava/util/List;

    iput-object p7, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->mTag:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->zzaFI:Z

    return-void
.end method

.method public static zza(Ljava/lang/String;Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/internal/LocationRequestInternal;
    .locals 9

    const/4 v3, 0x0

    const/4 v1, 0x1

    new-instance v0, Lcom/google/android/gms/location/internal/LocationRequestInternal;

    sget-object v6, Lcom/google/android/gms/location/internal/LocationRequestInternal;->zzaFD:Ljava/util/List;

    move-object v2, p1

    move v4, v1

    move v5, v1

    move-object v7, p0

    move v8, v3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/location/internal/LocationRequestInternal;-><init>(ILcom/google/android/gms/location/LocationRequest;ZZZLjava/util/List;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/internal/LocationRequestInternal;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->zza(Ljava/lang/String;Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/location/internal/LocationRequestInternal;

    if-nez v1, :cond_1

    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcom/google/android/gms/location/internal/LocationRequestInternal;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->zzasN:Lcom/google/android/gms/location/LocationRequest;

    iget-object v2, p1, Lcom/google/android/gms/location/internal/LocationRequestInternal;->zzasN:Lcom/google/android/gms/location/LocationRequest;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->zzaFE:Z

    iget-boolean v2, p1, Lcom/google/android/gms/location/internal/LocationRequestInternal;->zzaFE:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->zzaFF:Z

    iget-boolean v2, p1, Lcom/google/android/gms/location/internal/LocationRequestInternal;->zzaFF:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->zzaFG:Z

    iget-boolean v2, p1, Lcom/google/android/gms/location/internal/LocationRequestInternal;->zzaFG:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->zzaFI:Z

    iget-boolean v2, p1, Lcom/google/android/gms/location/internal/LocationRequestInternal;->zzaFI:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->zzaFH:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/location/internal/LocationRequestInternal;->zzaFH:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->zzasN:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationRequest;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->zzasN:Lcom/google/android/gms/location/LocationRequest;

    invoke-virtual {v1}, Lcom/google/android/gms/location/LocationRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, " tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, " nlpDebug="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->zzaFE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " trigger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->zzaFG:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " restorePIListeners="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->zzaFF:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " hideAppOps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->zzaFI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " clients="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/location/internal/LocationRequestInternal;->zzaFH:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/internal/zzm;->zza(Lcom/google/android/gms/location/internal/LocationRequestInternal;Landroid/os/Parcel;I)V

    return-void
.end method
