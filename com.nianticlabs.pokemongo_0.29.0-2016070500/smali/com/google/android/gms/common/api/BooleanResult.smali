.class public Lcom/google/android/gms/common/api/BooleanResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# instance fields
.field private final zzSC:Lcom/google/android/gms/common/api/Status;

.field private final zzaaE:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Z)V
    .locals 1
    .param p1, "status"    # Lcom/google/android/gms/common/api/Status;
    .param p2, "value"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Status must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    iput-object v0, p0, Lcom/google/android/gms/common/api/BooleanResult;->zzSC:Lcom/google/android/gms/common/api/Status;

    iput-boolean p2, p0, Lcom/google/android/gms/common/api/BooleanResult;->zzaaE:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/common/api/BooleanResult;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/common/api/BooleanResult;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v2, p0, Lcom/google/android/gms/common/api/BooleanResult;->zzSC:Lcom/google/android/gms/common/api/Status;

    iget-object v3, p1, Lcom/google/android/gms/common/api/BooleanResult;->zzSC:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/Status;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/BooleanResult;->zzaaE:Z

    iget-boolean v3, p1, Lcom/google/android/gms/common/api/BooleanResult;->zzaaE:Z

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/BooleanResult;->zzSC:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public getValue()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/BooleanResult;->zzaaE:Z

    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/BooleanResult;->zzSC:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/BooleanResult;->zzaaE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
