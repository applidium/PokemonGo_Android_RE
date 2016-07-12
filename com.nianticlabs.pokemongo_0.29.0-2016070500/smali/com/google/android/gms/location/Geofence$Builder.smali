.class public final Lcom/google/android/gms/location/Geofence$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/Geofence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zzBY:Ljava/lang/String;

.field private zzaEi:I

.field private zzaEj:J

.field private zzaEk:S

.field private zzaEl:D

.field private zzaEm:D

.field private zzaEn:F

.field private zzaEo:I

.field private zzaEp:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzBY:Ljava/lang/String;

    iput v3, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzaEi:I

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzaEj:J

    iput-short v2, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzaEk:S

    iput v3, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzaEo:I

    iput v2, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzaEp:I

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/location/Geofence;
    .locals 13

    iget-object v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzBY:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request ID not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzaEi:I

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transitions types not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzaEi:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzaEp:I

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-negative loitering delay needs to be set when transition types include GEOFENCE_TRANSITION_DWELLING."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzaEj:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expiration not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-short v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzaEk:S

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Geofence region not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzaEo:I

    if-gez v0, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Notification responsiveness should be nonnegative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lcom/google/android/gms/location/internal/ParcelableGeofence;

    iget-object v1, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzBY:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzaEi:I

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzaEl:D

    iget-wide v6, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzaEm:D

    iget v8, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzaEn:F

    iget-wide v9, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzaEj:J

    iget v11, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzaEo:I

    iget v12, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzaEp:I

    invoke-direct/range {v0 .. v12}, Lcom/google/android/gms/location/internal/ParcelableGeofence;-><init>(Ljava/lang/String;ISDDFJII)V

    return-object v0
.end method

.method public setCircularRegion(DDF)Lcom/google/android/gms/location/Geofence$Builder;
    .locals 1
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "radius"    # F

    .prologue
    const/4 v0, 0x1

    iput-short v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzaEk:S

    iput-wide p1, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzaEl:D

    iput-wide p3, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzaEm:D

    iput p5, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzaEn:F

    return-object p0
.end method

.method public setExpirationDuration(J)Lcom/google/android/gms/location/Geofence$Builder;
    .locals 3
    .param p1, "durationMillis"    # J

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzaEj:J

    :goto_0
    return-object p0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzaEj:J

    goto :goto_0
.end method

.method public setLoiteringDelay(I)Lcom/google/android/gms/location/Geofence$Builder;
    .locals 0
    .param p1, "loiteringDelayMs"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzaEp:I

    return-object p0
.end method

.method public setNotificationResponsiveness(I)Lcom/google/android/gms/location/Geofence$Builder;
    .locals 0
    .param p1, "notificationResponsivenessMs"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzaEo:I

    return-object p0
.end method

.method public setRequestId(Ljava/lang/String;)Lcom/google/android/gms/location/Geofence$Builder;
    .locals 0
    .param p1, "requestId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzBY:Ljava/lang/String;

    return-object p0
.end method

.method public setTransitionTypes(I)Lcom/google/android/gms/location/Geofence$Builder;
    .locals 0
    .param p1, "transitionTypes"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/location/Geofence$Builder;->zzaEi:I

    return-object p0
.end method
