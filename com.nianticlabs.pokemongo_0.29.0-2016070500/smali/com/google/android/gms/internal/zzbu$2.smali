.class final Lcom/google/android/gms/internal/zzbu$2;
.super Lcom/google/android/gms/internal/zzbu;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbu;->zza(Ljava/lang/String;I)Lcom/google/android/gms/internal/zzbu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbu",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzbu;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbu$1;)V

    return-void
.end method


# virtual methods
.method public synthetic zza(Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbu$2;->zzc(Landroid/content/SharedPreferences;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public zzc(Landroid/content/SharedPreferences;)Ljava/lang/Integer;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbu$2;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbu$2;->zzde()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
