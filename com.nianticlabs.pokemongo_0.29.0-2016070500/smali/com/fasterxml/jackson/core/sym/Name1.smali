.class public final Lcom/fasterxml/jackson/core/sym/Name1;
.super Lcom/fasterxml/jackson/core/sym/Name;
.source "Name1.java"


# static fields
.field private static final EMPTY:Lcom/fasterxml/jackson/core/sym/Name1;


# instance fields
.field private final q:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/fasterxml/jackson/core/sym/Name1;

    const-string v1, ""

    invoke-direct {v0, v1, v2, v2}, Lcom/fasterxml/jackson/core/sym/Name1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fasterxml/jackson/core/sym/Name1;->EMPTY:Lcom/fasterxml/jackson/core/sym/Name1;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "hash"    # I
    .param p3, "quad"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/sym/Name;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lcom/fasterxml/jackson/core/sym/Name1;->q:I

    .line 20
    return-void
.end method

.method public static getEmptyName()Lcom/fasterxml/jackson/core/sym/Name1;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/fasterxml/jackson/core/sym/Name1;->EMPTY:Lcom/fasterxml/jackson/core/sym/Name1;

    return-object v0
.end method


# virtual methods
.method public equals(I)Z
    .locals 1
    .param p1, "quad"    # I

    .prologue
    .line 24
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/Name1;->q:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(II)Z
    .locals 1
    .param p1, "quad1"    # I
    .param p2, "quad2"    # I

    .prologue
    .line 25
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/Name1;->q:I

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(III)Z
    .locals 1
    .param p1, "q1"    # I
    .param p2, "q2"    # I
    .param p3, "q3"    # I

    .prologue
    .line 26
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

    .line 28
    if-ne p2, v0, :cond_0

    aget v2, p1, v1

    iget v3, p0, Lcom/fasterxml/jackson/core/sym/Name1;->q:I

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
