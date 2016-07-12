.class public Lcom/google/android/gms/auth/firstparty/shared/FACLData;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/shared/zzb;


# instance fields
.field final version:I

.field zzTD:Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

.field zzTE:Ljava/lang/String;

.field zzTF:Z

.field zzTG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/shared/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->CREATOR:Lcom/google/android/gms/auth/firstparty/shared/zzb;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/auth/firstparty/shared/FACLConfig;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "faclConfig"    # Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;
    .param p3, "activityText"    # Ljava/lang/String;
    .param p4, "isSpeedbumpNeeded"    # Z
    .param p5, "speedbumpText"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->version:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->zzTD:Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->zzTE:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->zzTF:Z

    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLData;->zzTG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/shared/zzb;->zza(Lcom/google/android/gms/auth/firstparty/shared/FACLData;Landroid/os/Parcel;I)V

    return-void
.end method
