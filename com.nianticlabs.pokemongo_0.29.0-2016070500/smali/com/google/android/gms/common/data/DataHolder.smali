.class public final Lcom/google/android/gms/common/data/DataHolder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/data/DataHolder$zzb;,
        Lcom/google/android/gms/common/data/DataHolder$zza;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/common/data/zze;

.field private static final zzadx:Lcom/google/android/gms/common/data/DataHolder$zza;


# instance fields
.field mClosed:Z

.field private final mVersionCode:I

.field private final zzYm:I

.field private final zzadp:[Ljava/lang/String;

.field zzadq:Landroid/os/Bundle;

.field private final zzadr:[Landroid/database/CursorWindow;

.field private final zzads:Landroid/os/Bundle;

.field zzadt:[I

.field zzadu:I

.field private zzadv:Ljava/lang/Object;

.field private zzadw:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/data/zze;

    invoke-direct {v0}, Lcom/google/android/gms/common/data/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/zze;

    new-instance v0, Lcom/google/android/gms/common/data/DataHolder$1;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/data/DataHolder$1;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/data/DataHolder;->zzadx:Lcom/google/android/gms/common/data/DataHolder$zza;

    return-void
.end method

.method constructor <init>(I[Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "versionCode"    # I
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "windows"    # [Landroid/database/CursorWindow;
    .param p4, "statusCode"    # I
    .param p5, "metadata"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->mClosed:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadw:Z

    iput p1, p0, Lcom/google/android/gms/common/data/DataHolder;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadp:[Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadr:[Landroid/database/CursorWindow;

    iput p4, p0, Lcom/google/android/gms/common/data/DataHolder;->zzYm:I

    iput-object p5, p0, Lcom/google/android/gms/common/data/DataHolder;->zzads:Landroid/os/Bundle;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/common/data/DataHolder$zza;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "builder"    # Lcom/google/android/gms/common/data/DataHolder$zza;
    .param p2, "statusCode"    # I
    .param p3, "metadata"    # Landroid/os/Bundle;

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/common/data/DataHolder$zza;->zza(Lcom/google/android/gms/common/data/DataHolder$zza;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p1, v1}, Lcom/google/android/gms/common/data/DataHolder;->zza(Lcom/google/android/gms/common/data/DataHolder$zza;I)[Landroid/database/CursorWindow;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;-><init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "columns"    # [Ljava/lang/String;
    .param p2, "windows"    # [Landroid/database/CursorWindow;
    .param p3, "statusCode"    # I
    .param p4, "metadata"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->mClosed:Z

    iput-boolean v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadw:Z

    iput v1, p0, Lcom/google/android/gms/common/data/DataHolder;->mVersionCode:I

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadp:[Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/CursorWindow;

    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadr:[Landroid/database/CursorWindow;

    iput p3, p0, Lcom/google/android/gms/common/data/DataHolder;->zzYm:I

    iput-object p4, p0, Lcom/google/android/gms/common/data/DataHolder;->zzads:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->zzov()V

    return-void
.end method

.method public static zza(ILandroid/os/Bundle;)Lcom/google/android/gms/common/data/DataHolder;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/data/DataHolder;

    sget-object v1, Lcom/google/android/gms/common/data/DataHolder;->zzadx:Lcom/google/android/gms/common/data/DataHolder$zza;

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/common/data/DataHolder;-><init>(Lcom/google/android/gms/common/data/DataHolder$zza;ILandroid/os/Bundle;)V

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/common/data/DataHolder$zza;I)[Landroid/database/CursorWindow;
    .locals 13

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$zza;->zza(Lcom/google/android/gms/common/data/DataHolder$zza;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    new-array v0, v5, [Landroid/database/CursorWindow;

    :goto_0
    return-object v0

    :cond_0
    if-ltz p1, :cond_1

    invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$zza;->zzb(Lcom/google/android/gms/common/data/DataHolder$zza;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$zza;->zzb(Lcom/google/android/gms/common/data/DataHolder$zza;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v2, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    new-instance v6, Landroid/database/CursorWindow;

    invoke-direct {v6, v5}, Landroid/database/CursorWindow;-><init>(Z)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$zza;->zza(Lcom/google/android/gms/common/data/DataHolder$zza;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v6, v0}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    move v3, v5

    move v10, v5

    :goto_2
    if-ge v3, v11, :cond_11

    :try_start_0
    invoke-virtual {v6}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "DataHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Allocating additional cursor window for large data set (row "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ")"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/database/CursorWindow;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Landroid/database/CursorWindow;-><init>(Z)V

    invoke-virtual {v6, v3}, Landroid/database/CursorWindow;->setStartPosition(I)V

    invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$zza;->zza(Lcom/google/android/gms/common/data/DataHolder$zza;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v6, v0}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "DataHolder"

    const-string v1, "Unable to allocate row to hold data."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/database/CursorWindow;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/CursorWindow;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_2
    invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$zza;->zzb(Lcom/google/android/gms/common/data/DataHolder$zza;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    move v7, v5

    move v1, v4

    :goto_3
    invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$zza;->zza(Lcom/google/android/gms/common/data/DataHolder$zza;)[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-ge v7, v8, :cond_d

    if-eqz v1, :cond_d

    invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$zza;->zza(Lcom/google/android/gms/common/data/DataHolder$zza;)[Ljava/lang/String;

    move-result-object v1

    aget-object v8, v1, v7

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {v6, v3, v7}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v1

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    instance-of v9, v1, Ljava/lang/String;

    if-eqz v9, :cond_5

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1, v3, v7}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v1

    goto :goto_4

    :cond_5
    instance-of v9, v1, Ljava/lang/Long;

    if-eqz v9, :cond_6

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9, v3, v7}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result v1

    goto :goto_4

    :cond_6
    instance-of v9, v1, Ljava/lang/Integer;

    if-eqz v9, :cond_7

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v8, v1

    invoke-virtual {v6, v8, v9, v3, v7}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result v1

    goto :goto_4

    :cond_7
    instance-of v9, v1, Ljava/lang/Boolean;

    if-eqz v9, :cond_9

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    const-wide/16 v8, 0x1

    :goto_5
    invoke-virtual {v6, v8, v9, v3, v7}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result v1

    goto :goto_4

    :cond_8
    const-wide/16 v8, 0x0

    goto :goto_5

    :cond_9
    instance-of v9, v1, [B

    if-eqz v9, :cond_a

    check-cast v1, [B

    check-cast v1, [B

    invoke-virtual {v6, v1, v3, v7}, Landroid/database/CursorWindow;->putBlob([BII)Z

    move-result v1

    goto :goto_4

    :cond_a
    instance-of v9, v1, Ljava/lang/Double;

    if-eqz v9, :cond_b

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v6, v8, v9, v3, v7}, Landroid/database/CursorWindow;->putDouble(DII)Z

    move-result v1

    goto :goto_4

    :cond_b
    instance-of v9, v1, Ljava/lang/Float;

    if-eqz v9, :cond_c

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v8, v1

    invoke-virtual {v6, v8, v9, v3, v7}, Landroid/database/CursorWindow;->putDouble(DII)Z

    move-result v1

    goto :goto_4

    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported object for column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_6
    if-ge v5, v2, :cond_10

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->close()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_d
    if-nez v1, :cond_f

    if-eqz v10, :cond_e

    :try_start_2
    const-string v0, "Could not add the value to a new CursorWindow. The size of value may be larger than what a CursorWindow can handle."

    new-instance v1, Lcom/google/android/gms/common/data/DataHolder$zzb;

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/data/DataHolder$zzb;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    const-string v0, "DataHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t populate window data for row "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " - allocating new window."

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Landroid/database/CursorWindow;->freeLastRow()V

    new-instance v1, Landroid/database/CursorWindow;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Landroid/database/CursorWindow;-><init>(Z)V

    invoke-virtual {v1, v3}, Landroid/database/CursorWindow;->setStartPosition(I)V

    invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$zza;->zza(Lcom/google/android/gms/common/data/DataHolder$zza;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v1, v0}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v0, v3, -0x1

    move-object v3, v1

    move v1, v4

    :goto_7
    add-int/lit8 v0, v0, 0x1

    move v10, v1

    move-object v6, v3

    move v3, v0

    goto/16 :goto_2

    :cond_f
    move v0, v3

    move v1, v5

    move-object v3, v6

    goto :goto_7

    :cond_10
    throw v1

    :cond_11
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/database/CursorWindow;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/CursorWindow;

    goto/16 :goto_0
.end method

.method public static zzbu(I)Lcom/google/android/gms/common/data/DataHolder;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/data/DataHolder;->zza(ILandroid/os/Bundle;)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    return-object v0
.end method

.method private zzh(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadq:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadq:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such column: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-ltz p2, :cond_3

    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadu:I

    if-lt p2, v0, :cond_4

    :cond_3
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    iget v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadu:I

    invoke-direct {v0, p2, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V

    throw v0

    :cond_4
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->mClosed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->mClosed:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadr:[Landroid/database/CursorWindow;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadr:[Landroid/database/CursorWindow;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/database/CursorWindow;->close()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadw:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadr:[Landroid/database/CursorWindow;

    array-length v0, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadv:Ljava/lang/Object;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "internal object: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "DataBuffer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadv:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadu:I

    return v0
.end method

.method public getStatusCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzYm:I

    return v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->mVersionCode:I

    return v0
.end method

.method public isClosed()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->mClosed:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/data/zze;->zza(Lcom/google/android/gms/common/data/DataHolder;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zza(Ljava/lang/String;IILandroid/database/CharArrayBuffer;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zzh(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadr:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadq:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p2, v1, p4}, Landroid/database/CursorWindow;->copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public zzb(Ljava/lang/String;II)J
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zzh(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadr:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadq:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public zzbt(I)I
    .locals 2

    const/4 v1, 0x0

    if-ltz p1, :cond_2

    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadu:I

    if-ge p1, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzZ(Z)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadt:[I

    array-length v0, v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadt:[I

    aget v0, v0, v1

    if-ge p1, v0, :cond_3

    add-int/lit8 v1, v1, -0x1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadt:[I

    array-length v0, v0

    if-ne v1, v0, :cond_1

    add-int/lit8 v1, v1, -0x1

    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public zzc(Ljava/lang/String;II)I
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zzh(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadr:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadq:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getInt(II)I

    move-result v0

    return v0
.end method

.method public zzce(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadq:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public zzd(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zzh(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadr:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadq:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zze(Ljava/lang/String;II)Z
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zzh(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadr:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadq:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzf(Ljava/lang/String;II)F
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zzh(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadr:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadq:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getFloat(II)F

    move-result v0

    return v0
.end method

.method public zzg(Ljava/lang/String;II)[B
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zzh(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadr:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadq:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getBlob(II)[B

    move-result-object v0

    return-object v0
.end method

.method public zzh(Ljava/lang/String;II)Landroid/net/Uri;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->zzd(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public zzi(Ljava/lang/String;II)Z
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zzh(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadr:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadq:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->isNull(II)Z

    move-result v0

    return v0
.end method

.method public zzor()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzads:Landroid/os/Bundle;

    return-object v0
.end method

.method public zzov()V
    .locals 4

    const/4 v1, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadq:Landroid/os/Bundle;

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadp:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadq:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadp:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadr:[Landroid/database/CursorWindow;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadt:[I

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadr:[Landroid/database/CursorWindow;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadt:[I

    aput v0, v2, v1

    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadr:[Landroid/database/CursorWindow;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v2

    sub-int v2, v0, v2

    iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadr:[Landroid/database/CursorWindow;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v3

    sub-int v2, v3, v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iput v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadu:I

    return-void
.end method

.method zzow()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadp:[Ljava/lang/String;

    return-object v0
.end method

.method zzox()[Landroid/database/CursorWindow;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadr:[Landroid/database/CursorWindow;

    return-object v0
.end method

.method public zzr(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/data/DataHolder;->zzadv:Ljava/lang/Object;

    return-void
.end method
