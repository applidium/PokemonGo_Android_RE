.class public Lcom/google/android/gms/gcm/zzc;
.super Ljava/lang/Object;


# static fields
.field public static final zzaCI:Lcom/google/android/gms/gcm/zzc;

.field public static final zzaCJ:Lcom/google/android/gms/gcm/zzc;


# instance fields
.field private final zzaCK:I

.field private final zzaCL:I

.field private final zzaCM:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0xe10

    const/16 v2, 0x1e

    new-instance v0, Lcom/google/android/gms/gcm/zzc;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/gcm/zzc;-><init>(III)V

    sput-object v0, Lcom/google/android/gms/gcm/zzc;->zzaCI:Lcom/google/android/gms/gcm/zzc;

    new-instance v0, Lcom/google/android/gms/gcm/zzc;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/gcm/zzc;-><init>(III)V

    sput-object v0, Lcom/google/android/gms/gcm/zzc;->zzaCJ:Lcom/google/android/gms/gcm/zzc;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/gcm/zzc;->zzaCK:I

    iput p2, p0, Lcom/google/android/gms/gcm/zzc;->zzaCL:I

    iput p3, p0, Lcom/google/android/gms/gcm/zzc;->zzaCM:I

    return-void
.end method


# virtual methods
.method public zzvZ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/gcm/zzc;->zzaCK:I

    return v0
.end method

.method public zzwa()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/gcm/zzc;->zzaCL:I

    return v0
.end method

.method public zzwb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/gcm/zzc;->zzaCM:I

    return v0
.end method

.method public zzz(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "retry_policy"

    iget v1, p0, Lcom/google/android/gms/gcm/zzc;->zzaCK:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "initial_backoff_seconds"

    iget v1, p0, Lcom/google/android/gms/gcm/zzc;->zzaCL:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "maximum_backoff_seconds"

    iget v1, p0, Lcom/google/android/gms/gcm/zzc;->zzaCM:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method
