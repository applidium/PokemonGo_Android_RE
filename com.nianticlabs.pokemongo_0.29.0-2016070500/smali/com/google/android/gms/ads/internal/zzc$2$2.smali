.class Lcom/google/android/gms/ads/internal/zzc$2$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzc$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzoE:Lcom/google/android/gms/ads/internal/zze;

.field final synthetic zzoF:Lcom/google/android/gms/ads/internal/zzc$2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzc$2;Lcom/google/android/gms/ads/internal/zze;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzc$2$2;->zzoF:Lcom/google/android/gms/ads/internal/zzc$2;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzc$2$2;->zzoE:Lcom/google/android/gms/ads/internal/zze;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzc$2$2;->zzoE:Lcom/google/android/gms/ads/internal/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zze;->recordClick()V

    return-void
.end method
