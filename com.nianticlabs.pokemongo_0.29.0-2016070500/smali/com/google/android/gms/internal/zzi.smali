.class public Lcom/google/android/gms/internal/zzi;
.super Ljava/lang/Object;


# instance fields
.field public final data:[B

.field public final statusCode:I

.field public final zzA:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzB:Z

.field public final zzC:J


# direct methods
.method public constructor <init>(I[BLjava/util/Map;ZJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZJ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzi;->statusCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzi;->data:[B

    iput-object p3, p0, Lcom/google/android/gms/internal/zzi;->zzA:Ljava/util/Map;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzi;->zzB:Z

    iput-wide p5, p0, Lcom/google/android/gms/internal/zzi;->zzC:J

    return-void
.end method

.method public constructor <init>([BLjava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 v2, 0xc8

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/zzi;-><init>(I[BLjava/util/Map;ZJ)V

    return-void
.end method
