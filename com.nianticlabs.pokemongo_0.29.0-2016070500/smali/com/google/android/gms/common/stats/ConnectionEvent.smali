.class public final Lcom/google/android/gms/common/stats/ConnectionEvent;
.super Lcom/google/android/gms/common/stats/zzf;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/stats/ConnectionEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field private final zzahn:J

.field private zzaho:I

.field private final zzahp:Ljava/lang/String;

.field private final zzahq:Ljava/lang/String;

.field private final zzahr:Ljava/lang/String;

.field private final zzahs:Ljava/lang/String;

.field private final zzaht:Ljava/lang/String;

.field private final zzahu:Ljava/lang/String;

.field private final zzahv:J

.field private final zzahw:J

.field private zzahx:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/stats/zza;

    invoke-direct {v0}, Lcom/google/android/gms/common/stats/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/stats/ConnectionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 5
    .param p1, "versionCode"    # I
    .param p2, "timeMillis"    # J
    .param p4, "eventType"    # I
    .param p5, "callingProcess"    # Ljava/lang/String;
    .param p6, "callingService"    # Ljava/lang/String;
    .param p7, "targetProcess"    # Ljava/lang/String;
    .param p8, "targetService"    # Ljava/lang/String;
    .param p9, "stackTrace"    # Ljava/lang/String;
    .param p10, "connKey"    # Ljava/lang/String;
    .param p11, "elapsedRealtime"    # J
    .param p13, "heapAlloc"    # J

    .prologue
    invoke-direct {p0}, Lcom/google/android/gms/common/stats/zzf;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->mVersionCode:I

    iput-wide p2, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzahn:J

    iput p4, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzaho:I

    iput-object p5, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzahp:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzahq:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzahr:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzahs:Ljava/lang/String;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzahx:J

    iput-object p9, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzaht:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzahu:Ljava/lang/String;

    move-wide/from16 v0, p11

    iput-wide v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzahv:J

    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzahw:J

    return-void
.end method

.method public constructor <init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 16
    .param p1, "timeMillis"    # J
    .param p3, "eventType"    # I
    .param p4, "callingProcess"    # Ljava/lang/String;
    .param p5, "callingService"    # Ljava/lang/String;
    .param p6, "targetProcess"    # Ljava/lang/String;
    .param p7, "targetService"    # Ljava/lang/String;
    .param p8, "stackTrace"    # Ljava/lang/String;
    .param p9, "connKey"    # Ljava/lang/String;
    .param p10, "elapsedRealtime"    # J
    .param p12, "heapAlloc"    # J

    .prologue
    const/4 v2, 0x1

    move-object/from16 v1, p0

    move-wide/from16 v3, p1

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-wide/from16 v12, p10

    move-wide/from16 v14, p12

    invoke-direct/range {v1 .. v15}, Lcom/google/android/gms/common/stats/ConnectionEvent;-><init>(IJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEventType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzaho:I

    return v0
.end method

.method public getTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzahn:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/stats/zza;->zza(Lcom/google/android/gms/common/stats/ConnectionEvent;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzpX()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzahp:Ljava/lang/String;

    return-object v0
.end method

.method public zzpY()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzahq:Ljava/lang/String;

    return-object v0
.end method

.method public zzpZ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzahr:Ljava/lang/String;

    return-object v0
.end method

.method public zzqa()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzahs:Ljava/lang/String;

    return-object v0
.end method

.method public zzqb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzaht:Ljava/lang/String;

    return-object v0
.end method

.method public zzqc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzahu:Ljava/lang/String;

    return-object v0
.end method

.method public zzqd()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzahx:J

    return-wide v0
.end method

.method public zzqe()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzahw:J

    return-wide v0
.end method

.method public zzqf()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzahv:J

    return-wide v0
.end method

.method public zzqg()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzpX()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzpY()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzpZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzqa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzaht:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzqe()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzaht:Ljava/lang/String;

    goto :goto_0
.end method
