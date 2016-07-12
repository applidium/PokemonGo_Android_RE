.class Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest$RequestSerializer;
.super Lcom/fasterxml/jackson/databind/JsonSerializer;
.source "UpsightRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RequestSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/JsonSerializer",
        "<",
        "Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final IDENTIFIERS_KEY:Ljava/lang/String; = "identifiers"

.field private static final LOCALE_KEY:Ljava/lang/String; = "locale"

.field private static final OPT_OUT_KEY:Ljava/lang/String; = "opt_out"

.field private static final REQUEST_TS_KEY:Ljava/lang/String; = "request_ts"

.field private static final SESSIONS_KEY:Ljava/lang/String; = "sessions"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 16
    .param p1, "request"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;
    .param p2, "jsonGenerator"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "serializerProvider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 124
    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->mSchema:Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;
    invoke-static/range {p1 .. p1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->access$000(Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;)Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;

    move-result-object v12

    invoke-virtual {v12}, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;->availableKeys()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 125
    .local v4, "key":Ljava/lang/String;
    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->mSchema:Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;
    invoke-static/range {p1 .. p1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->access$000(Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;)Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;

    move-result-object v12

    invoke-virtual {v12, v4}, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;->getValueFor(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 127
    .local v11, "value":Ljava/lang/Object;
    if-eqz v11, :cond_0

    .line 128
    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v11}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 132
    .end local v4    # "key":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/Object;
    :cond_1
    const-string v12, "request_ts"

    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->mRequestTs:J
    invoke-static/range {p1 .. p1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->access$100(Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    const-string v12, "opt_out"

    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->mOptOut:Z
    invoke-static/range {p1 .. p1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->access$200(Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->mSchema:Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;
    invoke-static/range {p1 .. p1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->access$000(Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;)Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;

    move-result-object v9

    .line 136
    .local v9, "schema":Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;
    if-eqz v9, :cond_2

    .line 137
    invoke-virtual {v9}, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v8

    .line 138
    .local v8, "nameString":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 139
    const-string v12, "identifiers"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v8}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    .end local v8    # "nameString":Ljava/lang/String;
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    .line 144
    .local v6, "locale":Ljava/util/Locale;
    if-eqz v6, :cond_3

    .line 145
    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    .line 146
    .local v7, "localeString":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 147
    const-string v12, "locale"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v7}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    .end local v7    # "localeString":Ljava/lang/String;
    :cond_3
    const-string v12, "sessions"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeArrayFieldStart(Ljava/lang/String;)V

    .line 152
    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->mSessions:[Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;
    invoke-static/range {p1 .. p1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;->access$300(Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;)[Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;

    move-result-object v2

    .local v2, "arr$":[Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_4

    aget-object v10, v2, v3

    .line 153
    .local v10, "session":Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v10, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeValue(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 152
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 156
    .end local v10    # "session":Lcom/upsight/android/analytics/internal/dispatcher/delivery/Session;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    .line 157
    invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 158
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "x2"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 110
    check-cast p1, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest$RequestSerializer;->serialize(Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method
