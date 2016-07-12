.class public final Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$1;,
        Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    }
.end annotation


# static fields
.field public static final DEVICE_ID_EMULATOR:Ljava/lang/String;

.field public static final ERROR_CODE_INTERNAL_ERROR:I = 0x0

.field public static final ERROR_CODE_INVALID_REQUEST:I = 0x1

.field public static final ERROR_CODE_NETWORK_ERROR:I = 0x2

.field public static final ERROR_CODE_NO_FILL:I = 0x3

.field public static final GENDER_FEMALE:I = 0x2

.field public static final GENDER_MALE:I = 0x1

.field public static final GENDER_UNKNOWN:I


# instance fields
.field private final zznO:Lcom/google/android/gms/ads/internal/client/zzy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzy;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzy;

    invoke-static {p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;->zza(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;)Lcom/google/android/gms/ads/internal/client/zzy$zza;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzy;-><init>(Lcom/google/android/gms/ads/internal/client/zzy$zza;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zznO:Lcom/google/android/gms/ads/internal/client/zzy;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;
    .param p2, "x1"    # Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;-><init>(Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest$Builder;)V

    return-void
.end method

.method public static updateCorrelator()V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzy;->updateCorrelator()V

    return-void
.end method


# virtual methods
.method public getBirthday()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zznO:Lcom/google/android/gms/ads/internal/client/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzy;->getBirthday()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getContentUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zznO:Lcom/google/android/gms/ads/internal/client/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzy;->getContentUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomEventExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .local p1, "adapterClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zznO:Lcom/google/android/gms/ads/internal/client/zzy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzy;->getCustomEventExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getCustomTargeting()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zznO:Lcom/google/android/gms/ads/internal/client/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzy;->getCustomTargeting()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getGender()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zznO:Lcom/google/android/gms/ads/internal/client/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzy;->getGender()I

    move-result v0

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

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zznO:Lcom/google/android/gms/ads/internal/client/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzy;->getKeywords()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zznO:Lcom/google/android/gms/ads/internal/client/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzy;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getManualImpressionsEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zznO:Lcom/google/android/gms/ads/internal/client/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzy;->getManualImpressionsEnabled()Z

    move-result v0

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
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zznO:Lcom/google/android/gms/ads/internal/client/zzy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzy;->getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/MediationAdapter;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .local p1, "adapterClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zznO:Lcom/google/android/gms/ads/internal/client/zzy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzy;->getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getPublisherProvidedId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zznO:Lcom/google/android/gms/ads/internal/client/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzy;->getPublisherProvidedId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isTestDevice(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zznO:Lcom/google/android/gms/ads/internal/client/zzy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzy;->isTestDevice(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public zzaF()Lcom/google/android/gms/ads/internal/client/zzy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/doubleclick/PublisherAdRequest;->zznO:Lcom/google/android/gms/ads/internal/client/zzy;

    return-object v0
.end method
