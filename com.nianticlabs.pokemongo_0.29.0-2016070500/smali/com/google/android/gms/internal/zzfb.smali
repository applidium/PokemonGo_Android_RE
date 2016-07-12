.class public Lcom/google/android/gms/internal/zzfb;
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

.field private zzzV:Ljava/lang/String;

.field private zzzW:J

.field private zzzX:J

.field private zzzY:Ljava/lang/String;

.field private zzzZ:Ljava/lang/String;


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

    const-string v0, "createCalendarEvent"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzfh;-><init>(Lcom/google/android/gms/internal/zziz;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzfb;->zzvS:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zziz;->zzgZ()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfb;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzfb;->zzec()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzfb;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfb;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private zzah(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfb;->zzvS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzfb;->zzvS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private zzai(Ljava/lang/String;)J
    .locals 4

    const-wide/16 v2, -0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfb;->zzvS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    move-wide v0, v2

    :goto_0
    return-wide v0

    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-wide v0, v2

    goto :goto_0
.end method

.method private zzec()V
    .locals 2

    const-string v0, "description"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzfb;->zzah(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfb;->zzzV:Ljava/lang/String;

    const-string v0, "summary"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzfb;->zzah(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfb;->zzzY:Ljava/lang/String;

    const-string v0, "start_ticks"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzfb;->zzai(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzfb;->zzzW:J

    const-string v0, "end_ticks"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzfb;->zzai(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzfb;->zzzX:J

    const-string v0, "location"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzfb;->zzah(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzfb;->zzzZ:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method createIntent()Landroid/content/Intent;
    .locals 6

    const-wide/16 v4, -0x1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfb;->zzzV:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "eventLocation"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfb;->zzzZ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "description"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzfb;->zzzY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzfb;->zzzW:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const-string v1, "beginTime"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzfb;->zzzW:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/zzfb;->zzzX:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    const-string v1, "endTime"

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzfb;->zzzX:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_1
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public execute()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfb;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "Activity context is not available."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzfb;->zzak(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbv()Lcom/google/android/gms/internal/zzid;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfb;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzid;->zzL(Landroid/content/Context;)Lcom/google/android/gms/internal/zzbq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbq;->zzdb()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "This feature is not available on the device."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzfb;->zzak(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzbv()Lcom/google/android/gms/internal/zzid;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfb;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzid;->zzK(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzby()Lcom/google/android/gms/internal/zzhu;

    move-result-object v1

    sget v2, Lcom/google/android/gms/R$string;->create_calendar_title:I

    const-string v3, "Create calendar event"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzhu;->zzd(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzby()Lcom/google/android/gms/internal/zzhu;

    move-result-object v1

    sget v2, Lcom/google/android/gms/R$string;->create_calendar_message:I

    const-string v3, "Allow Ad to create a calendar event?"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzhu;->zzd(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzby()Lcom/google/android/gms/internal/zzhu;

    move-result-object v1

    sget v2, Lcom/google/android/gms/R$string;->accept:I

    const-string v3, "Accept"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzhu;->zzd(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzfb$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzfb$1;-><init>(Lcom/google/android/gms/internal/zzfb;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzby()Lcom/google/android/gms/internal/zzhu;

    move-result-object v1

    sget v2, Lcom/google/android/gms/R$string;->decline:I

    const-string v3, "Decline"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzhu;->zzd(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzfb$2;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzfb$2;-><init>(Lcom/google/android/gms/internal/zzfb;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
