.class final Lcom/google/android/gms/common/zzc$zzh;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zzh"
.end annotation


# static fields
.field static final zzaak:[Lcom/google/android/gms/common/zzc$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/common/zzc$zza;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gms/common/zzc$zzh$1;

    const-string v3, "0\u0082\u0003\u00d70\u0082\u0002\u00bf\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u009bJ\u0088\u00f8\u00be\u00f5\u000c\u00b10"

    invoke-static {v3}, Lcom/google/android/gms/common/zzc$zza;->zzbX(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/zzc$zzh$1;-><init>([B)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/common/zzc$zzh;->zzaak:[Lcom/google/android/gms/common/zzc$zza;

    return-void
.end method
