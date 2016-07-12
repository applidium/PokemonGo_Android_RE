.class public Lcom/google/android/gms/internal/zzfe;
.super Lcom/google/android/gms/internal/zzfh;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzvS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zziz;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zziz;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "storePicture"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzfh;-><init>(Lcom/google/android/gms/internal/zziz;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfe;->zzvS:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zziz;->zzgZ()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfe;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzfe;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfe;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public execute()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfe;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "Activity context is not available"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzfe;->zzak(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbv()Lcom/google/android/gms/internal/zzid;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfe;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzid;->zzL(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbq;->zzcY()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Feature is not supported by the device."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzfe;->zzak(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfe;->zzvS:Ljava/util/Map;

    const-string v1, "iurl"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "Image url cannot be empty."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzfe;->zzak(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid image url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzfe;->zzak(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzfe;->zzaj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbv()Lcom/google/android/gms/internal/zzid;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzid;->zzaB(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image type not recognized: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzfe;->zzak(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbv()Lcom/google/android/gms/internal/zzid;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzfe;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzid;->zzK(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzby()Lcom/google/android/gms/internal/zzhu;

    move-result-object v3

    sget v4, Lcom/google/android/gms/R$string;->store_picture_title:I

    const-string v5, "Save image"

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzhu;->zzd(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzby()Lcom/google/android/gms/internal/zzhu;

    move-result-object v3

    sget v4, Lcom/google/android/gms/R$string;->store_picture_message:I

    const-string v5, "Allow Ad to store image in Picture gallery?"

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzhu;->zzd(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzby()Lcom/google/android/gms/internal/zzhu;

    move-result-object v3

    sget v4, Lcom/google/android/gms/R$string;->accept:I

    const-string v5, "Accept"

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/zzhu;->zzd(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/zzfe$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/google/android/gms/internal/zzfe$1;-><init>(Lcom/google/android/gms/internal/zzfe;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzby()Lcom/google/android/gms/internal/zzhu;

    move-result-object v0

    sget v1, Lcom/google/android/gms/R$string;->decline:I

    const-string v3, "Decline"

    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/zzhu;->zzd(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzfe$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzfe$2;-><init>(Lcom/google/android/gms/internal/zzfe;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method zzaj(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method zzg(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    .locals 2

    new-instance v0, Landroid/app/DownloadManager$Request;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbx()Lcom/google/android/gms/internal/zzie;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzie;->zza(Landroid/app/DownloadManager$Request;)Z

    return-object v0
.end method
