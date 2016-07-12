.class Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter$1;
.super Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper$Base;
.source "UnwrappingBeanPropertyWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;->depositSchemaProperty(Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;

.field final synthetic val$visitor:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;


# direct methods
.method constructor <init>(Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;)V
    .locals 0
    .param p2, "x0"    # Lcom/fasterxml/jackson/databind/SerializerProvider;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter$1;->this$0:Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter;

    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter$1;->val$visitor:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;

    invoke-direct {p0, p2}, Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonFormatVisitorWrapper$Base;-><init>(Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method


# virtual methods
.method public expectObjectFormat(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;
    .locals 1
    .param p1, "type"    # Lcom/fasterxml/jackson/databind/JavaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .prologue
    .line 168
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/UnwrappingBeanPropertyWriter$1;->val$visitor:Lcom/fasterxml/jackson/databind/jsonFormatVisitors/JsonObjectFormatVisitor;

    return-object v0
.end method
