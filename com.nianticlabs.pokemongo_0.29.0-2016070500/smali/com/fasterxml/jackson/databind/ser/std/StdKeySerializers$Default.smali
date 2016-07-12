.class public Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Default;
.super Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;
.source "StdKeySerializers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/StdSerializer",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static final TYPE_CALENDAR:I = 0x2

.field static final TYPE_CLASS:I = 0x3

.field static final TYPE_DATE:I = 0x1

.field static final TYPE_ENUM:I = 0x4

.field static final TYPE_TO_STRING:I = 0x5


# instance fields
.field protected final _typeId:I


# direct methods
.method public constructor <init>(ILjava/lang/Class;)V
    .locals 1
    .param p1, "typeId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/fasterxml/jackson/databind/ser/std/StdSerializer;-><init>(Ljava/lang/Class;Z)V

    .line 125
    iput p1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Default;->_typeId:I

    .line 126
    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    iget v1, p0, Lcom/fasterxml/jackson/databind/ser/std/StdKeySerializers$Default;->_typeId:I

    packed-switch v1, :pswitch_data_0

    .line 149
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 151
    .end local p1    # "value":Ljava/lang/Object;
    :goto_0
    return-void

    .line 132
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_0
    check-cast p1, Ljava/util/Date;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeDateKey(Ljava/util/Date;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 135
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_1
    check-cast p1, Ljava/util/Calendar;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeDateKey(JLcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    .line 138
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_2
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    .restart local p1    # "value":Ljava/lang/Object;
    :pswitch_3
    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_ENUMS_USING_TO_STRING:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/databind/SerializerProvider;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .end local p1    # "value":Ljava/lang/Object;
    .local v0, "str":Ljava/lang/String;
    :goto_1
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    .end local v0    # "str":Ljava/lang/String;
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_0
    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
