.class public final Lcom/google/android/gms/location/places/PlacesOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/places/PlacesOptions$1;,
        Lcom/google/android/gms/location/places/PlacesOptions$Builder;
    }
.end annotation


# instance fields
.field public final zzaGG:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/location/places/PlacesOptions$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/google/android/gms/location/places/PlacesOptions$Builder;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/location/places/PlacesOptions$Builder;->zza(Lcom/google/android/gms/location/places/PlacesOptions$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/PlacesOptions;->zzaGG:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/location/places/PlacesOptions$Builder;Lcom/google/android/gms/location/places/PlacesOptions$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/gms/location/places/PlacesOptions$Builder;
    .param p2, "x1"    # Lcom/google/android/gms/location/places/PlacesOptions$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/location/places/PlacesOptions;-><init>(Lcom/google/android/gms/location/places/PlacesOptions$Builder;)V

    return-void
.end method
