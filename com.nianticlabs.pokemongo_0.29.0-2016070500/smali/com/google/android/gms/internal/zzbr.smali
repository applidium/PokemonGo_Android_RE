.class public final Lcom/google/android/gms/internal/zzbr;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# instance fields
.field private zzuc:Ljava/lang/String;

.field private zzud:I


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzby;->zzul:Lcom/google/android/gms/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbu;->zzde()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzbr;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzbr;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbr;->zzud:I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzby;->zzul:Lcom/google/android/gms/internal/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbu;->zzde()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzbr;->zzuc:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/zzbr;->zzud:I

    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method


# virtual methods
.method public zzdc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbr;->zzuc:Ljava/lang/String;

    return-object v0
.end method

.method public zzdd()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzbr;->zzud:I

    return v0
.end method
