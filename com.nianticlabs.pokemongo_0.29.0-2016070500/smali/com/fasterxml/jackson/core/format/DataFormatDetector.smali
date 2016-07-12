.class public Lcom/fasterxml/jackson/core/format/DataFormatDetector;
.super Ljava/lang/Object;
.source "DataFormatDetector.java"


# static fields
.field public static final DEFAULT_MAX_INPUT_LOOKAHEAD:I = 0x40


# instance fields
.field protected final _detectors:[Lcom/fasterxml/jackson/core/JsonFactory;

.field protected final _maxInputLookahead:I

.field protected final _minimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

.field protected final _optimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/fasterxml/jackson/core/JsonFactory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "detectors":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/fasterxml/jackson/core/JsonFactory;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/format/DataFormatDetector;-><init>([Lcom/fasterxml/jackson/core/JsonFactory;)V

    .line 64
    return-void
.end method

.method public varargs constructor <init>([Lcom/fasterxml/jackson/core/JsonFactory;)V
    .locals 3
    .param p1, "detectors"    # [Lcom/fasterxml/jackson/core/JsonFactory;

    .prologue
    .line 58
    sget-object v0, Lcom/fasterxml/jackson/core/format/MatchStrength;->SOLID_MATCH:Lcom/fasterxml/jackson/core/format/MatchStrength;

    sget-object v1, Lcom/fasterxml/jackson/core/format/MatchStrength;->WEAK_MATCH:Lcom/fasterxml/jackson/core/format/MatchStrength;

    const/16 v2, 0x40

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/fasterxml/jackson/core/format/DataFormatDetector;-><init>([Lcom/fasterxml/jackson/core/JsonFactory;Lcom/fasterxml/jackson/core/format/MatchStrength;Lcom/fasterxml/jackson/core/format/MatchStrength;I)V

    .line 60
    return-void
.end method

.method private constructor <init>([Lcom/fasterxml/jackson/core/JsonFactory;Lcom/fasterxml/jackson/core/format/MatchStrength;Lcom/fasterxml/jackson/core/format/MatchStrength;I)V
    .locals 0
    .param p1, "detectors"    # [Lcom/fasterxml/jackson/core/JsonFactory;
    .param p2, "optMatch"    # Lcom/fasterxml/jackson/core/format/MatchStrength;
    .param p3, "minMatch"    # Lcom/fasterxml/jackson/core/format/MatchStrength;
    .param p4, "maxInputLookahead"    # I

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_detectors:[Lcom/fasterxml/jackson/core/JsonFactory;

    .line 103
    iput-object p2, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_optimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    .line 104
    iput-object p3, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_minimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    .line 105
    iput p4, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_maxInputLookahead:I

    .line 106
    return-void
.end method

.method private _findFormat(Lcom/fasterxml/jackson/core/format/InputAccessor$Std;)Lcom/fasterxml/jackson/core/format/DataFormatMatcher;
    .locals 9
    .param p1, "acc"    # Lcom/fasterxml/jackson/core/format/InputAccessor$Std;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    const/4 v1, 0x0

    .line 179
    .local v1, "bestMatch":Lcom/fasterxml/jackson/core/JsonFactory;
    const/4 v2, 0x0

    .line 180
    .local v2, "bestMatchStrength":Lcom/fasterxml/jackson/core/format/MatchStrength;
    iget-object v0, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_detectors:[Lcom/fasterxml/jackson/core/JsonFactory;

    .local v0, "arr$":[Lcom/fasterxml/jackson/core/JsonFactory;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v3, v0, v4

    .line 181
    .local v3, "f":Lcom/fasterxml/jackson/core/JsonFactory;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/format/InputAccessor$Std;->reset()V

    .line 182
    invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->hasFormat(Lcom/fasterxml/jackson/core/format/InputAccessor;)Lcom/fasterxml/jackson/core/format/MatchStrength;

    move-result-object v6

    .line 184
    .local v6, "strength":Lcom/fasterxml/jackson/core/format/MatchStrength;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/format/MatchStrength;->ordinal()I

    move-result v7

    iget-object v8, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_minimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    invoke-virtual {v8}, Lcom/fasterxml/jackson/core/format/MatchStrength;->ordinal()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 180
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 188
    :cond_1
    if-eqz v1, :cond_2

    .line 189
    invoke-virtual {v2}, Lcom/fasterxml/jackson/core/format/MatchStrength;->ordinal()I

    move-result v7

    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/format/MatchStrength;->ordinal()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 194
    :cond_2
    move-object v1, v3

    .line 195
    move-object v2, v6

    .line 196
    invoke-virtual {v6}, Lcom/fasterxml/jackson/core/format/MatchStrength;->ordinal()I

    move-result v7

    iget-object v8, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_optimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    invoke-virtual {v8}, Lcom/fasterxml/jackson/core/format/MatchStrength;->ordinal()I

    move-result v8

    if-lt v7, v8, :cond_0

    .line 200
    .end local v3    # "f":Lcom/fasterxml/jackson/core/JsonFactory;
    .end local v6    # "strength":Lcom/fasterxml/jackson/core/format/MatchStrength;
    :cond_3
    invoke-virtual {p1, v1, v2}, Lcom/fasterxml/jackson/core/format/InputAccessor$Std;->createMatcher(Lcom/fasterxml/jackson/core/JsonFactory;Lcom/fasterxml/jackson/core/format/MatchStrength;)Lcom/fasterxml/jackson/core/format/DataFormatMatcher;

    move-result-object v7

    return-object v7
.end method


# virtual methods
.method public findFormat(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/format/DataFormatMatcher;
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    new-instance v0, Lcom/fasterxml/jackson/core/format/InputAccessor$Std;

    iget v1, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_maxInputLookahead:I

    new-array v1, v1, [B

    invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/format/InputAccessor$Std;-><init>(Ljava/io/InputStream;[B)V

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_findFormat(Lcom/fasterxml/jackson/core/format/InputAccessor$Std;)Lcom/fasterxml/jackson/core/format/DataFormatMatcher;

    move-result-object v0

    return-object v0
.end method

.method public findFormat([B)Lcom/fasterxml/jackson/core/format/DataFormatMatcher;
    .locals 1
    .param p1, "fullInputData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    new-instance v0, Lcom/fasterxml/jackson/core/format/InputAccessor$Std;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/core/format/InputAccessor$Std;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_findFormat(Lcom/fasterxml/jackson/core/format/InputAccessor$Std;)Lcom/fasterxml/jackson/core/format/DataFormatMatcher;

    move-result-object v0

    return-object v0
.end method

.method public findFormat([BII)Lcom/fasterxml/jackson/core/format/DataFormatMatcher;
    .locals 1
    .param p1, "fullInputData"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Lcom/fasterxml/jackson/core/format/InputAccessor$Std;

    invoke-direct {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/format/InputAccessor$Std;-><init>([BII)V

    invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_findFormat(Lcom/fasterxml/jackson/core/format/InputAccessor$Std;)Lcom/fasterxml/jackson/core/format/DataFormatMatcher;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    iget-object v3, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_detectors:[Lcom/fasterxml/jackson/core/JsonFactory;

    array-length v1, v3

    .line 160
    .local v1, "len":I
    if-lez v1, :cond_0

    .line 161
    iget-object v3, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_detectors:[Lcom/fasterxml/jackson/core/JsonFactory;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonFactory;->getFormatName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 163
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-object v3, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_detectors:[Lcom/fasterxml/jackson/core/JsonFactory;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonFactory;->getFormatName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    .end local v0    # "i":I
    :cond_0
    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public withMaxInputLookahead(I)Lcom/fasterxml/jackson/core/format/DataFormatDetector;
    .locals 4
    .param p1, "lookaheadBytes"    # I

    .prologue
    .line 94
    iget v0, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_maxInputLookahead:I

    if-ne p1, v0, :cond_0

    .line 97
    .end local p0    # "this":Lcom/fasterxml/jackson/core/format/DataFormatDetector;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/core/format/DataFormatDetector;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_detectors:[Lcom/fasterxml/jackson/core/JsonFactory;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_optimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    iget-object v3, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_minimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/fasterxml/jackson/core/format/DataFormatDetector;-><init>([Lcom/fasterxml/jackson/core/JsonFactory;Lcom/fasterxml/jackson/core/format/MatchStrength;Lcom/fasterxml/jackson/core/format/MatchStrength;I)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withMinimalMatch(Lcom/fasterxml/jackson/core/format/MatchStrength;)Lcom/fasterxml/jackson/core/format/DataFormatDetector;
    .locals 4
    .param p1, "minMatch"    # Lcom/fasterxml/jackson/core/format/MatchStrength;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_minimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    if-ne p1, v0, :cond_0

    .line 86
    .end local p0    # "this":Lcom/fasterxml/jackson/core/format/DataFormatDetector;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/core/format/DataFormatDetector;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_detectors:[Lcom/fasterxml/jackson/core/JsonFactory;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_optimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    iget v3, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_maxInputLookahead:I

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/fasterxml/jackson/core/format/DataFormatDetector;-><init>([Lcom/fasterxml/jackson/core/JsonFactory;Lcom/fasterxml/jackson/core/format/MatchStrength;Lcom/fasterxml/jackson/core/format/MatchStrength;I)V

    move-object p0, v0

    goto :goto_0
.end method

.method public withOptimalMatch(Lcom/fasterxml/jackson/core/format/MatchStrength;)Lcom/fasterxml/jackson/core/format/DataFormatDetector;
    .locals 4
    .param p1, "optMatch"    # Lcom/fasterxml/jackson/core/format/MatchStrength;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_optimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    if-ne p1, v0, :cond_0

    .line 75
    .end local p0    # "this":Lcom/fasterxml/jackson/core/format/DataFormatDetector;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lcom/fasterxml/jackson/core/format/DataFormatDetector;
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_detectors:[Lcom/fasterxml/jackson/core/JsonFactory;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_minimalMatch:Lcom/fasterxml/jackson/core/format/MatchStrength;

    iget v3, p0, Lcom/fasterxml/jackson/core/format/DataFormatDetector;->_maxInputLookahead:I

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/fasterxml/jackson/core/format/DataFormatDetector;-><init>([Lcom/fasterxml/jackson/core/JsonFactory;Lcom/fasterxml/jackson/core/format/MatchStrength;Lcom/fasterxml/jackson/core/format/MatchStrength;I)V

    move-object p0, v0

    goto :goto_0
.end method
