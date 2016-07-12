.class public Lcom/fasterxml/jackson/databind/util/ISO8601Utils;
.super Ljava/lang/Object;
.source "ISO8601Utils.java"


# static fields
.field private static final GMT_ID:Ljava/lang/String; = "GMT"

.field private static final TIMEZONE_GMT:Ljava/util/TimeZone;

.field private static final TIMEZONE_Z:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->TIMEZONE_GMT:Ljava/util/TimeZone;

    .line 42
    sget-object v0, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->TIMEZONE_GMT:Ljava/util/TimeZone;

    sput-object v0, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->TIMEZONE_Z:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkOffset(Ljava/lang/String;IC)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "expected"    # C

    .prologue
    .line 291
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static format(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 73
    const/4 v0, 0x0

    sget-object v1, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->TIMEZONE_GMT:Ljava/util/TimeZone;

    invoke-static {p0, v0, v1}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/Date;Z)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "millis"    # Z

    .prologue
    .line 84
    sget-object v0, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->TIMEZONE_GMT:Ljava/util/TimeZone;

    invoke-static {p0, p1, v0}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static format(Ljava/util/Date;ZLjava/util/TimeZone;)Ljava/lang/String;
    .locals 12
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "millis"    # Z
    .param p2, "tz"    # Ljava/util/TimeZone;

    .prologue
    const v11, 0xea60

    const/16 v10, 0x3a

    const/16 v7, 0x2d

    .line 96
    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p2, v6}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 97
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 100
    const-string v6, "yyyy-MM-ddThh:mm:ss"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    .line 101
    .local v1, "capacity":I
    if-eqz p1, :cond_1

    const-string v6, ".sss"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    :goto_0
    add-int/2addr v1, v6

    .line 102
    invoke-virtual {p2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "Z"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    :goto_1
    add-int/2addr v1, v6

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 105
    .local v2, "formatted":Ljava/lang/StringBuilder;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const-string v8, "yyyy"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v2, v6, v8}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 106
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    const-string v8, "MM"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v2, v6, v8}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 108
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const-string v8, "dd"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v2, v6, v8}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 110
    const/16 v6, 0x54

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const-string v8, "hh"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v2, v6, v8}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 112
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const-string v8, "mm"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v2, v6, v8}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 114
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const-string v8, "ss"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v2, v6, v8}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 116
    if-eqz p1, :cond_0

    .line 117
    const/16 v6, 0x2e

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    const/16 v6, 0xe

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const-string v8, "sss"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v2, v6, v8}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 121
    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {p2, v8, v9}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    .line 122
    .local v5, "offset":I
    if-eqz v5, :cond_4

    .line 123
    div-int v6, v5, v11

    div-int/lit8 v6, v6, 0x3c

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 124
    .local v3, "hours":I
    div-int v6, v5, v11

    rem-int/lit8 v6, v6, 0x3c

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 125
    .local v4, "minutes":I
    if-gez v5, :cond_3

    move v6, v7

    :goto_2
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    const-string v6, "hh"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v2, v3, v6}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 127
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    const-string v6, "mm"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v2, v4, v6}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->padInt(Ljava/lang/StringBuilder;II)V

    .line 133
    .end local v3    # "hours":I
    .end local v4    # "minutes":I
    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 101
    .end local v2    # "formatted":Ljava/lang/StringBuilder;
    .end local v5    # "offset":I
    :cond_1
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 102
    :cond_2
    const-string v6, "+hh:mm"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    goto/16 :goto_1

    .line 125
    .restart local v2    # "formatted":Ljava/lang/StringBuilder;
    .restart local v3    # "hours":I
    .restart local v4    # "minutes":I
    .restart local v5    # "offset":I
    :cond_3
    const/16 v6, 0x2b

    goto :goto_2

    .line 130
    .end local v3    # "hours":I
    .end local v4    # "minutes":I
    :cond_4
    const/16 v6, 0x5a

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method private static padInt(Ljava/lang/StringBuilder;II)V
    .locals 3
    .param p0, "buffer"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # I
    .param p2, "length"    # I

    .prologue
    .line 337
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, "strValue":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v0, p2, v2

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 339
    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 338
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 341
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 29
    .param p0, "date"    # Ljava/lang/String;
    .param p1, "pos"    # Ljava/text/ParsePosition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 152
    const/4 v10, 0x0

    .line 154
    .local v10, "fail":Ljava/lang/Exception;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v18

    .line 157
    .local v18, "offset":I
    add-int/lit8 v19, v18, 0x4

    .end local v18    # "offset":I
    .local v19, "offset":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v25

    .line 158
    .local v25, "year":I
    const/16 v26, 0x2d

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v26

    if-eqz v26, :cond_0

    .line 159
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "offset":I
    .restart local v18    # "offset":I
    move/from16 v19, v18

    .line 163
    .end local v18    # "offset":I
    .restart local v19    # "offset":I
    :cond_0
    add-int/lit8 v18, v19, 0x2

    .end local v19    # "offset":I
    .restart local v18    # "offset":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v16

    .line 164
    .local v16, "month":I
    const/16 v26, 0x2d

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v26

    if-eqz v26, :cond_10

    .line 165
    add-int/lit8 v18, v18, 0x1

    move/from16 v19, v18

    .line 169
    .end local v18    # "offset":I
    .restart local v19    # "offset":I
    :goto_0
    add-int/lit8 v18, v19, 0x2

    .end local v19    # "offset":I
    .restart local v18    # "offset":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v7

    .line 171
    .local v7, "day":I
    const/4 v12, 0x0

    .line 172
    .local v12, "hour":I
    const/4 v15, 0x0

    .line 173
    .local v15, "minutes":I
    const/16 v20, 0x0

    .line 174
    .local v20, "seconds":I
    const/4 v14, 0x0

    .line 177
    .local v14, "milliseconds":I
    const/16 v26, 0x54

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v11

    .line 179
    .local v11, "hasT":Z
    if-nez v11, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v26

    move/from16 v0, v26

    move/from16 v1, v18

    if-gt v0, v1, :cond_1

    .line 180
    new-instance v5, Ljava/util/GregorianCalendar;

    add-int/lit8 v26, v16, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-direct {v5, v0, v1, v7}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 182
    .local v5, "calendar":Ljava/util/Calendar;
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 183
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v26

    .line 262
    :goto_1
    return-object v26

    .line 186
    .end local v5    # "calendar":Ljava/util/Calendar;
    :cond_1
    if-eqz v11, :cond_3

    .line 189
    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v19, v18, 0x2

    .end local v18    # "offset":I
    .restart local v19    # "offset":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v12

    .line 190
    const/16 v26, 0x3a

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 191
    add-int/lit8 v18, v19, 0x1

    .end local v19    # "offset":I
    .restart local v18    # "offset":I
    move/from16 v19, v18

    .line 194
    .end local v18    # "offset":I
    .restart local v19    # "offset":I
    :cond_2
    add-int/lit8 v18, v19, 0x2

    .end local v19    # "offset":I
    .restart local v18    # "offset":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v15

    .line 195
    const/16 v26, 0x3a

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v26

    if-eqz v26, :cond_f

    .line 196
    add-int/lit8 v18, v18, 0x1

    move/from16 v19, v18

    .line 199
    .end local v18    # "offset":I
    .restart local v19    # "offset":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v26

    move/from16 v0, v26

    move/from16 v1, v19

    if-le v0, v1, :cond_e

    .line 200
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 201
    .local v4, "c":C
    const/16 v26, 0x5a

    move/from16 v0, v26

    if-eq v4, v0, :cond_e

    const/16 v26, 0x2b

    move/from16 v0, v26

    if-eq v4, v0, :cond_e

    const/16 v26, 0x2d

    move/from16 v0, v26

    if-eq v4, v0, :cond_e

    .line 202
    add-int/lit8 v18, v19, 0x2

    .end local v19    # "offset":I
    .restart local v18    # "offset":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v20

    .line 204
    const/16 v26, 0x2e

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->checkOffset(Ljava/lang/String;IC)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 205
    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v19, v18, 0x3

    .end local v18    # "offset":I
    .restart local v19    # "offset":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->parseInt(Ljava/lang/String;II)I

    move-result v14

    move/from16 v18, v19

    .line 212
    .end local v4    # "c":C
    .end local v19    # "offset":I
    .restart local v18    # "offset":I
    :cond_3
    :goto_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v26

    move/from16 v0, v26

    move/from16 v1, v18

    if-gt v0, v1, :cond_6

    .line 213
    new-instance v26, Ljava/lang/IllegalArgumentException;

    const-string v27, "No time zone indicator"

    invoke-direct/range {v26 .. v27}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v26
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 265
    .end local v7    # "day":I
    .end local v11    # "hasT":Z
    .end local v12    # "hour":I
    .end local v14    # "milliseconds":I
    .end local v15    # "minutes":I
    .end local v16    # "month":I
    .end local v18    # "offset":I
    .end local v20    # "seconds":I
    .end local v25    # "year":I
    :catch_0
    move-exception v8

    .line 266
    .local v8, "e":Ljava/lang/IndexOutOfBoundsException;
    move-object v10, v8

    .line 272
    .end local v8    # "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_4
    if-nez p0, :cond_d

    const/4 v13, 0x0

    .line 273
    .local v13, "input":Ljava/lang/String;
    :goto_5
    invoke-virtual {v10}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    .line 274
    .local v17, "msg":Ljava/lang/String;
    if-eqz v17, :cond_4

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_5

    .line 275
    :cond_4
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "("

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ")"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 277
    :cond_5
    new-instance v9, Ljava/text/ParseException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Failed to parse date ["

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "]: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v27

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v9, v0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 278
    .local v9, "ex":Ljava/text/ParseException;
    invoke-virtual {v9, v10}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 279
    throw v9

    .line 216
    .end local v9    # "ex":Ljava/text/ParseException;
    .end local v13    # "input":Ljava/lang/String;
    .end local v17    # "msg":Ljava/lang/String;
    .restart local v7    # "day":I
    .restart local v11    # "hasT":Z
    .restart local v12    # "hour":I
    .restart local v14    # "milliseconds":I
    .restart local v15    # "minutes":I
    .restart local v16    # "month":I
    .restart local v18    # "offset":I
    .restart local v20    # "seconds":I
    .restart local v25    # "year":I
    :cond_6
    const/16 v21, 0x0

    .line 217
    .local v21, "timezone":Ljava/util/TimeZone;
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v23

    .line 219
    .local v23, "timezoneIndicator":C
    const/16 v26, 0x5a

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_8

    .line 220
    sget-object v21, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->TIMEZONE_Z:Ljava/util/TimeZone;

    .line 221
    add-int/lit8 v18, v18, 0x1

    .line 251
    :cond_7
    :goto_6
    new-instance v5, Ljava/util/GregorianCalendar;

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 252
    .restart local v5    # "calendar":Ljava/util/Calendar;
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setLenient(Z)V

    .line 253
    const/16 v26, 0x1

    move/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 254
    const/16 v26, 0x2

    add-int/lit8 v27, v16, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 255
    const/16 v26, 0x5

    move/from16 v0, v26

    invoke-virtual {v5, v0, v7}, Ljava/util/Calendar;->set(II)V

    .line 256
    const/16 v26, 0xb

    move/from16 v0, v26

    invoke-virtual {v5, v0, v12}, Ljava/util/Calendar;->set(II)V

    .line 257
    const/16 v26, 0xc

    move/from16 v0, v26

    invoke-virtual {v5, v0, v15}, Ljava/util/Calendar;->set(II)V

    .line 258
    const/16 v26, 0xd

    move/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 259
    const/16 v26, 0xe

    move/from16 v0, v26

    invoke-virtual {v5, v0, v14}, Ljava/util/Calendar;->set(II)V

    .line 261
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 262
    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v26

    goto/16 :goto_1

    .line 222
    .end local v5    # "calendar":Ljava/util/Calendar;
    :cond_8
    const/16 v26, 0x2b

    move/from16 v0, v23

    move/from16 v1, v26

    if-eq v0, v1, :cond_9

    const/16 v26, 0x2d

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_c

    .line 223
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    .line 224
    .local v24, "timezoneOffset":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v26

    add-int v18, v18, v26

    .line 226
    const-string v26, "+0000"

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_a

    const-string v26, "+00:00"

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_b

    .line 227
    :cond_a
    sget-object v21, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->TIMEZONE_Z:Ljava/util/TimeZone;

    goto/16 :goto_6

    .line 231
    :cond_b
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "GMT"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 232
    .local v22, "timezoneId":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v21

    .line 233
    invoke-virtual/range {v21 .. v21}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, "act":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_7

    .line 240
    const-string v26, ":"

    const-string v27, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 241
    .local v6, "cleaned":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_7

    .line 242
    new-instance v26, Ljava/lang/IndexOutOfBoundsException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Mismatching time zone indicator: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " given, resolves to "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v21 .. v21}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 267
    .end local v3    # "act":Ljava/lang/String;
    .end local v6    # "cleaned":Ljava/lang/String;
    .end local v7    # "day":I
    .end local v11    # "hasT":Z
    .end local v12    # "hour":I
    .end local v14    # "milliseconds":I
    .end local v15    # "minutes":I
    .end local v16    # "month":I
    .end local v18    # "offset":I
    .end local v20    # "seconds":I
    .end local v21    # "timezone":Ljava/util/TimeZone;
    .end local v22    # "timezoneId":Ljava/lang/String;
    .end local v23    # "timezoneIndicator":C
    .end local v24    # "timezoneOffset":Ljava/lang/String;
    .end local v25    # "year":I
    :catch_1
    move-exception v8

    .line 268
    .local v8, "e":Ljava/lang/NumberFormatException;
    move-object v10, v8

    .line 271
    goto/16 :goto_4

    .line 248
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    .restart local v7    # "day":I
    .restart local v11    # "hasT":Z
    .restart local v12    # "hour":I
    .restart local v14    # "milliseconds":I
    .restart local v15    # "minutes":I
    .restart local v16    # "month":I
    .restart local v18    # "offset":I
    .restart local v20    # "seconds":I
    .restart local v21    # "timezone":Ljava/util/TimeZone;
    .restart local v23    # "timezoneIndicator":C
    .restart local v25    # "year":I
    :cond_c
    new-instance v26, Ljava/lang/IndexOutOfBoundsException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Invalid time zone indicator \'"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\'"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v26
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 269
    .end local v7    # "day":I
    .end local v11    # "hasT":Z
    .end local v12    # "hour":I
    .end local v14    # "milliseconds":I
    .end local v15    # "minutes":I
    .end local v16    # "month":I
    .end local v18    # "offset":I
    .end local v20    # "seconds":I
    .end local v21    # "timezone":Ljava/util/TimeZone;
    .end local v23    # "timezoneIndicator":C
    .end local v25    # "year":I
    :catch_2
    move-exception v8

    .line 270
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    move-object v10, v8

    goto/16 :goto_4

    .line 272
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :cond_d
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v27, 0x22

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "\'"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .restart local v7    # "day":I
    .restart local v11    # "hasT":Z
    .restart local v12    # "hour":I
    .restart local v14    # "milliseconds":I
    .restart local v15    # "minutes":I
    .restart local v16    # "month":I
    .restart local v19    # "offset":I
    .restart local v20    # "seconds":I
    .restart local v25    # "year":I
    :cond_e
    move/from16 v18, v19

    .end local v19    # "offset":I
    .restart local v18    # "offset":I
    goto/16 :goto_3

    :cond_f
    move/from16 v19, v18

    .end local v18    # "offset":I
    .restart local v19    # "offset":I
    goto/16 :goto_2

    .end local v7    # "day":I
    .end local v11    # "hasT":Z
    .end local v12    # "hour":I
    .end local v14    # "milliseconds":I
    .end local v15    # "minutes":I
    .end local v19    # "offset":I
    .end local v20    # "seconds":I
    .restart local v18    # "offset":I
    :cond_10
    move/from16 v19, v18

    .end local v18    # "offset":I
    .restart local v19    # "offset":I
    goto/16 :goto_0
.end method

.method private static parseInt(Ljava/lang/String;II)I
    .locals 7
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    .line 304
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-gt p2, v4, :cond_0

    if-le p1, p2, :cond_1

    .line 305
    :cond_0
    new-instance v4, Ljava/lang/NumberFormatException;

    invoke-direct {v4, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 308
    :cond_1
    move v1, p1

    .line 309
    .local v1, "i":I
    const/4 v3, 0x0

    .line 311
    .local v3, "result":I
    if-ge v1, p2, :cond_5

    .line 312
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 313
    .local v0, "digit":I
    if-gez v0, :cond_2

    .line 314
    new-instance v4, Ljava/lang/NumberFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 316
    :cond_2
    neg-int v3, v0

    .line 318
    .end local v0    # "digit":I
    :goto_0
    if-ge v2, p2, :cond_4

    .line 319
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 320
    .restart local v0    # "digit":I
    if-gez v0, :cond_3

    .line 321
    new-instance v4, Ljava/lang/NumberFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 323
    :cond_3
    mul-int/lit8 v3, v3, 0xa

    .line 324
    sub-int/2addr v3, v0

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 326
    .end local v0    # "digit":I
    :cond_4
    neg-int v4, v3

    return v4

    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_5
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0
.end method

.method public static timeZoneGMT()Ljava/util/TimeZone;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 57
    sget-object v0, Lcom/fasterxml/jackson/databind/util/ISO8601Utils;->TIMEZONE_GMT:Ljava/util/TimeZone;

    return-object v0
.end method
