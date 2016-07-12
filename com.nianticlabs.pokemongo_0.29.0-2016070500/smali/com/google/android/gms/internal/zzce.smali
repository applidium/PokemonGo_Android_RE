.class public Lcom/google/android/gms/internal/zzce;
.super Ljava/lang/Object;


# instance fields
.field private final zzvN:J

.field private final zzvO:Ljava/lang/String;

.field private final zzvP:Lcom/google/android/gms/internal/zzce;


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/google/android/gms/internal/zzce;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzce;->zzvN:J

    iput-object p3, p0, Lcom/google/android/gms/internal/zzce;->zzvO:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzce;->zzvP:Lcom/google/android/gms/internal/zzce;

    return-void
.end method


# virtual methods
.method getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzce;->zzvN:J

    return-wide v0
.end method

.method zzdk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzce;->zzvO:Ljava/lang/String;

    return-object v0
.end method

.method zzdl()Lcom/google/android/gms/internal/zzce;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzce;->zzvP:Lcom/google/android/gms/internal/zzce;

    return-object v0
.end method
