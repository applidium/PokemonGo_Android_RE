.class final Lcom/google/android/gms/dynamic/zza$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/dynamic/zza;->zzb(Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic zzapy:I

.field final synthetic zzry:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/dynamic/zza$5;->zzry:Landroid/content/Context;

    iput p2, p0, Lcom/google/android/gms/dynamic/zza$5;->zzapy:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/dynamic/zza$5;->zzry:Landroid/content/Context;

    iget v1, p0, Lcom/google/android/gms/dynamic/zza$5;->zzapy:I

    invoke-static {v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zzbj(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
