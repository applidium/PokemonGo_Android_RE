.class public final Lcom/google/gson/internal/LazilyParsedNumber;
.super Ljava/lang/Number;
.source "LazilyParsedNumber.java"


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    .line 31
    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public doubleValue()D
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 4

    .prologue
    .line 36
    :try_start_0
    iget-object v2, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 41
    :goto_0
    return v2

    .line 37
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_1
    iget-object v2, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    long-to-int v2, v2

    goto :goto_0

    .line 40
    :catch_1
    move-exception v1

    .line 41
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/math/BigDecimal;

    iget-object v3, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/math/BigDecimal;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method public longValue()J
    .locals 4

    .prologue
    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 51
    :goto_0
    return-wide v2

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/gson/internal/LazilyParsedNumber;->value:Ljava/lang/String;

    return-object v0
.end method
