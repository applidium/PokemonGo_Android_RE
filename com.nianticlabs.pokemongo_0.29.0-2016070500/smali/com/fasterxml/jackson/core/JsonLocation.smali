.class public Lcom/fasterxml/jackson/core/JsonLocation;
.super Ljava/lang/Object;
.source "JsonLocation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final NA:Lcom/fasterxml/jackson/core/JsonLocation;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final _columnNr:I

.field final _lineNr:I

.field final transient _sourceRef:Ljava/lang/Object;

.field final _totalBytes:J

.field final _totalChars:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-wide/16 v2, -0x1

    const/4 v6, -0x1

    .line 22
    new-instance v0, Lcom/fasterxml/jackson/core/JsonLocation;

    const-string v1, "N/A"

    move-wide v4, v2

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Ljava/lang/Object;JJII)V

    sput-object v0, Lcom/fasterxml/jackson/core/JsonLocation;->NA:Lcom/fasterxml/jackson/core/JsonLocation;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JII)V
    .locals 8
    .param p1, "srcRef"    # Ljava/lang/Object;
    .param p2, "totalChars"    # J
    .param p4, "lineNr"    # I
    .param p5, "colNr"    # I

    .prologue
    .line 44
    const-wide/16 v2, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/core/JsonLocation;-><init>(Ljava/lang/Object;JJII)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;JJII)V
    .locals 0
    .param p1, "sourceRef"    # Ljava/lang/Object;
    .param p2, "totalBytes"    # J
    .param p4, "totalChars"    # J
    .param p6, "lineNr"    # I
    .param p7, "columnNr"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_sourceRef:Ljava/lang/Object;

    .line 51
    iput-wide p2, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_totalBytes:J

    .line 52
    iput-wide p4, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_totalChars:J

    .line 53
    iput p6, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_lineNr:I

    .line 54
    iput p7, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_columnNr:I

    .line 55
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 124
    if-ne p1, p0, :cond_1

    move v2, v1

    .line 133
    :cond_0
    :goto_0
    return v2

    .line 125
    :cond_1
    if-eqz p1, :cond_0

    .line 126
    instance-of v3, p1, Lcom/fasterxml/jackson/core/JsonLocation;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 127
    check-cast v0, Lcom/fasterxml/jackson/core/JsonLocation;

    .line 129
    .local v0, "otherLoc":Lcom/fasterxml/jackson/core/JsonLocation;
    iget-object v3, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_sourceRef:Ljava/lang/Object;

    if-nez v3, :cond_3

    .line 130
    iget-object v3, v0, Lcom/fasterxml/jackson/core/JsonLocation;->_sourceRef:Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 133
    :cond_2
    iget v3, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_lineNr:I

    iget v4, v0, Lcom/fasterxml/jackson/core/JsonLocation;->_lineNr:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_columnNr:I

    iget v4, v0, Lcom/fasterxml/jackson/core/JsonLocation;->_columnNr:I

    if-ne v3, v4, :cond_4

    iget-wide v4, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_totalChars:J

    iget-wide v6, v0, Lcom/fasterxml/jackson/core/JsonLocation;->_totalChars:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonLocation;->getByteOffset()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonLocation;->getByteOffset()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    :goto_1
    move v2, v1

    goto :goto_0

    .line 131
    :cond_3
    iget-object v3, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_sourceRef:Ljava/lang/Object;

    iget-object v4, v0, Lcom/fasterxml/jackson/core/JsonLocation;->_sourceRef:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_4
    move v1, v2

    .line 133
    goto :goto_1
.end method

.method public getByteOffset()J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_totalBytes:J

    return-wide v0
.end method

.method public getCharOffset()J
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_totalChars:J

    return-wide v0
.end method

.method public getColumnNr()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_columnNr:I

    return v0
.end method

.method public getLineNr()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_lineNr:I

    return v0
.end method

.method public getSourceRef()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_sourceRef:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 113
    iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_sourceRef:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 114
    .local v0, "hash":I
    :goto_0
    iget v1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_lineNr:I

    xor-int/2addr v0, v1

    .line 115
    iget v1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_columnNr:I

    add-int/2addr v0, v1

    .line 116
    iget-wide v2, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_totalChars:J

    long-to-int v1, v2

    xor-int/2addr v0, v1

    .line 117
    iget-wide v2, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_totalBytes:J

    long-to-int v1, v2

    add-int/2addr v0, v1

    .line 118
    return v0

    .line 113
    .end local v0    # "hash":I
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_sourceRef:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 96
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[Source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_sourceRef:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 98
    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :goto_0
    const-string v1, "; line: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget v1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_lineNr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    const-string v1, ", column: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget v1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_columnNr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/core/JsonLocation;->_sourceRef:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
