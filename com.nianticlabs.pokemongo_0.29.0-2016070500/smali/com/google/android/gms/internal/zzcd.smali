.class public abstract Lcom/google/android/gms/internal/zzcd;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# static fields
.field public static final zzvK:Lcom/google/android/gms/internal/zzcd;
    .annotation runtime Lcom/google/android/gms/internal/zzgr;
    .end annotation
.end field

.field public static final zzvL:Lcom/google/android/gms/internal/zzcd;
    .annotation runtime Lcom/google/android/gms/internal/zzgr;
    .end annotation
.end field

.field public static final zzvM:Lcom/google/android/gms/internal/zzcd;
    .annotation runtime Lcom/google/android/gms/internal/zzgr;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzcd$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcd$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcd;->zzvK:Lcom/google/android/gms/internal/zzcd;

    new-instance v0, Lcom/google/android/gms/internal/zzcd$2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcd$2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcd;->zzvL:Lcom/google/android/gms/internal/zzcd;

    new-instance v0, Lcom/google/android/gms/internal/zzcd$3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzcd$3;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzcd;->zzvM:Lcom/google/android/gms/internal/zzcd;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p3}, Lcom/google/android/gms/internal/zzcd;->zzd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public abstract zzd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
