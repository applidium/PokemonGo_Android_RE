.class public Lcom/google/android/gms/internal/zzhs;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzhs$zza;
    }
.end annotation


# instance fields
.field public final errorCode:I

.field public final orientation:I

.field public final zzBD:Lcom/google/android/gms/internal/zziz;

.field public final zzEJ:J

.field public final zzEK:Z

.field public final zzEL:J

.field public final zzEM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzEP:Ljava/lang/String;

.field public final zzEn:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

.field public final zzEq:Ljava/lang/String;

.field public final zzHA:J

.field public final zzHB:Lcom/google/android/gms/ads/internal/formats/zzh$zza;

.field public final zzHw:Lorg/json/JSONObject;

.field public final zzHx:Lcom/google/android/gms/internal/zzee;

.field public final zzHy:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

.field public final zzHz:J

.field public final zzyY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzyZ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzzc:J

.field public final zzzu:Lcom/google/android/gms/internal/zzed;

.field public final zzzv:Lcom/google/android/gms/internal/zzen;

.field public final zzzw:Ljava/lang/String;

.field public final zzzx:Lcom/google/android/gms/internal/zzeg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zziz;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzed;Lcom/google/android/gms/internal/zzen;Ljava/lang/String;Lcom/google/android/gms/internal/zzee;Lcom/google/android/gms/internal/zzeg;JLcom/google/android/gms/ads/internal/client/AdSizeParcel;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/zzh$zza;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/internal/client/AdRequestParcel;",
            "Lcom/google/android/gms/internal/zziz;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;IJ",
            "Ljava/lang/String;",
            "Z",
            "Lcom/google/android/gms/internal/zzed;",
            "Lcom/google/android/gms/internal/zzen;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzee;",
            "Lcom/google/android/gms/internal/zzeg;",
            "J",
            "Lcom/google/android/gms/ads/internal/client/AdSizeParcel;",
            "JJJ",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/google/android/gms/ads/internal/formats/zzh$zza;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhs;->zzEn:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzhs;->zzBD:Lcom/google/android/gms/internal/zziz;

    if-eqz p3, :cond_0

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lcom/google/android/gms/internal/zzhs;->zzyY:Ljava/util/List;

    iput p4, p0, Lcom/google/android/gms/internal/zzhs;->errorCode:I

    if-eqz p5, :cond_1

    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/google/android/gms/internal/zzhs;->zzyZ:Ljava/util/List;

    if-eqz p6, :cond_2

    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    :goto_2
    iput-object v2, p0, Lcom/google/android/gms/internal/zzhs;->zzEM:Ljava/util/List;

    iput p7, p0, Lcom/google/android/gms/internal/zzhs;->orientation:I

    iput-wide p8, p0, Lcom/google/android/gms/internal/zzhs;->zzzc:J

    iput-object p10, p0, Lcom/google/android/gms/internal/zzhs;->zzEq:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/google/android/gms/internal/zzhs;->zzEK:Z

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhs;->zzzu:Lcom/google/android/gms/internal/zzed;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhs;->zzzv:Lcom/google/android/gms/internal/zzen;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhs;->zzzw:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhs;->zzHx:Lcom/google/android/gms/internal/zzee;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhs;->zzzx:Lcom/google/android/gms/internal/zzeg;

    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzhs;->zzEL:J

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhs;->zzHy:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-wide/from16 v0, p20

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzhs;->zzEJ:J

    move-wide/from16 v0, p22

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzhs;->zzHz:J

    move-wide/from16 v0, p24

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzhs;->zzHA:J

    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhs;->zzEP:Ljava/lang/String;

    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhs;->zzHw:Lorg/json/JSONObject;

    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhs;->zzHB:Lcom/google/android/gms/ads/internal/formats/zzh$zza;

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzhs$zza;Lcom/google/android/gms/internal/zziz;Lcom/google/android/gms/internal/zzed;Lcom/google/android/gms/internal/zzen;Ljava/lang/String;Lcom/google/android/gms/internal/zzeg;Lcom/google/android/gms/ads/internal/formats/zzh$zza;)V
    .locals 31

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzhs$zza;->zzHC:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v3, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEn:Lcom/google/android/gms/ads/internal/client/AdRequestParcel;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzhs$zza;->zzHD:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v5, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzyY:Ljava/util/List;

    move-object/from16 v0, p1

    iget v6, v0, Lcom/google/android/gms/internal/zzhs$zza;->errorCode:I

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzhs$zza;->zzHD:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v7, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzyZ:Ljava/util/List;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzhs$zza;->zzHD:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v8, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEM:Ljava/util/List;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzhs$zza;->zzHD:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget v9, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->orientation:I

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzhs$zza;->zzHD:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v10, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzzc:J

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzhs$zza;->zzHC:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    iget-object v12, v2, Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;->zzEq:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzhs$zza;->zzHD:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-boolean v13, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEK:Z

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhs$zza;->zzHx:Lcom/google/android/gms/internal/zzee;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzhs$zza;->zzHD:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEL:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhs$zza;->zzqn:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzhs$zza;->zzHD:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-wide v0, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEJ:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzhs$zza;->zzHz:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/google/android/gms/internal/zzhs$zza;->zzHA:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/zzhs$zza;->zzHD:Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    iget-object v0, v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;->zzEP:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhs$zza;->zzHw:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    move-object/from16 v18, p6

    move-object/from16 v30, p7

    invoke-direct/range {v2 .. v30}, Lcom/google/android/gms/internal/zzhs;-><init>(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;Lcom/google/android/gms/internal/zziz;Ljava/util/List;ILjava/util/List;Ljava/util/List;IJLjava/lang/String;ZLcom/google/android/gms/internal/zzed;Lcom/google/android/gms/internal/zzen;Ljava/lang/String;Lcom/google/android/gms/internal/zzee;Lcom/google/android/gms/internal/zzeg;JLcom/google/android/gms/ads/internal/client/AdSizeParcel;JJJLjava/lang/String;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/zzh$zza;)V

    return-void
.end method


# virtual methods
.method public zzbY()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhs;->zzBD:Lcom/google/android/gms/internal/zziz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhs;->zzBD:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzhe()Lcom/google/android/gms/internal/zzja;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhs;->zzBD:Lcom/google/android/gms/internal/zziz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zziz;->zzhe()Lcom/google/android/gms/internal/zzja;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzja;->zzbY()Z

    move-result v0

    goto :goto_0
.end method
