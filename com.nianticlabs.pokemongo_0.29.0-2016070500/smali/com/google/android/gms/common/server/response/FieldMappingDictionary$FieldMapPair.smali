.class public Lcom/google/android/gms/common/server/response/FieldMappingDictionary$FieldMapPair;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/server/response/FieldMappingDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldMapPair"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/common/server/response/zzb;


# instance fields
.field final key:Ljava/lang/String;

.field final versionCode:I

.field final zzahi:Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/server/response/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$FieldMapPair;->CREATOR:Lcom/google/android/gms/common/server/response/zzb;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .local p3, "value":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<**>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$FieldMapPair;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$FieldMapPair;->key:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$FieldMapPair;->zzahi:Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .local p2, "value":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<**>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$FieldMapPair;->versionCode:I

    iput-object p1, p0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$FieldMapPair;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$FieldMapPair;->zzahi:Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$FieldMapPair;->CREATOR:Lcom/google/android/gms/common/server/response/zzb;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$FieldMapPair;->CREATOR:Lcom/google/android/gms/common/server/response/zzb;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/server/response/zzb;->zza(Lcom/google/android/gms/common/server/response/FieldMappingDictionary$FieldMapPair;Landroid/os/Parcel;I)V

    return-void
.end method
