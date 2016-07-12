.class public Lcom/fasterxml/jackson/databind/util/ISO8601DateFormat;
.super Ljava/text/DateFormat;
.source "ISO8601DateFormat.java"


# static fields
.field private static CALENDAR:Ljava/util/Calendar; = null

.field private static NUMBER_FORMAT:Ljava/text/NumberFormat; = null

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/util/ISO8601DateFormat;->CALENDAR:Ljava/util/Calendar;

    .line 24
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/util/ISO8601DateFormat;->NUMBER_FORMAT:Ljava/text/NumberFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 27
    sget-object v0, Lcom/fasterxml/jackson/databind/util/ISO8601DateFormat;->NUMBER_FORMAT:Ljava/text/NumberFormat;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ISO8601DateFormat;->numberFormat:Ljava/text/NumberFormat;

    .line 28
    sget-object v0, Lcom/fasterxml/jackson/databind/util/ISO8601DateFormat;->CALENDAR:Ljava/util/Calendar;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ISO8601DateFormat;->calendar:Ljava/util/Calendar;

    .line 29
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 61
    return-object p0
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    .prologue
    .line 33
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    return-object p2
.end method

.method public parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 41
    :try_start_0
    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 44
    :goto_0
    return-object v1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/text/ParseException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
