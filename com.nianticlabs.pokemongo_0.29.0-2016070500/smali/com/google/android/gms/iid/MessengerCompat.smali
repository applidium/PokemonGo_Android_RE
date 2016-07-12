.class public Lcom/google/android/gms/iid/MessengerCompat;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/iid/MessengerCompat$zza;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/iid/MessengerCompat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field zzaDK:Landroid/os/Messenger;

.field zzaDL:Lcom/google/android/gms/iid/zzb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/iid/MessengerCompat$1;

    invoke-direct {v0}, Lcom/google/android/gms/iid/MessengerCompat$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/iid/MessengerCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/iid/MessengerCompat;->zzaDK:Landroid/os/Messenger;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/iid/MessengerCompat$zza;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/iid/MessengerCompat$zza;-><init>(Lcom/google/android/gms/iid/MessengerCompat;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gms/iid/MessengerCompat;->zzaDL:Lcom/google/android/gms/iid/zzb;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "target"    # Landroid/os/IBinder;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/google/android/gms/iid/MessengerCompat;->zzaDK:Landroid/os/Messenger;

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/iid/zzb$zza;->zzbV(Landroid/os/IBinder;)Lcom/google/android/gms/iid/zzb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/iid/MessengerCompat;->zzaDL:Lcom/google/android/gms/iid/zzb;

    goto :goto_0
.end method

.method public static zzc(Landroid/os/Message;)I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/iid/MessengerCompat;->zzd(Landroid/os/Message;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/os/Message;->arg2:I

    goto :goto_0
.end method

.method private static zzd(Landroid/os/Message;)I
    .locals 1

    iget v0, p0, Landroid/os/Message;->sendingUid:I

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "otherObj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .end local p1    # "otherObj":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "otherObj":Ljava/lang/Object;
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/iid/MessengerCompat;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    check-cast p1, Lcom/google/android/gms/iid/MessengerCompat;

    .end local p1    # "otherObj":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/google/android/gms/iid/MessengerCompat;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/iid/MessengerCompat;->zzaDK:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/iid/MessengerCompat;->zzaDK:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/iid/MessengerCompat;->zzaDL:Lcom/google/android/gms/iid/zzb;

    invoke-interface {v0}, Lcom/google/android/gms/iid/zzb;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/iid/MessengerCompat;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public send(Landroid/os/Message;)V
    .locals 1
    .param p1, "message"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/iid/MessengerCompat;->zzaDK:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/iid/MessengerCompat;->zzaDK:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/iid/MessengerCompat;->zzaDL:Lcom/google/android/gms/iid/zzb;

    invoke-interface {v0, p1}, Lcom/google/android/gms/iid/zzb;->send(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/iid/MessengerCompat;->zzaDK:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/iid/MessengerCompat;->zzaDK:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/iid/MessengerCompat;->zzaDL:Lcom/google/android/gms/iid/zzb;

    invoke-interface {v0}, Lcom/google/android/gms/iid/zzb;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_0
.end method
