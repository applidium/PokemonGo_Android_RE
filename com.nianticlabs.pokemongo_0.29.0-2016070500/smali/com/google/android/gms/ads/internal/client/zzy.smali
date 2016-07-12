.class public final Lcom/google/android/gms/ads/internal/client/zzy;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzgr;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/client/zzy$zza;
    }
.end annotation


# static fields
.field public static final DEVICE_ID_EMULATOR:Ljava/lang/String;


# instance fields
.field private final zzaT:Ljava/util/Date;

.field private final zzaV:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaX:Landroid/location/Location;

.field private final zzoN:Z

.field private final zzsR:I

.field private final zzsU:I

.field private final zzsV:Ljava/lang/String;

.field private final zzsX:Ljava/lang/String;

.field private final zzsZ:Landroid/os/Bundle;

.field private final zztb:Ljava/lang/String;

.field private final zztu:Landroid/os/Bundle;

.field private final zztv:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;"
        }
    .end annotation
.end field

.field private final zztw:Lcom/google/android/gms/ads/search/SearchAdRequest;

.field private final zztx:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzty:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcF()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    const-string v1, "emulator"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzaE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzy;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/zzy$zza;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/ads/internal/client/zzy;-><init>(Lcom/google/android/gms/ads/internal/client/zzy$zza;Lcom/google/android/gms/ads/search/SearchAdRequest;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/client/zzy$zza;Lcom/google/android/gms/ads/search/SearchAdRequest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzy$zza;->zza(Lcom/google/android/gms/ads/internal/client/zzy$zza;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzaT:Ljava/util/Date;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzy$zza;->zzb(Lcom/google/android/gms/ads/internal/client/zzy$zza;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzsX:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzy$zza;->zzc(Lcom/google/android/gms/ads/internal/client/zzy$zza;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzsR:I

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzy$zza;->zzd(Lcom/google/android/gms/ads/internal/client/zzy$zza;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzaV:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzy$zza;->zze(Lcom/google/android/gms/ads/internal/client/zzy$zza;)Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzaX:Landroid/location/Location;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzy$zza;->zzf(Lcom/google/android/gms/ads/internal/client/zzy$zza;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzoN:Z

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzy$zza;->zzg(Lcom/google/android/gms/ads/internal/client/zzy$zza;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztu:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzy$zza;->zzh(Lcom/google/android/gms/ads/internal/client/zzy$zza;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztv:Ljava/util/Map;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzy$zza;->zzi(Lcom/google/android/gms/ads/internal/client/zzy$zza;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzsV:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzy$zza;->zzj(Lcom/google/android/gms/ads/internal/client/zzy$zza;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztb:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztw:Lcom/google/android/gms/ads/search/SearchAdRequest;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzy$zza;->zzk(Lcom/google/android/gms/ads/internal/client/zzy$zza;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzsU:I

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzy$zza;->zzl(Lcom/google/android/gms/ads/internal/client/zzy$zza;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztx:Ljava/util/Set;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzy$zza;->zzm(Lcom/google/android/gms/ads/internal/client/zzy$zza;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzsZ:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/client/zzy$zza;->zzn(Lcom/google/android/gms/ads/internal/client/zzy$zza;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzty:Ljava/util/Set;

    return-void
.end method

.method public static updateCorrelator()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcH()Lcom/google/android/gms/ads/internal/client/zzm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzm;->zzcL()V

    return-void
.end method


# virtual methods
.method public getBirthday()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzaT:Ljava/util/Date;

    return-object v0
.end method

.method public getContentUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzsX:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomEventExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .local p1, "adapterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;>;"
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztu:Landroid/os/Bundle;

    const-string v1, "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCustomTargeting()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzsZ:Landroid/os/Bundle;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzsR:I

    return v0
.end method

.method public getKeywords()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzaV:Ljava/util/Set;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzaX:Landroid/location/Location;

    return-object v0
.end method

.method public getManualImpressionsEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzoN:Z

    return v0
.end method

.method public getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p1, "networkExtrasClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztv:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/mediation/NetworkExtras;

    return-object v0
.end method

.method public getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/MediationAdapter;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .local p1, "adapterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/gms/ads/mediation/MediationAdapter;>;"
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztu:Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getPublisherProvidedId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzsV:Ljava/lang/String;

    return-object v0
.end method

.method public isTestDevice(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztx:Ljava/util/Set;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzl;->zzcF()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzQ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public zzcM()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztb:Ljava/lang/String;

    return-object v0
.end method

.method public zzcN()Lcom/google/android/gms/ads/search/SearchAdRequest;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztw:Lcom/google/android/gms/ads/search/SearchAdRequest;

    return-object v0
.end method

.method public zzcO()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztv:Ljava/util/Map;

    return-object v0
.end method

.method public zzcP()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zztu:Landroid/os/Bundle;

    return-object v0
.end method

.method public zzcQ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzsU:I

    return v0
.end method

.method public zzcR()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzy;->zzty:Ljava/util/Set;

    return-object v0
.end method
