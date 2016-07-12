.class public final Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/identity/intents/UserAddressRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field final synthetic zzaDi:Lcom/google/android/gms/identity/intents/UserAddressRequest;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/identity/intents/UserAddressRequest;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;->zzaDi:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/identity/intents/UserAddressRequest;Lcom/google/android/gms/identity/intents/UserAddressRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/identity/intents/UserAddressRequest;
    .param p2, "x1"    # Lcom/google/android/gms/identity/intents/UserAddressRequest$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;-><init>(Lcom/google/android/gms/identity/intents/UserAddressRequest;)V

    return-void
.end method


# virtual methods
.method public addAllowedCountrySpecification(Lcom/google/android/gms/identity/intents/model/CountrySpecification;)Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;
    .locals 2
    .param p1, "countrySpecification"    # Lcom/google/android/gms/identity/intents/model/CountrySpecification;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;->zzaDi:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    iget-object v0, v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->zzaDh:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;->zzaDi:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->zzaDh:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;->zzaDi:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    iget-object v0, v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->zzaDh:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addAllowedCountrySpecifications(Ljava/util/Collection;)Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/identity/intents/model/CountrySpecification;",
            ">;)",
            "Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;"
        }
    .end annotation

    .prologue
    .local p1, "countrySpecifications":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/android/gms/identity/intents/model/CountrySpecification;>;"
    iget-object v0, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;->zzaDi:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    iget-object v0, v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->zzaDh:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;->zzaDi:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->zzaDh:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;->zzaDi:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    iget-object v0, v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->zzaDh:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public build()Lcom/google/android/gms/identity/intents/UserAddressRequest;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;->zzaDi:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    iget-object v0, v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->zzaDh:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;->zzaDi:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    iget-object v1, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;->zzaDi:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    iget-object v1, v1, Lcom/google/android/gms/identity/intents/UserAddressRequest;->zzaDh:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->zzaDh:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;->zzaDi:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    return-object v0
.end method
