.class public Lcom/google/android/gms/gcm/PeriodicTask;
.super Lcom/google/android/gms/gcm/Task;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/gcm/PeriodicTask$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/gcm/PeriodicTask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mFlexInSeconds:J

.field protected mIntervalInSeconds:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/gcm/PeriodicTask$1;

    invoke-direct {v0}, Lcom/google/android/gms/gcm/PeriodicTask$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/gcm/PeriodicTask;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/Task;-><init>(Landroid/os/Parcel;)V

    iput-wide v0, p0, Lcom/google/android/gms/gcm/PeriodicTask;->mIntervalInSeconds:J

    iput-wide v0, p0, Lcom/google/android/gms/gcm/PeriodicTask;->mFlexInSeconds:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/gcm/PeriodicTask;->mIntervalInSeconds:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/gcm/PeriodicTask;->mFlexInSeconds:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/gms/gcm/PeriodicTask$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/google/android/gms/gcm/PeriodicTask$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/PeriodicTask;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/gcm/PeriodicTask$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/google/android/gms/gcm/PeriodicTask$Builder;

    .prologue
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/Task;-><init>(Lcom/google/android/gms/gcm/Task$Builder;)V

    iput-wide v0, p0, Lcom/google/android/gms/gcm/PeriodicTask;->mIntervalInSeconds:J

    iput-wide v0, p0, Lcom/google/android/gms/gcm/PeriodicTask;->mFlexInSeconds:J

    invoke-static {p1}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->zza(Lcom/google/android/gms/gcm/PeriodicTask$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/gcm/PeriodicTask;->mIntervalInSeconds:J

    invoke-static {p1}, Lcom/google/android/gms/gcm/PeriodicTask$Builder;->zzb(Lcom/google/android/gms/gcm/PeriodicTask$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/gcm/PeriodicTask;->mFlexInSeconds:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/gcm/PeriodicTask$Builder;Lcom/google/android/gms/gcm/PeriodicTask$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/gcm/PeriodicTask$Builder;
    .param p2, "x1"    # Lcom/google/android/gms/gcm/PeriodicTask$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/gcm/PeriodicTask;-><init>(Lcom/google/android/gms/gcm/PeriodicTask$Builder;)V

    return-void
.end method


# virtual methods
.method public getFlex()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/gcm/PeriodicTask;->mFlexInSeconds:J

    return-wide v0
.end method

.method public getPeriod()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/gcm/PeriodicTask;->mIntervalInSeconds:J

    return-wide v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Lcom/google/android/gms/gcm/Task;->toBundle(Landroid/os/Bundle;)V

    const-string v0, "period"

    iget-wide v2, p0, Lcom/google/android/gms/gcm/PeriodicTask;->mIntervalInSeconds:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "period_flex"

    iget-wide v2, p0, Lcom/google/android/gms/gcm/PeriodicTask;->mFlexInSeconds:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "period="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/gcm/PeriodicTask;->getPeriod()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "flex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/gcm/PeriodicTask;->getFlex()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/gcm/Task;->writeToParcel(Landroid/os/Parcel;I)V

    iget-wide v0, p0, Lcom/google/android/gms/gcm/PeriodicTask;->mIntervalInSeconds:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/google/android/gms/gcm/PeriodicTask;->mFlexInSeconds:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
