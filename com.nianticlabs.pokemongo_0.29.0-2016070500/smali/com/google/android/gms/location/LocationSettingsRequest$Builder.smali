.class public final Lcom/google/android/gms/location/LocationSettingsRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/LocationSettingsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zzaEL:Z

.field private zzaEM:Z

.field private zzaEN:Z

.field private final zzaEO:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/location/LocationRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->zzaEO:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->zzaEL:Z

    iput-boolean v1, p0, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->zzaEM:Z

    iput-boolean v1, p0, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->zzaEN:Z

    return-void
.end method


# virtual methods
.method public addAllLocationRequests(Ljava/util/Collection;)Lcom/google/android/gms/location/LocationSettingsRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/location/LocationRequest;",
            ">;)",
            "Lcom/google/android/gms/location/LocationSettingsRequest$Builder;"
        }
    .end annotation

    .prologue
    .local p1, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/android/gms/location/LocationRequest;>;"
    iget-object v0, p0, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->zzaEO:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public addLocationRequest(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/LocationSettingsRequest$Builder;
    .locals 1
    .param p1, "request"    # Lcom/google/android/gms/location/LocationRequest;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->zzaEO:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/google/android/gms/location/LocationSettingsRequest;
    .locals 6

    new-instance v0, Lcom/google/android/gms/location/LocationSettingsRequest;

    iget-object v1, p0, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->zzaEO:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->zzaEL:Z

    iget-boolean v3, p0, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->zzaEM:Z

    iget-boolean v4, p0, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->zzaEN:Z

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/LocationSettingsRequest;-><init>(Ljava/util/List;ZZZLcom/google/android/gms/location/LocationSettingsRequest$1;)V

    return-object v0
.end method

.method public setAlwaysShow(Z)Lcom/google/android/gms/location/LocationSettingsRequest$Builder;
    .locals 0
    .param p1, "show"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->zzaEL:Z

    return-object p0
.end method

.method public setNeedBle(Z)Lcom/google/android/gms/location/LocationSettingsRequest$Builder;
    .locals 0
    .param p1, "needBle"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->zzaEM:Z

    return-object p0
.end method
