.class public final Lcom/google/android/gms/internal/zzei;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzei$zza;
    }
.end annotation


# instance fields
.field public final zzzt:I

.field public final zzzu:Lcom/google/android/gms/internal/zzed;

.field public final zzzv:Lcom/google/android/gms/internal/zzen;

.field public final zzzw:Ljava/lang/String;

.field public final zzzx:Lcom/google/android/gms/internal/zzeg;

.field public final zzzy:Lcom/google/android/gms/internal/zzep;


# direct methods
.method public constructor <init>(I)V
    .locals 7

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move v5, p1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzei;-><init>(Lcom/google/android/gms/internal/zzed;Lcom/google/android/gms/internal/zzen;Ljava/lang/String;Lcom/google/android/gms/internal/zzeg;ILcom/google/android/gms/internal/zzep;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzed;Lcom/google/android/gms/internal/zzen;Ljava/lang/String;Lcom/google/android/gms/internal/zzeg;ILcom/google/android/gms/internal/zzep;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzei;->zzzu:Lcom/google/android/gms/internal/zzed;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzei;->zzzv:Lcom/google/android/gms/internal/zzen;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzei;->zzzw:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzei;->zzzx:Lcom/google/android/gms/internal/zzeg;

    iput p5, p0, Lcom/google/android/gms/internal/zzei;->zzzt:I

    iput-object p6, p0, Lcom/google/android/gms/internal/zzei;->zzzy:Lcom/google/android/gms/internal/zzep;

    return-void
.end method
