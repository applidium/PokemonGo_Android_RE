.class public final Lcom/fasterxml/jackson/core/sym/Name2;
.super Lcom/fasterxml/jackson/core/sym/Name;
.source "Name2.java"


# instance fields
.field private final q1:I

.field private final q2:I


# direct methods
.method constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "hash"    # I
    .param p3, "quad1"    # I
    .param p4, "quad2"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/sym/Name;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/fasterxml/jackson/core/sym/Name2;->q1:I

    .line 19
    iput p4, p0, Lcom/fasterxml/jackson/core/sym/Name2;->q2:I

    .line 20
    return-void
.end method


# virtual methods
.method public equals(I)Z
    .locals 1
    .param p1, "quad"    # I

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method public equals(II)Z
    .locals 1
    .param p1, "quad1"    # I
    .param p2, "quad2"    # I

    .prologue
    .line 26
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/Name2;->q1:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/fasterxml/jackson/core/sym/Name2;->q2:I

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(III)Z
    .locals 1
    .param p1, "quad1"    # I
    .param p2, "quad2"    # I
    .param p3, "q3"    # I

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public equals([II)Z
    .locals 4
    .param p1, "quads"    # [I
    .param p2, "qlen"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 31
    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    aget v2, p1, v1

    iget v3, p0, Lcom/fasterxml/jackson/core/sym/Name2;->q1:I

    if-ne v2, v3, :cond_0

    aget v2, p1, v0

    iget v3, p0, Lcom/fasterxml/jackson/core/sym/Name2;->q2:I

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
