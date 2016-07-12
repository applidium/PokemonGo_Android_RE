.class final Lcom/google/android/gms/common/zzc$zzi;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzi"
.end annotation


# static fields
.field static final zzaak:[Lcom/google/android/gms/common/zzc$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/common/zzc$zza;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gms/common/zzc$zzi$1;

    const-string v3, "0\u0082\u0003\u00b70\u0082\u0002\u009f\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u0090\u0093\u00f1\u00b1S\u00a3\u00fa\u00fb0"

    invoke-static {v3}, Lcom/google/android/gms/common/zzc$zza;->zzbX(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/zzc$zzi$1;-><init>([B)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/gms/common/zzc$zzi$2;

    const-string v3, "0\u0082\u0003\u00b70\u0082\u0002\u009f\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00c4\u00f5\u00f5U@\u00e3\u00a0\u00860"

    invoke-static {v3}, Lcom/google/android/gms/common/zzc$zza;->zzbX(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/zzc$zzi$2;-><init>([B)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/common/zzc$zzi;->zzaak:[Lcom/google/android/gms/common/zzc$zza;

    return-void
.end method
