.class public final Lcom/google/android/gms/location/places/PlaceFilter$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/places/PlaceFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private zzaGl:Z

.field private zzaGm:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzaGn:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/location/places/UserDataType;",
            ">;"
        }
    .end annotation
.end field

.field private zzaGo:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/location/places/PlaceFilter$zza;->zzaGm:Ljava/util/Collection;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/location/places/PlaceFilter$zza;->zzaGl:Z

    iput-object v1, p0, Lcom/google/android/gms/location/places/PlaceFilter$zza;->zzaGn:Ljava/util/Collection;

    iput-object v1, p0, Lcom/google/android/gms/location/places/PlaceFilter$zza;->zzaGo:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/location/places/PlaceFilter$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/location/places/PlaceFilter$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zzwU()Lcom/google/android/gms/location/places/PlaceFilter;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceFilter$zza;->zzaGm:Ljava/util/Collection;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceFilter$zza;->zzaGm:Ljava/util/Collection;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceFilter$zza;->zzaGn:Ljava/util/Collection;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/gms/location/places/PlaceFilter$zza;->zzaGn:Ljava/util/Collection;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/location/places/PlaceFilter$zza;->zzaGo:[Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/location/places/PlaceFilter$zza;->zzaGo:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :cond_0
    new-instance v3, Lcom/google/android/gms/location/places/PlaceFilter;

    iget-boolean v4, p0, Lcom/google/android/gms/location/places/PlaceFilter$zza;->zzaGl:Z

    invoke-direct {v3, v0, v4, v1, v2}, Lcom/google/android/gms/location/places/PlaceFilter;-><init>(Ljava/util/Collection;ZLjava/util/Collection;Ljava/util/Collection;)V

    return-object v3

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v2, v1

    goto :goto_1
.end method
