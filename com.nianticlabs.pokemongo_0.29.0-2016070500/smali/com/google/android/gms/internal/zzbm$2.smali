.class Lcom/google/android/gms/internal/zzbm$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbm;->zzB(Ljava/lang/String;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/gms/internal/zzbp$zza;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzst:Lcom/google/android/gms/internal/zzbm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbm$2;->zzst:Lcom/google/android/gms/internal/zzbm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Lcom/google/android/gms/internal/zzbp$zza;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/google/android/gms/internal/zzbp$zza;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbm$2;->zza(Lcom/google/android/gms/internal/zzbp$zza;Lcom/google/android/gms/internal/zzbp$zza;)I

    move-result v0

    return v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbp$zza;Lcom/google/android/gms/internal/zzbp$zza;)I
    .locals 4

    iget-wide v0, p1, Lcom/google/android/gms/internal/zzbp$zza;->value:J

    iget-wide v2, p2, Lcom/google/android/gms/internal/zzbp$zza;->value:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
