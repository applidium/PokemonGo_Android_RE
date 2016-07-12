.class public final Lcom/fasterxml/jackson/core/io/NumberInput;
.super Ljava/lang/Object;
.source "NumberInput.java"


# static fields
.field static final L_BILLION:J = 0x3b9aca00L

.field static final MAX_LONG_STR:Ljava/lang/String;

.field static final MIN_LONG_STR_NO_SIGN:Ljava/lang/String;

.field public static final NASTY_SMALL_DOUBLE:Ljava/lang/String; = "2.2250738585072012e-308"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/NumberInput;->MIN_LONG_STR_NO_SIGN:Ljava/lang/String;

    .line 19
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/NumberInput;->MAX_LONG_STR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _badBD(Ljava/lang/String;)Ljava/lang/NumberFormatException;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 305
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" can not be represented as BigDecimal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static inLongRange(Ljava/lang/String;Z)Z
    .locals 9
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "negative"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 171
    if-eqz p1, :cond_1

    sget-object v1, Lcom/fasterxml/jackson/core/io/NumberInput;->MIN_LONG_STR_NO_SIGN:Ljava/lang/String;

    .line 172
    .local v1, "cmp":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 173
    .local v2, "cmpLen":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 174
    .local v0, "alen":I
    if-ge v0, v2, :cond_2

    .line 184
    :cond_0
    :goto_1
    return v5

    .line 171
    .end local v0    # "alen":I
    .end local v1    # "cmp":Ljava/lang/String;
    .end local v2    # "cmpLen":I
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/io/NumberInput;->MAX_LONG_STR:Ljava/lang/String;

    goto :goto_0

    .line 175
    .restart local v0    # "alen":I
    .restart local v1    # "cmp":Ljava/lang/String;
    .restart local v2    # "cmpLen":I
    :cond_2
    if-le v0, v2, :cond_3

    move v5, v6

    goto :goto_1

    .line 178
    :cond_3
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v2, :cond_0

    .line 179
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    sub-int v3, v7, v8

    .line 180
    .local v3, "diff":I
    if-eqz v3, :cond_4

    .line 181
    if-ltz v3, :cond_0

    move v5, v6

    goto :goto_1

    .line 178
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public static inLongRange([CIIZ)Z
    .locals 8
    .param p0, "ch"    # [C
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "negative"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 148
    if-eqz p3, :cond_1

    sget-object v1, Lcom/fasterxml/jackson/core/io/NumberInput;->MIN_LONG_STR_NO_SIGN:Ljava/lang/String;

    .line 149
    .local v1, "cmpStr":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 150
    .local v0, "cmpLen":I
    if-ge p2, v0, :cond_2

    .line 159
    :cond_0
    :goto_1
    return v4

    .line 148
    .end local v0    # "cmpLen":I
    .end local v1    # "cmpStr":Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/fasterxml/jackson/core/io/NumberInput;->MAX_LONG_STR:Ljava/lang/String;

    goto :goto_0

    .line 151
    .restart local v0    # "cmpLen":I
    .restart local v1    # "cmpStr":Ljava/lang/String;
    :cond_2
    if-le p2, v0, :cond_3

    move v4, v5

    goto :goto_1

    .line 153
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_0

    .line 154
    add-int v6, p1, v3

    aget-char v6, p0, v6

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    sub-int v2, v6, v7

    .line 155
    .local v2, "diff":I
    if-eqz v2, :cond_4

    .line 156
    if-ltz v2, :cond_0

    move v4, v5

    goto :goto_1

    .line 153
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public static parseAsDouble(Ljava/lang/String;D)D
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "def"    # D

    .prologue
    .line 265
    if-nez p0, :cond_1

    .line 274
    .end local p1    # "def":D
    :cond_0
    :goto_0
    return-wide p1

    .line 266
    .restart local p1    # "def":D
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 267
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 268
    .local v0, "len":I
    if-eqz v0, :cond_0

    .line 272
    :try_start_0
    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    goto :goto_0

    .line 273
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static parseAsInt(Ljava/lang/String;I)I
    .locals 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "def"    # I

    .prologue
    .line 189
    if-nez p0, :cond_1

    .line 222
    .end local p1    # "def":I
    :cond_0
    :goto_0
    return p1

    .line 192
    .restart local p1    # "def":I
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 193
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 194
    .local v3, "len":I
    if-eqz v3, :cond_0

    .line 198
    const/4 v2, 0x0

    .line 199
    .local v2, "i":I
    if-ge v2, v3, :cond_2

    .line 200
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 201
    .local v0, "c":C
    const/16 v4, 0x2b

    if-ne v0, v4, :cond_4

    .line 202
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 203
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 208
    .end local v0    # "c":C
    :cond_2
    :goto_1
    if-ge v2, v3, :cond_6

    .line 209
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 211
    .restart local v0    # "c":C
    const/16 v4, 0x39

    if-gt v0, v4, :cond_3

    const/16 v4, 0x30

    if-ge v0, v4, :cond_5

    .line 213
    :cond_3
    :try_start_0
    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    double-to-int p1, v4

    goto :goto_0

    .line 204
    :cond_4
    const/16 v4, 0x2d

    if-ne v0, v4, :cond_2

    .line 205
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 214
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 208
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 220
    .end local v0    # "c":C
    :cond_6
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result p1

    goto :goto_0

    .line 221
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public static parseAsLong(Ljava/lang/String;J)J
    .locals 7
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "def"    # J

    .prologue
    .line 227
    if-nez p0, :cond_1

    .line 260
    .end local p1    # "def":J
    :cond_0
    :goto_0
    return-wide p1

    .line 230
    .restart local p1    # "def":J
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 231
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 232
    .local v3, "len":I
    if-eqz v3, :cond_0

    .line 236
    const/4 v2, 0x0

    .line 237
    .local v2, "i":I
    if-ge v2, v3, :cond_2

    .line 238
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 239
    .local v0, "c":C
    const/16 v4, 0x2b

    if-ne v0, v4, :cond_4

    .line 240
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 241
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 246
    .end local v0    # "c":C
    :cond_2
    :goto_1
    if-ge v2, v3, :cond_6

    .line 247
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 249
    .restart local v0    # "c":C
    const/16 v4, 0x39

    if-gt v0, v4, :cond_3

    const/16 v4, 0x30

    if-ge v0, v4, :cond_5

    .line 251
    :cond_3
    :try_start_0
    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    double-to-long p1, v4

    goto :goto_0

    .line 242
    :cond_4
    const/16 v4, 0x2d

    if-ne v0, v4, :cond_2

    .line 243
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 252
    :catch_0
    move-exception v1

    .line 253
    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 246
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 258
    .end local v0    # "c":C
    :cond_6
    :try_start_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide p1

    goto :goto_0

    .line 259
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public static parseBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 289
    :try_start_0
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/NumberInput;->_badBD(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v1

    throw v1
.end method

.method public static parseBigDecimal([C)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "b"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 295
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseBigDecimal([CII)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public static parseBigDecimal([CII)Ljava/math/BigDecimal;
    .locals 2
    .param p0, "b"    # [C
    .param p1, "off"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 299
    :try_start_0
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p0, p1, p2}, Ljava/math/BigDecimal;-><init>([CII)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, p1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v1}, Lcom/fasterxml/jackson/core/io/NumberInput;->_badBD(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v1

    throw v1
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 282
    const-string v0, "2.2250738585072012e-308"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    const-wide/16 v0, 0x1

    .line 285
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0
.end method

.method public static parseInt(Ljava/lang/String;)I
    .locals 10
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const/16 v9, 0x39

    const/16 v8, 0x30

    .line 68
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 69
    .local v0, "c":C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 70
    .local v1, "len":I
    const/16 v7, 0x2d

    if-ne v0, v7, :cond_0

    move v2, v6

    .line 71
    .local v2, "neg":Z
    :cond_0
    const/4 v4, 0x1

    .line 74
    .local v4, "offset":I
    if-eqz v2, :cond_5

    .line 75
    if-eq v1, v6, :cond_1

    const/16 v6, 0xa

    if-le v1, v6, :cond_3

    .line 76
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 112
    :cond_2
    :goto_0
    return v3

    .line 78
    :cond_3
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .local v5, "offset":I
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 84
    :goto_1
    if-gt v0, v9, :cond_4

    if-ge v0, v8, :cond_6

    .line 85
    :cond_4
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v4, v5

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0

    .line 80
    :cond_5
    const/16 v6, 0x9

    if-le v1, v6, :cond_10

    .line 81
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 87
    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    :cond_6
    add-int/lit8 v3, v0, -0x30

    .line 88
    .local v3, "num":I
    if-ge v5, v1, :cond_e

    .line 89
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 90
    if-gt v0, v9, :cond_7

    if-ge v0, v8, :cond_8

    .line 91
    :cond_7
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 93
    :cond_8
    mul-int/lit8 v6, v3, 0xa

    add-int/lit8 v7, v0, -0x30

    add-int v3, v6, v7

    .line 94
    if-ge v4, v1, :cond_f

    .line 95
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 96
    if-gt v0, v9, :cond_9

    if-ge v0, v8, :cond_a

    .line 97
    :cond_9
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .end local v3    # "num":I
    move v4, v5

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0

    .line 99
    .end local v4    # "offset":I
    .restart local v3    # "num":I
    .restart local v5    # "offset":I
    :cond_a
    mul-int/lit8 v6, v3, 0xa

    add-int/lit8 v7, v0, -0x30

    add-int v3, v6, v7

    .line 101
    if-ge v5, v1, :cond_e

    :cond_b
    move v4, v5

    .line 103
    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 104
    if-gt v0, v9, :cond_c

    if-ge v0, v8, :cond_d

    .line 105
    :cond_c
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .end local v3    # "num":I
    move v4, v5

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_0

    .line 107
    .end local v4    # "offset":I
    .restart local v3    # "num":I
    .restart local v5    # "offset":I
    :cond_d
    mul-int/lit8 v6, v3, 0xa

    add-int/lit8 v7, v0, -0x30

    add-int v3, v6, v7

    .line 108
    if-lt v5, v1, :cond_b

    :cond_e
    move v4, v5

    .line 112
    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    :cond_f
    if-eqz v2, :cond_2

    neg-int v3, v3

    goto :goto_0

    .end local v3    # "num":I
    :cond_10
    move v5, v4

    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    goto :goto_1
.end method

.method public static parseInt([CII)I
    .locals 5
    .param p0, "ch"    # [C
    .param p1, "off"    # I
    .param p2, "len"    # I

    .prologue
    const/4 v4, 0x4

    .line 30
    aget-char v2, p0, p1

    add-int/lit8 v0, v2, -0x30

    .line 32
    .local v0, "num":I
    if-le p2, v4, :cond_0

    .line 33
    mul-int/lit8 v2, v0, 0xa

    add-int/lit8 p1, p1, 0x1

    aget-char v3, p0, p1

    add-int/lit8 v3, v3, -0x30

    add-int v0, v2, v3

    .line 34
    mul-int/lit8 v2, v0, 0xa

    add-int/lit8 p1, p1, 0x1

    aget-char v3, p0, p1

    add-int/lit8 v3, v3, -0x30

    add-int v0, v2, v3

    .line 35
    mul-int/lit8 v2, v0, 0xa

    add-int/lit8 p1, p1, 0x1

    aget-char v3, p0, p1

    add-int/lit8 v3, v3, -0x30

    add-int v0, v2, v3

    .line 36
    mul-int/lit8 v2, v0, 0xa

    add-int/lit8 p1, p1, 0x1

    aget-char v3, p0, p1

    add-int/lit8 v3, v3, -0x30

    add-int v0, v2, v3

    .line 37
    add-int/lit8 p2, p2, -0x4

    .line 38
    if-le p2, v4, :cond_0

    .line 39
    mul-int/lit8 v2, v0, 0xa

    add-int/lit8 p1, p1, 0x1

    aget-char v3, p0, p1

    add-int/lit8 v3, v3, -0x30

    add-int v0, v2, v3

    .line 40
    mul-int/lit8 v2, v0, 0xa

    add-int/lit8 p1, p1, 0x1

    aget-char v3, p0, p1

    add-int/lit8 v3, v3, -0x30

    add-int v0, v2, v3

    .line 41
    mul-int/lit8 v2, v0, 0xa

    add-int/lit8 p1, p1, 0x1

    aget-char v3, p0, p1

    add-int/lit8 v3, v3, -0x30

    add-int v0, v2, v3

    .line 42
    mul-int/lit8 v2, v0, 0xa

    add-int/lit8 p1, p1, 0x1

    aget-char v3, p0, p1

    add-int/lit8 v3, v3, -0x30

    add-int v0, v2, v3

    move v1, v0

    .line 55
    .end local v0    # "num":I
    .local v1, "num":I
    :goto_0
    return v1

    .line 46
    .end local v1    # "num":I
    .restart local v0    # "num":I
    :cond_0
    const/4 v2, 0x1

    if-le p2, v2, :cond_1

    .line 47
    mul-int/lit8 v2, v0, 0xa

    add-int/lit8 p1, p1, 0x1

    aget-char v3, p0, p1

    add-int/lit8 v3, v3, -0x30

    add-int v0, v2, v3

    .line 48
    const/4 v2, 0x2

    if-le p2, v2, :cond_1

    .line 49
    mul-int/lit8 v2, v0, 0xa

    add-int/lit8 p1, p1, 0x1

    aget-char v3, p0, p1

    add-int/lit8 v3, v3, -0x30

    add-int v0, v2, v3

    .line 50
    const/4 v2, 0x3

    if-le p2, v2, :cond_1

    .line 51
    mul-int/lit8 v2, v0, 0xa

    add-int/lit8 p1, p1, 0x1

    aget-char v3, p0, p1

    add-int/lit8 v3, v3, -0x30

    add-int v0, v2, v3

    :cond_1
    move v1, v0

    .line 55
    .end local v0    # "num":I
    .restart local v1    # "num":I
    goto :goto_0
.end method

.method public static parseLong(Ljava/lang/String;)J
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 129
    .local v0, "length":I
    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    .line 130
    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    .line 133
    :goto_0
    return-wide v2

    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public static parseLong([CII)J
    .locals 8
    .param p0, "ch"    # [C
    .param p1, "off"    # I
    .param p2, "len"    # I

    .prologue
    .line 118
    add-int/lit8 v0, p2, -0x9

    .line 119
    .local v0, "len1":I
    invoke-static {p0, p1, v0}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseInt([CII)I

    move-result v1

    int-to-long v4, v1

    const-wide/32 v6, 0x3b9aca00

    mul-long v2, v4, v6

    .line 120
    .local v2, "val":J
    add-int v1, p1, v0

    const/16 v4, 0x9

    invoke-static {p0, v1, v4}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseInt([CII)I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v4, v2

    return-wide v4
.end method
