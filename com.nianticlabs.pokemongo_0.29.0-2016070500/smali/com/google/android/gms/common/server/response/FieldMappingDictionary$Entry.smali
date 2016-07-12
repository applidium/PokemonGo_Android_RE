.class public Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/server/response/FieldMappingDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/common/server/response/zzd;


# instance fields
.field final className:Ljava/lang/String;

.field final versionCode:I

.field final zzahh:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/server/response/FieldMappingDictionary$FieldMapPair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/server/response/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;->CREATOR:Lcom/google/android/gms/common/server/response/zzd;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "versionCode"    # I
    .param p2, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/server/response/FieldMappingDictionary$FieldMapPair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "fieldMapping":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/common/server/response/FieldMappingDictionary$FieldMapPair;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;->className:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;->zzahh:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<**>;>;)V"
        }
    .end annotation

    .prologue
    .local p2, "fieldMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<**>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;->versionCode:I

    iput-object p1, p0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;->className:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;->zzF(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;->zzahh:Ljava/util/ArrayList;

    return-void
.end method

.method private static zzF(Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<**>;>;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/server/response/FieldMappingDictionary$FieldMapPair;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$FieldMapPair;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    invoke-direct {v4, v0, v1}, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$FieldMapPair;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;->CREATOR:Lcom/google/android/gms/common/server/response/zzd;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;->CREATOR:Lcom/google/android/gms/common/server/response/zzd;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/server/response/zzd;->zza(Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzpU()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<**>;>;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;->zzahh:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$Entry;->zzahh:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$FieldMapPair;

    iget-object v4, v0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$FieldMapPair;->key:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/common/server/response/FieldMappingDictionary$FieldMapPair;->zzahi:Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method
