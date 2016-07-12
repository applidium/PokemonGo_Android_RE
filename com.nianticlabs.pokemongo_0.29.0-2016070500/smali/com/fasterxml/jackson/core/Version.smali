.class public Lcom/fasterxml/jackson/core/Version;
.super Ljava/lang/Object;
.source "Version.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/fasterxml/jackson/core/Version;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final UNKNOWN_VERSION:Lcom/fasterxml/jackson/core/Version;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final _artifactId:Ljava/lang/String;

.field protected final _groupId:Ljava/lang/String;

.field protected final _majorVersion:I

.field protected final _minorVersion:I

.field protected final _patchLevel:I

.field protected final _snapshotInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 21
    new-instance v0, Lcom/fasterxml/jackson/core/Version;

    move v2, v1

    move v3, v1

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/core/Version;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/fasterxml/jackson/core/Version;->UNKNOWN_VERSION:Lcom/fasterxml/jackson/core/Version;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 7
    .param p1, "major"    # I
    .param p2, "minor"    # I
    .param p3, "patchLevel"    # I
    .param p4, "snapshotInfo"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 47
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/core/Version;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "major"    # I
    .param p2, "minor"    # I
    .param p3, "patchLevel"    # I
    .param p4, "snapshotInfo"    # Ljava/lang/String;
    .param p5, "groupId"    # Ljava/lang/String;
    .param p6, "artifactId"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/fasterxml/jackson/core/Version;->_majorVersion:I

    .line 54
    iput p2, p0, Lcom/fasterxml/jackson/core/Version;->_minorVersion:I

    .line 55
    iput p3, p0, Lcom/fasterxml/jackson/core/Version;->_patchLevel:I

    .line 56
    iput-object p4, p0, Lcom/fasterxml/jackson/core/Version;->_snapshotInfo:Ljava/lang/String;

    .line 57
    if-nez p5, :cond_0

    const-string p5, ""

    .end local p5    # "groupId":Ljava/lang/String;
    :cond_0
    iput-object p5, p0, Lcom/fasterxml/jackson/core/Version;->_groupId:Ljava/lang/String;

    .line 58
    if-nez p6, :cond_1

    const-string p6, ""

    .end local p6    # "artifactId":Ljava/lang/String;
    :cond_1
    iput-object p6, p0, Lcom/fasterxml/jackson/core/Version;->_artifactId:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public static unknownVersion()Lcom/fasterxml/jackson/core/Version;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/fasterxml/jackson/core/Version;->UNKNOWN_VERSION:Lcom/fasterxml/jackson/core/Version;

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/fasterxml/jackson/core/Version;)I
    .locals 3
    .param p1, "other"    # Lcom/fasterxml/jackson/core/Version;

    .prologue
    .line 114
    if-ne p1, p0, :cond_1

    const/4 v0, 0x0

    .line 129
    :cond_0
    :goto_0
    return v0

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/core/Version;->_groupId:Ljava/lang/String;

    iget-object v2, p1, Lcom/fasterxml/jackson/core/Version;->_groupId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 117
    .local v0, "diff":I
    if-nez v0, :cond_0

    .line 118
    iget-object v1, p0, Lcom/fasterxml/jackson/core/Version;->_artifactId:Ljava/lang/String;

    iget-object v2, p1, Lcom/fasterxml/jackson/core/Version;->_artifactId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 119
    if-nez v0, :cond_0

    .line 120
    iget v1, p0, Lcom/fasterxml/jackson/core/Version;->_majorVersion:I

    iget v2, p1, Lcom/fasterxml/jackson/core/Version;->_majorVersion:I

    sub-int v0, v1, v2

    .line 121
    if-nez v0, :cond_0

    .line 122
    iget v1, p0, Lcom/fasterxml/jackson/core/Version;->_minorVersion:I

    iget v2, p1, Lcom/fasterxml/jackson/core/Version;->_minorVersion:I

    sub-int v0, v1, v2

    .line 123
    if-nez v0, :cond_0

    .line 124
    iget v1, p0, Lcom/fasterxml/jackson/core/Version;->_patchLevel:I

    iget v2, p1, Lcom/fasterxml/jackson/core/Version;->_patchLevel:I

    sub-int v0, v1, v2

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 16
    check-cast p1, Lcom/fasterxml/jackson/core/Version;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/Version;->compareTo(Lcom/fasterxml/jackson/core/Version;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 99
    if-ne p1, p0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v1

    .line 100
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 102
    check-cast v0, Lcom/fasterxml/jackson/core/Version;

    .line 103
    .local v0, "other":Lcom/fasterxml/jackson/core/Version;
    iget v3, v0, Lcom/fasterxml/jackson/core/Version;->_majorVersion:I

    iget v4, p0, Lcom/fasterxml/jackson/core/Version;->_majorVersion:I

    if-ne v3, v4, :cond_4

    iget v3, v0, Lcom/fasterxml/jackson/core/Version;->_minorVersion:I

    iget v4, p0, Lcom/fasterxml/jackson/core/Version;->_minorVersion:I

    if-ne v3, v4, :cond_4

    iget v3, v0, Lcom/fasterxml/jackson/core/Version;->_patchLevel:I

    iget v4, p0, Lcom/fasterxml/jackson/core/Version;->_patchLevel:I

    if-ne v3, v4, :cond_4

    iget-object v3, v0, Lcom/fasterxml/jackson/core/Version;->_artifactId:Ljava/lang/String;

    iget-object v4, p0, Lcom/fasterxml/jackson/core/Version;->_artifactId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/fasterxml/jackson/core/Version;->_groupId:Ljava/lang/String;

    iget-object v4, p0, Lcom/fasterxml/jackson/core/Version;->_groupId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getArtifactId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Version;->_artifactId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Version;->_groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getMajorVersion()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/fasterxml/jackson/core/Version;->_majorVersion:I

    return v0
.end method

.method public getMinorVersion()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/fasterxml/jackson/core/Version;->_minorVersion:I

    return v0
.end method

.method public getPatchLevel()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/fasterxml/jackson/core/Version;->_patchLevel:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Version;->_artifactId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/Version;->_groupId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget v2, p0, Lcom/fasterxml/jackson/core/Version;->_majorVersion:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/fasterxml/jackson/core/Version;->_minorVersion:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/fasterxml/jackson/core/Version;->_patchLevel:I

    add-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public isSnapshot()Z
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/fasterxml/jackson/core/Version;->_snapshotInfo:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/Version;->_snapshotInfo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUknownVersion()Z
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/fasterxml/jackson/core/Version;->UNKNOWN_VERSION:Lcom/fasterxml/jackson/core/Version;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toFullString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x2f

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/fasterxml/jackson/core/Version;->_groupId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/core/Version;->_artifactId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Version;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x2e

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/fasterxml/jackson/core/Version;->_majorVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    iget v1, p0, Lcom/fasterxml/jackson/core/Version;->_minorVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    iget v1, p0, Lcom/fasterxml/jackson/core/Version;->_patchLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Version;->isSnapshot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/core/Version;->_snapshotInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
