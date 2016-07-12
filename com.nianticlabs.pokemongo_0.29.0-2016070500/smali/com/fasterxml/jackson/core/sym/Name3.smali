.class public final Lcom/fasterxml/jackson/core/sym/Name3;
.super Lcom/fasterxml/jackson/core/sym/Name;
.source "Name3.java"


# instance fields
.field private final q1:I

.field private final q2:I

.field private final q3:I


# direct methods
.method constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "hash"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I
    .param p5, "i3"    # I

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/sym/Name;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcom/fasterxml/jackson/core/sym/Name3;->q1:I

    .line 15
    iput p4, p0, Lcom/fasterxml/jackson/core/sym/Name3;->q2:I

    .line 16
    iput p5, p0, Lcom/fasterxml/jackson/core/sym/Name3;->q3:I

    .line 17
    return-void
.end method


# virtual methods
.method public equals(I)Z
    .locals 1
    .param p1, "quad"    # I

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public equals(II)Z
    .locals 1
    .param p1, "quad1"    # I
    .param p2, "quad2"    # I

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public equals(III)Z
    .locals 1
    .param p1, "quad1"    # I
    .param p2, "quad2"    # I
    .param p3, "quad3"    # I

    .prologue
    .line 29
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/Name3;->q1:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/fasterxml/jackson/core/sym/Name3;->q2:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/fasterxml/jackson/core/sym/Name3;->q3:I

    if-ne v0, p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals([II)Z
    .locals 4
    .param p1, "quads"    # [I
    .param p2, "qlen"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 34
    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    aget v2, p1, v1

    iget v3, p0, Lcom/fasterxml/jackson/core/sym/Name3;->q1:I

    if-ne v2, v3, :cond_0

    aget v2, p1, v0

    iget v3, p0, Lcom/fasterxml/jackson/core/sym/Name3;->q2:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    aget v2, p1, v2

    iget v3, p0, Lcom/fasterxml/jackson/core/sym/Name3;->q3:I

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
