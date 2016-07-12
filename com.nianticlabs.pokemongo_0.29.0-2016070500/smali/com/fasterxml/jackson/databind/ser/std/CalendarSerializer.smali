.class public Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;
.super Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;
.source "CalendarSerializer.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/databind/annotation/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase",
        "<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field public static final instance:Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;->instance:Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, v0, v0}, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;-><init>(Ljava/lang/Boolean;Ljava/text/DateFormat;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/text/DateFormat;)V
    .locals 1
    .param p1, "useTimestamp"    # Ljava/lang/Boolean;
    .param p2, "customFormat"    # Ljava/text/DateFormat;

    .prologue
    .line 26
    const-class v0, Ljava/util/Calendar;

    invoke-direct {p0, v0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;-><init>(Ljava/lang/Class;Ljava/lang/Boolean;Ljava/text/DateFormat;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected bridge synthetic _timestamp(Ljava/lang/Object;)J
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 16
    check-cast p1, Ljava/util/Calendar;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;->_timestamp(Ljava/util/Calendar;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected _timestamp(Ljava/util/Calendar;)J
    .locals 2
    .param p1, "value"    # Ljava/util/Calendar;

    .prologue
    .line 36
    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "x2"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    check-cast p1, Ljava/util/Calendar;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;->serialize(Ljava/util/Calendar;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V

    return-void
.end method

.method public serialize(Ljava/util/Calendar;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
    .locals 3
    .param p1, "value"    # Ljava/util/Calendar;
    .param p2, "jgen"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "provider"    # Lcom/fasterxml/jackson/databind/SerializerProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;->_asTimestamp(Lcom/fasterxml/jackson/databind/SerializerProvider;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;->_timestamp(Ljava/util/Calendar;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(J)V

    .line 53
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;->_customFormat:Ljava/text/DateFormat;

    if-eqz v0, :cond_1

    .line 46
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;->_customFormat:Ljava/text/DateFormat;

    monitor-enter v1

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;->_customFormat:Ljava/text/DateFormat;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 49
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 51
    :cond_1
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Lcom/fasterxml/jackson/databind/SerializerProvider;->defaultSerializeDateValue(Ljava/util/Date;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0
.end method

.method public withFormat(Ljava/lang/Boolean;Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;
    .locals 1
    .param p1, "timestamp"    # Ljava/lang/Boolean;
    .param p2, "customFormat"    # Ljava/text/DateFormat;

    .prologue
    .line 31
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;

    invoke-direct {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;-><init>(Ljava/lang/Boolean;Ljava/text/DateFormat;)V

    return-object v0
.end method

.method public bridge synthetic withFormat(Ljava/lang/Boolean;Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Boolean;
    .param p2, "x1"    # Ljava/text/DateFormat;

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;->withFormat(Ljava/lang/Boolean;Ljava/text/DateFormat;)Lcom/fasterxml/jackson/databind/ser/std/CalendarSerializer;

    move-result-object v0

    return-object v0
.end method
