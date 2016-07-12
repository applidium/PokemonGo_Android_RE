.class public Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/shared/zza;


# instance fields
.field final version:I

.field zzTA:Z

.field zzTB:Z

.field zzTC:Z

.field zzTx:Z

.field zzTy:Ljava/lang/String;

.field zzTz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/shared/zza;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/shared/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->CREATOR:Lcom/google/android/gms/auth/firstparty/shared/zza;

    return-void
.end method

.method constructor <init>(IZLjava/lang/String;ZZZZ)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "isAllCirclesVisible"    # Z
    .param p3, "visibleEdges"    # Ljava/lang/String;
    .param p4, "isAllContactsVisible"    # Z
    .param p5, "showCircles"    # Z
    .param p6, "showContacts"    # Z
    .param p7, "hasShowCircles"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->version:I

    iput-boolean p2, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->zzTx:Z

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->zzTy:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->zzTz:Z

    iput-boolean p5, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->zzTA:Z

    iput-boolean p6, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->zzTB:Z

    iput-boolean p7, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->zzTC:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;

    .end local p1    # "o":Ljava/lang/Object;
    iget-boolean v1, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->zzTx:Z

    iget-boolean v2, p1, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->zzTx:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->zzTy:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->zzTy:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->zzTz:Z

    iget-boolean v2, p1, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->zzTz:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->zzTA:Z

    iget-boolean v2, p1, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->zzTA:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->zzTB:Z

    iget-boolean v2, p1, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->zzTB:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->zzTC:Z

    iget-boolean v2, p1, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->zzTC:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->zzTx:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->zzTy:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->zzTz:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->zzTA:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->zzTB:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;->zzTC:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/shared/zza;->zza(Lcom/google/android/gms/auth/firstparty/shared/FACLConfig;Landroid/os/Parcel;I)V

    return-void
.end method
