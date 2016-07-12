.class public final Lcom/google/android/gms/internal/zzes;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationAdRequest;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# instance fields
.field private final zzaT:Ljava/util/Date;

.field private final zzaV:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaW:Z

.field private final zzaX:Landroid/location/Location;

.field private final zzsR:I

.field private final zzzI:I


# direct methods
.method public constructor <init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/location/Location;",
            "ZI)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzes;->zzaT:Ljava/util/Date;

    iput p2, p0, Lcom/google/android/gms/internal/zzes;->zzsR:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzes;->zzaV:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzes;->zzaX:Landroid/location/Location;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzes;->zzaW:Z

    iput p6, p0, Lcom/google/android/gms/internal/zzes;->zzzI:I

    return-void
.end method


# virtual methods
.method public getBirthday()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzes;->zzaT:Ljava/util/Date;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzes;->zzsR:I

    return v0
.end method

.method public getKeywords()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzes;->zzaV:Ljava/util/Set;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzes;->zzaX:Landroid/location/Location;

    return-object v0
.end method

.method public isTesting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzes;->zzaW:Z

    return v0
.end method

.method public taggedForChildDirectedTreatment()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzes;->zzzI:I

    return v0
.end method
