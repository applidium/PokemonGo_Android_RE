.class public final Lcom/google/android/gms/common/images/zza$zzc;
.super Lcom/google/android/gms/common/images/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/images/zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation


# instance fields
.field private zzaef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/common/images/zza;-><init>(Landroid/net/Uri;I)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzb;->zzs(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/zza$zzc;->zzaef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    instance-of v0, p1, Lcom/google/android/gms/common/images/zza$zzc;

    if-nez v0, :cond_0

    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v3

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    if-ne p0, p1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/google/android/gms/common/images/zza$zzc;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v0, p0, Lcom/google/android/gms/common/images/zza$zzc;->zzaef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    iget-object v1, p1, Lcom/google/android/gms/common/images/zza$zzc;->zzaef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/common/images/zza$zzc;->zzadV:Lcom/google/android/gms/common/images/zza$zza;

    iget-object v1, p0, Lcom/google/android/gms/common/images/zza$zzc;->zzadV:Lcom/google/android/gms/common/images/zza$zza;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_1
    move v3, v0

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/common/images/zza$zzc;->zzadV:Lcom/google/android/gms/common/images/zza$zza;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected zza(Landroid/graphics/drawable/Drawable;ZZZ)V
    .locals 2

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/images/zza$zzc;->zzaef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/images/zza$zzc;->zzadV:Lcom/google/android/gms/common/images/zza$zza;

    iget-object v1, v1, Lcom/google/android/gms/common/images/zza$zza;->uri:Landroid/net/Uri;

    invoke-interface {v0, v1, p1, p4}, Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;->onImageLoaded(Landroid/net/Uri;Landroid/graphics/drawable/Drawable;Z)V

    :cond_0
    return-void
.end method
