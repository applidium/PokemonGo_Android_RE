.class public final Lcom/upsight/android/managedvariables/internal/type/UxmSchema;
.super Ljava/lang/Object;
.source "UxmSchema.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/managedvariables/internal/type/UxmSchema$FloatSchema;,
        Lcom/upsight/android/managedvariables/internal/type/UxmSchema$IntSchema;,
        Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BooleanSchema;,
        Lcom/upsight/android/managedvariables/internal/type/UxmSchema$StringSchema;,
        Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;
    }
.end annotation


# static fields
.field private static final ITEM_SCHEMA_KEY_DEFAULT:Ljava/lang/String; = "default"

.field private static final ITEM_SCHEMA_KEY_TAG:Ljava/lang/String; = "tag"

.field private static final ITEM_SCHEMA_KEY_TYPE:Ljava/lang/String; = "type"

.field private static final sClassSchemaMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sModelTypeSchemaMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sTypeSchemaMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;",
            ">;"
        }
    .end annotation
.end field

.field private mItemSchemaMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;",
            ">;"
        }
    .end annotation
.end field

.field private mLogger:Lcom/upsight/android/logger/UpsightLogger;

.field public final mSchemaJsonString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$1;

    invoke-direct {v0}, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$1;-><init>()V

    sput-object v0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->sClassSchemaMap:Ljava/util/Map;

    .line 62
    new-instance v0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$2;

    invoke-direct {v0}, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$2;-><init>()V

    sput-object v0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->sTypeSchemaMap:Ljava/util/Map;

    .line 73
    new-instance v0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$3;

    invoke-direct {v0}, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$3;-><init>()V

    sput-object v0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->sModelTypeSchemaMap:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/upsight/android/logger/UpsightLogger;)V
    .locals 1
    .param p1, "logger"    # Lcom/upsight/android/logger/UpsightLogger;

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->mItemList:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->mItemSchemaMap:Ljava/util/Map;

    .line 192
    iput-object p1, p0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->mSchemaJsonString:Ljava/lang/String;

    .line 194
    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/util/Map;Lcom/upsight/android/logger/UpsightLogger;Ljava/lang/String;)V
    .locals 1
    .param p3, "logger"    # Lcom/upsight/android/logger/UpsightLogger;
    .param p4, "schemaJsonString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;",
            ">;",
            "Lcom/upsight/android/logger/UpsightLogger;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;>;"
    .local p2, "itemSchemaMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->mItemList:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->mItemSchemaMap:Ljava/util/Map;

    .line 209
    iput-object p1, p0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->mItemList:Ljava/util/List;

    .line 210
    iput-object p2, p0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->mItemSchemaMap:Ljava/util/Map;

    .line 211
    iput-object p3, p0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 212
    iput-object p4, p0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->mSchemaJsonString:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public static create(Ljava/lang/String;Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/upsight/android/logger/UpsightLogger;)Lcom/upsight/android/managedvariables/internal/type/UxmSchema;
    .locals 13
    .param p0, "uxmSchemaString"    # Ljava/lang/String;
    .param p1, "mapper"    # Lcom/fasterxml/jackson/databind/ObjectMapper;
    .param p2, "logger"    # Lcom/upsight/android/logger/UpsightLogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v4, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 117
    .local v7, "itemSchemaMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;>;"
    const/4 v10, 0x0

    .line 119
    .local v10, "uxmSchemaNode":Lcom/fasterxml/jackson/databind/node/ArrayNode;
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v10

    .end local v10    # "uxmSchemaNode":Lcom/fasterxml/jackson/databind/node/ArrayNode;
    check-cast v10, Lcom/fasterxml/jackson/databind/node/ArrayNode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    .restart local v10    # "uxmSchemaNode":Lcom/fasterxml/jackson/databind/node/ArrayNode;
    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 132
    .local v5, "itemNode":Lcom/fasterxml/jackson/databind/JsonNode;
    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/JsonNode;->isObject()Z

    move-result v11

    if-nez v11, :cond_0

    .line 133
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Managed variable schema must be a JSON object: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "errMsg":Ljava/lang/String;
    const-string v11, "Upsight"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-interface {p2, v11, v2, v12}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-direct {v11, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 120
    .end local v2    # "errMsg":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "itemNode":Lcom/fasterxml/jackson/databind/JsonNode;
    .end local v10    # "uxmSchemaNode":Lcom/fasterxml/jackson/databind/node/ArrayNode;
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to parse UXM schema JSON: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 122
    .restart local v2    # "errMsg":Ljava/lang/String;
    const-string v11, "Upsight"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-interface {p2, v11, v1, v2, v12}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-direct {v11, v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 124
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "errMsg":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 125
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "UXM schema must be a JSON array: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 126
    .restart local v2    # "errMsg":Ljava/lang/String;
    const-string v11, "Upsight"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-interface {p2, v11, v1, v2, v12}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-direct {v11, v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 137
    .end local v1    # "e":Ljava/lang/ClassCastException;
    .end local v2    # "errMsg":Ljava/lang/String;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "itemNode":Lcom/fasterxml/jackson/databind/JsonNode;
    .restart local v10    # "uxmSchemaNode":Lcom/fasterxml/jackson/databind/node/ArrayNode;
    :cond_0
    const-string v11, "tag"

    invoke-virtual {v5, v11}, Lcom/fasterxml/jackson/databind/JsonNode;->path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v11

    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/JsonNode;->isTextual()Z

    move-result v11

    if-nez v11, :cond_1

    .line 138
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Managed variable schema must contain a tag: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 139
    .restart local v2    # "errMsg":Ljava/lang/String;
    const-string v11, "Upsight"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-interface {p2, v11, v2, v12}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-direct {v11, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 142
    .end local v2    # "errMsg":Ljava/lang/String;
    :cond_1
    const-string v11, "type"

    invoke-virtual {v5, v11}, Lcom/fasterxml/jackson/databind/JsonNode;->path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v11

    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/JsonNode;->isTextual()Z

    move-result v11

    if-nez v11, :cond_2

    .line 143
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Managed variable schema must contain a type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 144
    .restart local v2    # "errMsg":Ljava/lang/String;
    const-string v11, "Upsight"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-interface {p2, v11, v2, v12}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-direct {v11, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 147
    .end local v2    # "errMsg":Ljava/lang/String;
    :cond_2
    const-string v11, "default"

    invoke-virtual {v5, v11}, Lcom/fasterxml/jackson/databind/JsonNode;->has(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 148
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Managed variable schema must contain a default value: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 149
    .restart local v2    # "errMsg":Ljava/lang/String;
    const-string v11, "Upsight"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-interface {p2, v11, v2, v12}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-direct {v11, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 154
    .end local v2    # "errMsg":Ljava/lang/String;
    :cond_3
    sget-object v11, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->sTypeSchemaMap:Ljava/util/Map;

    const-string v12, "type"

    invoke-virtual {v5, v12}, Lcom/fasterxml/jackson/databind/JsonNode;->path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v12

    invoke-virtual {v12}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 155
    .local v9, "type":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    move-object v11, v5

    .line 156
    check-cast v11, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    const-string v12, "type"

    invoke-virtual {v11, v12, v9}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 164
    const-string v11, "tag"

    invoke-virtual {v5, v11}, Lcom/fasterxml/jackson/databind/JsonNode;->path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v11

    invoke-virtual {v11}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v8

    .line 165
    .local v8, "tag":Ljava/lang/String;
    sget-object v11, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->sModelTypeSchemaMap:Ljava/util/Map;

    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 166
    .local v0, "clazz":Ljava/lang/Class;
    if-eqz v0, :cond_5

    .line 168
    :try_start_1
    invoke-virtual {p1, v5, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;

    .line 169
    .local v6, "itemSchema":Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 171
    .end local v6    # "itemSchema":Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;
    :catch_2
    move-exception v1

    .line 172
    .local v1, "e":Lcom/fasterxml/jackson/core/JsonProcessingException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Managed variable contains invalid fields: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 173
    .restart local v2    # "errMsg":Ljava/lang/String;
    const-string v11, "Upsight"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-interface {p2, v11, v1, v2, v12}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-direct {v11, v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 158
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "e":Lcom/fasterxml/jackson/core/JsonProcessingException;
    .end local v2    # "errMsg":Ljava/lang/String;
    .end local v8    # "tag":Ljava/lang/String;
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Managed variable contains invalid types: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 159
    .restart local v2    # "errMsg":Ljava/lang/String;
    const-string v11, "Upsight"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-interface {p2, v11, v2, v12}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-direct {v11, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 177
    .end local v2    # "errMsg":Ljava/lang/String;
    .restart local v0    # "clazz":Ljava/lang/Class;
    .restart local v8    # "tag":Ljava/lang/String;
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown managed variable type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 178
    .restart local v2    # "errMsg":Ljava/lang/String;
    const-string v11, "Upsight"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-interface {p2, v11, v2, v12}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-direct {v11, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 183
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v2    # "errMsg":Ljava/lang/String;
    .end local v5    # "itemNode":Lcom/fasterxml/jackson/databind/JsonNode;
    .end local v8    # "tag":Ljava/lang/String;
    .end local v9    # "type":Ljava/lang/String;
    :cond_6
    new-instance v11, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;

    invoke-virtual {v10}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v4, v7, p2, v12}, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;-><init>(Ljava/util/List;Ljava/util/Map;Lcom/upsight/android/logger/UpsightLogger;Ljava/lang/String;)V

    return-object v11
.end method


# virtual methods
.method public get(Ljava/lang/Class;Ljava/lang/String;)Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;
    .locals 7
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v4, p0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->mItemSchemaMap:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;

    .line 237
    .local v2, "itemSchema":Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;
    if-nez v2, :cond_1

    .line 238
    const/4 v2, 0x0

    .line 248
    .end local v2    # "itemSchema":Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;
    :cond_0
    return-object v2

    .line 241
    .restart local v2    # "itemSchema":Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;
    :cond_1
    sget-object v4, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->sClassSchemaMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 242
    .local v1, "expectedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v4, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->sModelTypeSchemaMap:Ljava/util/Map;

    iget-object v5, v2, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;->type:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 243
    .local v3, "tagClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 244
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The tag is not of the expected class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "errMsg":Ljava/lang/String;
    iget-object v4, p0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v5, "Upsight"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v0, v6}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getAllOrdered()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;",
            ">;"
        }
    .end annotation

    .prologue
    .line 222
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->mItemList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
