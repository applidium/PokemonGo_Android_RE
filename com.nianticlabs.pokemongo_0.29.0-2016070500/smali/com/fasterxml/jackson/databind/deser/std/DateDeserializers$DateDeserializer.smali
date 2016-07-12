.class public Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;
.source "DateDeserializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DateDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# static fields
.field public static final instance:Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateDeserializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 247
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateDeserializer;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateDeserializer;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateDeserializer;->instance:Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateDeserializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 249
    const-class v0, Ljava/util/Date;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateDeserializer;Ljava/text/DateFormat;Ljava/lang/String;)V
    .locals 0
    .param p1, "base"    # Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateDeserializer;
    .param p2, "df"    # Ljava/text/DateFormat;
    .param p3, "formatString"    # Ljava/lang/String;

    .prologue
    .line 251
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;Ljava/text/DateFormat;Ljava/lang/String;)V

    .line 252
    return-void
.end method


# virtual methods
.method public bridge synthetic createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .param p2, "x1"    # Lcom/fasterxml/jackson/databind/BeanProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 245
    invoke-super {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;->createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "x1"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 245
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Date;
    .locals 1
    .param p1, "jp"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateDeserializer;->_parseDate(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic withDateFormat(Ljava/text/DateFormat;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer;
    .locals 1
    .param p1, "x0"    # Ljava/text/DateFormat;
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 245
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateDeserializer;->withDateFormat(Ljava/text/DateFormat;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateDeserializer;

    move-result-object v0

    return-object v0
.end method

.method protected withDateFormat(Ljava/text/DateFormat;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateDeserializer;
    .locals 1
    .param p1, "df"    # Ljava/text/DateFormat;
    .param p2, "formatString"    # Ljava/lang/String;

    .prologue
    .line 256
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateDeserializer;

    invoke-direct {v0, p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers$DateDeserializer;Ljava/text/DateFormat;Ljava/lang/String;)V

    return-object v0
.end method
