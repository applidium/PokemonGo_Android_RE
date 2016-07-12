.class public final enum Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
.super Ljava/lang/Enum;
.source "JsonFormatTypes.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

.field public static final enum ANY:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

.field public static final enum ARRAY:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

.field public static final enum BOOLEAN:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

.field public static final enum INTEGER:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

.field public static final enum NULL:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

.field public static final enum NUMBER:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

.field public static final enum OBJECT:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

.field public static final enum STRING:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

.field private static final _byLCName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 10
    new-instance v4, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    const-string v5, "STRING"

    invoke-direct {v4, v5, v7}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->STRING:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    .line 11
    new-instance v4, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    const-string v5, "NUMBER"

    invoke-direct {v4, v5, v8}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->NUMBER:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    .line 12
    new-instance v4, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    const-string v5, "INTEGER"

    invoke-direct {v4, v5, v9}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->INTEGER:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    .line 13
    new-instance v4, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    const-string v5, "BOOLEAN"

    invoke-direct {v4, v5, v10}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->BOOLEAN:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    .line 14
    new-instance v4, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    const-string v5, "OBJECT"

    invoke-direct {v4, v5, v11}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->OBJECT:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    .line 15
    new-instance v4, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    const-string v5, "ARRAY"

    const/4 v6, 0x5

    invoke-direct {v4, v5, v6}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->ARRAY:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    .line 16
    new-instance v4, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    const-string v5, "NULL"

    const/4 v6, 0x6

    invoke-direct {v4, v5, v6}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->NULL:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    .line 17
    new-instance v4, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    const-string v5, "ANY"

    const/4 v6, 0x7

    invoke-direct {v4, v5, v6}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->ANY:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    .line 8
    const/16 v4, 0x8

    new-array v4, v4, [Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    sget-object v5, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->STRING:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    aput-object v5, v4, v7

    sget-object v5, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->NUMBER:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    aput-object v5, v4, v8

    sget-object v5, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->INTEGER:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    aput-object v5, v4, v9

    sget-object v5, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->BOOLEAN:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    aput-object v5, v4, v10

    sget-object v5, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->OBJECT:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    aput-object v5, v4, v11

    const/4 v5, 0x5

    sget-object v6, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->ARRAY:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    aput-object v6, v4, v5

    const/4 v5, 0x6

    sget-object v6, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->NULL:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    aput-object v6, v4, v5

    const/4 v5, 0x7

    sget-object v6, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->ANY:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    aput-object v6, v4, v5

    sput-object v4, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->$VALUES:[Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    .line 19
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->_byLCName:Ljava/util/Map;

    .line 21
    invoke-static {}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->values()[Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    move-result-object v0

    .local v0, "arr$":[Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 22
    .local v3, "t":Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
    sget-object v4, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->_byLCName:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24
    .end local v3    # "t":Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forValue(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonCreator;
    .end annotation

    .prologue
    .line 33
    sget-object v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->_byLCName:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    return-object v0
.end method

.method public static values()[Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->$VALUES:[Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    invoke-virtual {v0}, [Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;

    return-object v0
.end method


# virtual methods
.method public value()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonValue;
    .end annotation

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatTypes;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
