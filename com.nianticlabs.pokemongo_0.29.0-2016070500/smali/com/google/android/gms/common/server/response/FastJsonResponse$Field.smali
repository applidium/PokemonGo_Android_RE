.class public Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/server/response/FastJsonResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/common/server/response/zza;


# instance fields
.field private final mVersionCode:I

.field protected final zzagU:I

.field protected final zzagV:Z

.field protected final zzagW:I

.field protected final zzagX:Z

.field protected final zzagY:Ljava/lang/String;

.field protected final zzagZ:I

.field protected final zzaha:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse;",
            ">;"
        }
    .end annotation
.end field

.field protected final zzahb:Ljava/lang/String;

.field private zzahc:Lcom/google/android/gms/common/server/response/FieldMappingDictionary;

.field private zzahd:Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$zza",
            "<TI;TO;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/server/response/zza;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->CREATOR:Lcom/google/android/gms/common/server/response/zza;

    return-void
.end method

.method constructor <init>(IIZIZLjava/lang/String;ILjava/lang/String;Lcom/google/android/gms/common/server/converter/ConverterWrapper;)V
    .locals 2
    .param p1, "versionCode"    # I
    .param p2, "typeIn"    # I
    .param p3, "typeInArray"    # Z
    .param p4, "typeOut"    # I
    .param p5, "typeOutArray"    # Z
    .param p6, "outputFieldName"    # Ljava/lang/String;
    .param p7, "safeParcelableFieldId"    # I
    .param p8, "concreteTypeName"    # Ljava/lang/String;
    .param p9, "wrappedConverter"    # Lcom/google/android/gms/common/server/converter/ConverterWrapper;

    .prologue
    .local p0, "this":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<TI;TO;>;"
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzagU:I

    iput-boolean p3, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzagV:Z

    iput p4, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzagW:I

    iput-boolean p5, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzagX:Z

    iput-object p6, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzagY:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzagZ:I

    if-nez p8, :cond_0

    iput-object v1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzaha:Ljava/lang/Class;

    iput-object v1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzahb:Ljava/lang/String;

    :goto_0
    if-nez p9, :cond_1

    iput-object v1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzahd:Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;

    :goto_1
    return-void

    :cond_0
    const-class v0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;

    iput-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzaha:Ljava/lang/Class;

    iput-object p8, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzahb:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p9}, Lcom/google/android/gms/common/server/converter/ConverterWrapper;->zzpz()Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzahd:Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;

    goto :goto_1
.end method

.method protected constructor <init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;)V
    .locals 1
    .param p1, "typeIn"    # I
    .param p2, "typeInArray"    # Z
    .param p3, "typeOut"    # I
    .param p4, "typeOutArray"    # Z
    .param p5, "outputFieldName"    # Ljava/lang/String;
    .param p6, "safeParcelableFieldId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZIZ",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse;",
            ">;",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$zza",
            "<TI;TO;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<TI;TO;>;"
    .local p7, "concreteType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/android/gms/common/server/response/FastJsonResponse;>;"
    .local p8, "converter":Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$zza<TI;TO;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->mVersionCode:I

    iput p1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzagU:I

    iput-boolean p2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzagV:Z

    iput p3, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzagW:I

    iput-boolean p4, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzagX:Z

    iput-object p5, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzagY:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzagZ:I

    iput-object p7, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzaha:Ljava/lang/Class;

    if-nez p7, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzahb:Ljava/lang/String;

    :goto_0
    iput-object p8, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzahd:Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;

    return-void

    :cond_0
    invoke-virtual {p7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzahb:Ljava/lang/String;

    goto :goto_0
.end method

.method public static zza(Ljava/lang/String;ILcom/google/android/gms/common/server/response/FastJsonResponse$zza;Z)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$zza",
            "<**>;Z)",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    invoke-interface {p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;->zzpB()I

    move-result v1

    invoke-interface {p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;->zzpC()I

    move-result v3

    const/4 v4, 0x0

    const/4 v7, 0x0

    move v2, p3

    move-object v5, p0

    move v6, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;)V

    return-object v0
.end method

.method public static zza(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<TT;TT;>;"
        }
    .end annotation

    const/16 v1, 0xb

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    const/4 v8, 0x0

    move v3, v1

    move v4, v2

    move-object v5, p0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;)V

    return-object v0
.end method

.method public static zzb(Ljava/lang/String;ILjava/lang/Class;)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<",
            "Ljava/util/ArrayList",
            "<TT;>;",
            "Ljava/util/ArrayList",
            "<TT;>;>;"
        }
    .end annotation

    const/16 v1, 0xb

    const/4 v2, 0x1

    new-instance v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    const/4 v8, 0x0

    move v3, v1

    move v4, v2

    move-object v5, p0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;)V

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzahd:Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;

    return-object v0
.end method

.method public static zzj(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move v2, v1

    move v3, v1

    move v4, v1

    move-object v5, p0

    move v6, p1

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;)V

    return-object v0
.end method

.method public static zzk(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move v3, v1

    move v4, v2

    move-object v5, p0

    move v6, p1

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;)V

    return-object v0
.end method

.method public static zzl(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move v3, v1

    move v4, v2

    move-object v5, p0

    move v6, p1

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;)V

    return-object v0
.end method

.method public static zzm(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move v3, v1

    move v4, v2

    move-object v5, p0

    move v6, p1

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;)V

    return-object v0
.end method

.method public static zzn(Ljava/lang/String;I)Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x1

    new-instance v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    move v3, v1

    move v4, v2

    move-object v5, p0

    move v6, p1

    move-object v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;-><init>(IZIZLjava/lang/String;ILjava/lang/Class;Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;)V

    return-object v0
.end method


# virtual methods
.method public convertBack(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;)TI;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<TI;TO;>;"
    .local p1, "output":Ljava/lang/Object;, "TO;"
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzahd:Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;->convertBack(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->CREATOR:Lcom/google/android/gms/common/server/response/zza;

    const/4 v0, 0x0

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->mVersionCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v3, 0xa

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Field\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "            versionCode="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->mVersionCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "                 typeIn="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzagU:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "            typeInArray="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzagV:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "                typeOut="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzagW:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "           typeOutArray="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzagX:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "        outputFieldName="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzagY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "      safeParcelFieldId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzagZ:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "       concreteTypeName="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzpM()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzpL()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "     concreteType.class="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzpL()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, "          converterName="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzahd:Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzahd:Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .local p0, "this":Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;, "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field<TI;TO;>;"
    sget-object v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->CREATOR:Lcom/google/android/gms/common/server/response/zza;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/server/response/zza;->zza(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/server/response/FieldMappingDictionary;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzahc:Lcom/google/android/gms/common/server/response/FieldMappingDictionary;

    return-void
.end method

.method public zzpB()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzagU:I

    return v0
.end method

.method public zzpC()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzagW:I

    return v0
.end method

.method public zzpG()Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<TI;TO;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    iget v1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->mVersionCode:I

    iget v2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzagU:I

    iget-boolean v3, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzagV:Z

    iget v4, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzagW:I

    iget-boolean v5, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzagX:Z

    iget-object v6, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzagY:Ljava/lang/String;

    iget v7, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzagZ:I

    iget-object v8, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzahb:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzpO()Lcom/google/android/gms/common/server/converter/ConverterWrapper;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;-><init>(IIZIZLjava/lang/String;ILjava/lang/String;Lcom/google/android/gms/common/server/converter/ConverterWrapper;)V

    return-object v0
.end method

.method public zzpH()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzagV:Z

    return v0
.end method

.method public zzpI()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzagX:Z

    return v0
.end method

.method public zzpJ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzagY:Ljava/lang/String;

    return-object v0
.end method

.method public zzpK()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzagZ:I

    return v0
.end method

.method public zzpL()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzaha:Ljava/lang/Class;

    return-object v0
.end method

.method zzpM()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzahb:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzahb:Ljava/lang/String;

    goto :goto_0
.end method

.method public zzpN()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzahd:Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method zzpO()Lcom/google/android/gms/common/server/converter/ConverterWrapper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzahd:Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzahd:Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;

    invoke-static {v0}, Lcom/google/android/gms/common/server/converter/ConverterWrapper;->zza(Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;)Lcom/google/android/gms/common/server/converter/ConverterWrapper;

    move-result-object v0

    goto :goto_0
.end method

.method public zzpP()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<**>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzahb:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzahc:Lcom/google/android/gms/common/server/response/FieldMappingDictionary;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzahc:Lcom/google/android/gms/common/server/response/FieldMappingDictionary;

    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zzahb:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/server/response/FieldMappingDictionary;->zzcw(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
