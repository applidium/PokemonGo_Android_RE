.class public Lcom/fasterxml/jackson/databind/util/StdDateFormat;
.super Ljava/text/DateFormat;
.source "StdDateFormat.java"


# static fields
.field protected static final ALL_FORMATS:[Ljava/lang/String;

.field protected static final DATE_FORMAT_ISO8601:Ljava/text/DateFormat;

.field protected static final DATE_FORMAT_ISO8601_Z:Ljava/text/DateFormat;

.field protected static final DATE_FORMAT_PLAIN:Ljava/text/DateFormat;

.field protected static final DATE_FORMAT_RFC1123:Ljava/text/DateFormat;

.field protected static final DATE_FORMAT_STR_ISO8601:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

.field protected static final DATE_FORMAT_STR_ISO8601_Z:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

.field protected static final DATE_FORMAT_STR_PLAIN:Ljava/lang/String; = "yyyy-MM-dd"

.field protected static final DATE_FORMAT_STR_RFC1123:Ljava/lang/String; = "EEE, dd MMM yyyy HH:mm:ss zzz"

.field private static final DEFAULT_LOCALE:Ljava/util/Locale;

.field private static final DEFAULT_TIMEZONE:Ljava/util/TimeZone;

.field public static final instance:Lcom/fasterxml/jackson/databind/util/StdDateFormat;


# instance fields
.field protected transient _formatISO8601:Ljava/text/DateFormat;

.field protected transient _formatISO8601_z:Ljava/text/DateFormat;

.field protected transient _formatPlain:Ljava/text/DateFormat;

.field protected transient _formatRFC1123:Ljava/text/DateFormat;

.field protected final _locale:Ljava/util/Locale;

.field protected transient _timezone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "yyyy-MM-dd"

    aput-object v2, v0, v1

    sput-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->ALL_FORMATS:[Ljava/lang/String;

    .line 68
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    .line 71
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sput-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_LOCALE:Ljava/util/Locale;

    .line 89
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    sget-object v2, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_LOCALE:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_RFC1123:Ljava/text/DateFormat;

    .line 90
    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_RFC1123:Ljava/text/DateFormat;

    sget-object v1, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 91
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    sget-object v2, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_LOCALE:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_ISO8601:Ljava/text/DateFormat;

    .line 92
    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_ISO8601:Ljava/text/DateFormat;

    sget-object v1, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 93
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sget-object v2, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_LOCALE:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_ISO8601_Z:Ljava/text/DateFormat;

    .line 94
    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_ISO8601_Z:Ljava/text/DateFormat;

    sget-object v1, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 95
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_LOCALE:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_PLAIN:Ljava/text/DateFormat;

    .line 96
    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_PLAIN:Ljava/text/DateFormat;

    sget-object v1, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 102
    new-instance v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->instance:Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 124
    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_LOCALE:Ljava/util/Locale;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 1
    .param p1, "tz"    # Ljava/util/TimeZone;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 132
    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_LOCALE:Ljava/util/Locale;

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 0
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "loc"    # Ljava/util/Locale;

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    .line 137
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    .line 138
    return-void
.end method

.method private static final _cloneFormat(Ljava/text/DateFormat;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/DateFormat;
    .locals 1
    .param p0, "df"    # Ljava/text/DateFormat;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "tz"    # Ljava/util/TimeZone;
    .param p3, "loc"    # Ljava/util/Locale;

    .prologue
    .line 490
    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_LOCALE:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 491
    new-instance p0, Ljava/text/SimpleDateFormat;

    .end local p0    # "df":Ljava/text/DateFormat;
    invoke-direct {p0, p1, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 492
    .restart local p0    # "df":Ljava/text/DateFormat;
    if-nez p2, :cond_0

    sget-object p2, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    .end local p2    # "tz":Ljava/util/TimeZone;
    :cond_0
    invoke-virtual {p0, p2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 499
    :cond_1
    :goto_0
    return-object p0

    .line 494
    .restart local p2    # "tz":Ljava/util/TimeZone;
    :cond_2
    invoke-virtual {p0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "df":Ljava/text/DateFormat;
    check-cast p0, Ljava/text/DateFormat;

    .line 495
    .restart local p0    # "df":Ljava/text/DateFormat;
    if-eqz p2, :cond_1

    .line 496
    invoke-virtual {p0, p2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0
.end method

.method public static getBlueprintISO8601Format()Ljava/text/DateFormat;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 182
    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_ISO8601:Ljava/text/DateFormat;

    return-object v0
.end method

.method public static getBlueprintRFC1123Format()Ljava/text/DateFormat;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 213
    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_RFC1123:Ljava/text/DateFormat;

    return-object v0
.end method

.method public static getDefaultTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    return-object v0
.end method

.method public static getISO8601Format(Ljava/util/TimeZone;)Ljava/text/DateFormat;
    .locals 1
    .param p0, "tz"    # Ljava/util/TimeZone;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 190
    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_LOCALE:Ljava/util/Locale;

    invoke-static {p0, v0}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->getISO8601Format(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getISO8601Format(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/DateFormat;
    .locals 2
    .param p0, "tz"    # Ljava/util/TimeZone;
    .param p1, "loc"    # Ljava/util/Locale;

    .prologue
    .line 201
    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_ISO8601:Ljava/text/DateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-static {v0, v1, p0, p1}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_cloneFormat(Ljava/text/DateFormat;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getRFC1123Format(Ljava/util/TimeZone;)Ljava/text/DateFormat;
    .locals 1
    .param p0, "tz"    # Ljava/util/TimeZone;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 232
    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_LOCALE:Ljava/util/Locale;

    invoke-static {p0, v0}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->getRFC1123Format(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getRFC1123Format(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/DateFormat;
    .locals 2
    .param p0, "tz"    # Ljava/util/TimeZone;
    .param p1, "loc"    # Ljava/util/Locale;

    .prologue
    .line 224
    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_RFC1123:Ljava/text/DateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    invoke-static {v0, v1, p0, p1}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_cloneFormat(Ljava/text/DateFormat;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method private static final hasTimeZone(Ljava/lang/String;)Z
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x2d

    const/16 v4, 0x2b

    const/4 v2, 0x1

    .line 475
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 476
    .local v1, "len":I
    const/4 v3, 0x6

    if-lt v1, v3, :cond_2

    .line 477
    add-int/lit8 v3, v1, -0x6

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 478
    .local v0, "c":C
    if-eq v0, v4, :cond_0

    if-ne v0, v5, :cond_1

    .line 484
    .end local v0    # "c":C
    :cond_0
    :goto_0
    return v2

    .line 479
    .restart local v0    # "c":C
    :cond_1
    add-int/lit8 v3, v1, -0x5

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 480
    if-eq v0, v4, :cond_0

    if-eq v0, v5, :cond_0

    .line 481
    add-int/lit8 v3, v1, -0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 482
    if-eq v0, v4, :cond_0

    if-eq v0, v5, :cond_0

    .line 484
    .end local v0    # "c":C
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clone()Lcom/fasterxml/jackson/databind/util/StdDateFormat;
    .locals 3

    .prologue
    .line 170
    new-instance v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->clone()Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 4
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 320
    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_ISO8601:Ljava/text/DateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    invoke-static {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_cloneFormat(Ljava/text/DateFormat;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601:Ljava/text/DateFormat;

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601:Ljava/text/DateFormat;

    invoke-virtual {v0, p1, p2, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    return-object v0
.end method

.method protected looksLikeISO8601(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dateStr"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 354
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    .line 359
    const/4 v0, 0x1

    .line 361
    :cond_0
    return v0
.end method

.method public parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 12
    .param p1, "dateStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x22

    const/4 v10, 0x0

    .line 264
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 265
    new-instance v4, Ljava/text/ParsePosition;

    invoke-direct {v4, v10}, Ljava/text/ParsePosition;-><init>(I)V

    .line 266
    .local v4, "pos":Ljava/text/ParsePosition;
    invoke-virtual {p0, p1, v4}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v5

    .line 267
    .local v5, "result":Ljava/util/Date;
    if-eqz v5, :cond_0

    .line 268
    return-object v5

    .line 271
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .local v6, "sb":Ljava/lang/StringBuilder;
    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->ALL_FORMATS:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 273
    .local v1, "f":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 274
    const-string v7, "\", \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    :goto_1
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 276
    :cond_1
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 280
    .end local v1    # "f":Ljava/lang/String;
    :cond_2
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 281
    new-instance v7, Ljava/text/ParseException;

    const-string v8, "Can not parse date \"%s\": not compatible with any of standard forms (%s)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v9

    invoke-direct {v7, v8, v9}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v7
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 6
    .param p1, "dateStr"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    const/16 v4, 0x2d

    const/4 v3, 0x0

    .line 289
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->looksLikeISO8601(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->parseAsISO8601(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v2

    .line 312
    :goto_0
    return-object v2

    .line 295
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 296
    .local v1, "i":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3

    .line 297
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 298
    .local v0, "ch":C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_2

    const/16 v2, 0x39

    if-le v0, v2, :cond_1

    .line 300
    :cond_2
    if-gtz v1, :cond_3

    if-eq v0, v4, :cond_1

    .line 305
    .end local v0    # "ch":C
    :cond_3
    if-gez v1, :cond_5

    .line 307
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_4

    invoke-static {p1, v3}, Lcom/fasterxml/jackson/core/io/NumberInput;->inLongRange(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 308
    :cond_4
    new-instance v2, Ljava/util/Date;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    .line 312
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->parseAsRFC1123(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v2

    goto :goto_0
.end method

.method protected parseAsISO8601(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 12
    .param p1, "dateStr"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    const/16 v7, 0x5a

    const/16 v11, 0x54

    const/16 v10, 0x3a

    const/16 v9, 0xc

    const/16 v8, 0x30

    .line 374
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 375
    .local v2, "len":I
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 379
    .local v0, "c":C
    const/16 v6, 0xa

    if-gt v2, v6, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 380
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatPlain:Ljava/text/DateFormat;

    .line 381
    .local v1, "df":Ljava/text/DateFormat;
    if-nez v1, :cond_0

    .line 382
    sget-object v6, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_PLAIN:Ljava/text/DateFormat;

    const-string v7, "yyyy-MM-dd"

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    invoke-static {v6, v7, v8, v9}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_cloneFormat(Ljava/text/DateFormat;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    .end local v1    # "df":Ljava/text/DateFormat;
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatPlain:Ljava/text/DateFormat;

    .line 461
    .restart local v1    # "df":Ljava/text/DateFormat;
    :cond_0
    :goto_0
    invoke-virtual {v1, p1, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v6

    return-object v6

    .line 384
    .end local v1    # "df":Ljava/text/DateFormat;
    :cond_1
    if-ne v0, v7, :cond_3

    .line 385
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601_z:Ljava/text/DateFormat;

    .line 386
    .restart local v1    # "df":Ljava/text/DateFormat;
    if-nez v1, :cond_2

    .line 387
    sget-object v6, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_ISO8601_Z:Ljava/text/DateFormat;

    const-string v7, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    invoke-static {v6, v7, v8, v9}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_cloneFormat(Ljava/text/DateFormat;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    .end local v1    # "df":Ljava/text/DateFormat;
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601_z:Ljava/text/DateFormat;

    .line 390
    .restart local v1    # "df":Ljava/text/DateFormat;
    :cond_2
    add-int/lit8 v6, v2, -0x4

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v10, :cond_0

    .line 391
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 392
    .local v4, "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v6, v2, -0x1

    const-string v7, ".000"

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 394
    goto :goto_0

    .line 397
    .end local v1    # "df":Ljava/text/DateFormat;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->hasTimeZone(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 398
    add-int/lit8 v6, v2, -0x3

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 399
    if-ne v0, v10, :cond_6

    .line 401
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 402
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v6, v2, -0x3

    add-int/lit8 v7, v2, -0x2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 409
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 411
    invoke-virtual {p1, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    sub-int v6, v2, v6

    add-int/lit8 v5, v6, -0x6

    .line 412
    .local v5, "timeLen":I
    if-ge v5, v9, :cond_5

    .line 413
    add-int/lit8 v3, v2, -0x5

    .line 414
    .local v3, "offset":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 415
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    packed-switch v5, :pswitch_data_0

    .line 431
    :goto_2
    :pswitch_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 433
    .end local v3    # "offset":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601:Ljava/text/DateFormat;

    .line 434
    .restart local v1    # "df":Ljava/text/DateFormat;
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601:Ljava/text/DateFormat;

    if-nez v6, :cond_0

    .line 435
    sget-object v6, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_ISO8601:Ljava/text/DateFormat;

    const-string v7, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    invoke-static {v6, v7, v8, v9}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_cloneFormat(Ljava/text/DateFormat;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    .end local v1    # "df":Ljava/text/DateFormat;
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601:Ljava/text/DateFormat;

    .restart local v1    # "df":Ljava/text/DateFormat;
    goto :goto_0

    .line 404
    .end local v1    # "df":Ljava/text/DateFormat;
    .end local v5    # "timeLen":I
    :cond_6
    const/16 v6, 0x2b

    if-eq v0, v6, :cond_7

    const/16 v6, 0x2d

    if-ne v0, v6, :cond_4

    .line 406
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "00"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 417
    .restart local v3    # "offset":I
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local v5    # "timeLen":I
    :pswitch_1
    invoke-virtual {v4, v3, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 419
    :pswitch_2
    const-string v6, "00"

    invoke-virtual {v4, v3, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 421
    :pswitch_3
    const-string v6, "000"

    invoke-virtual {v4, v3, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 423
    :pswitch_4
    const-string v6, ".000"

    invoke-virtual {v4, v3, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 427
    :pswitch_5
    const-string v6, "00.000"

    invoke-virtual {v4, v3, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    :pswitch_6
    const-string v6, ":00.000"

    invoke-virtual {v4, v3, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 439
    .end local v3    # "offset":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "timeLen":I
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 441
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    sub-int v6, v2, v6

    add-int/lit8 v5, v6, -0x1

    .line 442
    .restart local v5    # "timeLen":I
    if-ge v5, v9, :cond_9

    .line 443
    packed-switch v5, :pswitch_data_1

    .line 449
    const-string v6, ".000"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    :cond_9
    :goto_3
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 454
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601_z:Ljava/text/DateFormat;

    .line 455
    .restart local v1    # "df":Ljava/text/DateFormat;
    if-nez v1, :cond_0

    .line 456
    sget-object v6, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_ISO8601_Z:Ljava/text/DateFormat;

    const-string v7, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    iget-object v9, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    invoke-static {v6, v7, v8, v9}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_cloneFormat(Ljava/text/DateFormat;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v1

    .end local v1    # "df":Ljava/text/DateFormat;
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601_z:Ljava/text/DateFormat;

    .restart local v1    # "df":Ljava/text/DateFormat;
    goto/16 :goto_0

    .line 444
    .end local v1    # "df":Ljava/text/DateFormat;
    :pswitch_7
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 445
    :pswitch_8
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 446
    :pswitch_9
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 415
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 443
    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method protected parseAsRFC1123(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 4
    .param p1, "dateStr"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .prologue
    .line 466
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatRFC1123:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 467
    sget-object v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DATE_FORMAT_RFC1123:Ljava/text/DateFormat;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    invoke-static {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_cloneFormat(Ljava/text/DateFormat;Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatRFC1123:Ljava/text/DateFormat;

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatRFC1123:Ljava/text/DateFormat;

    invoke-virtual {v0, p1, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 2
    .param p1, "tz"    # Ljava/util/TimeZone;

    .prologue
    const/4 v1, 0x0

    .line 252
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatRFC1123:Ljava/text/DateFormat;

    .line 254
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601:Ljava/text/DateFormat;

    .line 255
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatISO8601_z:Ljava/text/DateFormat;

    .line 256
    iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_formatPlain:Ljava/text/DateFormat;

    .line 257
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    .line 259
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DateFormat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 334
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    .line 335
    .local v1, "tz":Ljava/util/TimeZone;
    if-eqz v1, :cond_0

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (timezone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(locale: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    return-object v0
.end method

.method public withLocale(Ljava/util/Locale;)Lcom/fasterxml/jackson/databind/util/StdDateFormat;
    .locals 2
    .param p1, "loc"    # Ljava/util/Locale;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/util/StdDateFormat;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/util/StdDateFormat;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    invoke-direct {v0, v1, p1}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withTimeZone(Ljava/util/TimeZone;)Lcom/fasterxml/jackson/databind/util/StdDateFormat;
    .locals 2
    .param p1, "tz"    # Ljava/util/TimeZone;

    .prologue
    .line 149
    if-nez p1, :cond_0

    .line 150
    sget-object p1, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->DEFAULT_TIMEZONE:Ljava/util/TimeZone;

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_timezone:Ljava/util/TimeZone;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 155
    .end local p0    # "this":Lcom/fasterxml/jackson/databind/util/StdDateFormat;
    :cond_1
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/databind/util/StdDateFormat;
    :cond_2
    new-instance v0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/StdDateFormat;->_locale:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/databind/util/StdDateFormat;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    move-object p0, v0

    goto :goto_0
.end method
