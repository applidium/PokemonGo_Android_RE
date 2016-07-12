.class final Lcom/google/android/gms/gcm/PeriodicTask$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/gcm/PeriodicTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/gcm/PeriodicTask;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/gcm/PeriodicTask$1;->zzeu(Landroid/os/Parcel;)Lcom/google/android/gms/gcm/PeriodicTask;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/google/android/gms/gcm/PeriodicTask$1;->zzgE(I)[Lcom/google/android/gms/gcm/PeriodicTask;

    move-result-object v0

    return-object v0
.end method

.method public zzeu(Landroid/os/Parcel;)Lcom/google/android/gms/gcm/PeriodicTask;
    .locals 2

    new-instance v0, Lcom/google/android/gms/gcm/PeriodicTask;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/gcm/PeriodicTask;-><init>(Landroid/os/Parcel;Lcom/google/android/gms/gcm/PeriodicTask$1;)V

    return-object v0
.end method

.method public zzgE(I)[Lcom/google/android/gms/gcm/PeriodicTask;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/gcm/PeriodicTask;

    return-object v0
.end method
