.class Lcom/google/android/gms/internal/zzs$zza$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzs$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final time:J

.field public final zzan:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzs$zza$zza;->name:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzs$zza$zza;->zzan:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/zzs$zza$zza;->time:J

    return-void
.end method
