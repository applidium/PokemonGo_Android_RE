.class Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;
.super Ljava/lang/Object;
.source "SfidaDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SfidaFlashPatternBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder$SfidaFlash;
    }
.end annotation


# instance fields
.field private inputReadTimeMs:I

.field private patterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder$SfidaFlash;",
            ">;"
        }
    .end annotation
.end field

.field private priority:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;->patterns:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$1;

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public addFlash(IIIZ)Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;
    .locals 2
    .param p1, "flashTimeMs"    # I
    .param p2, "color"    # I
    .param p3, "vibrationLevel"    # I
    .param p4, "interpolationEnabled"    # Z

    .prologue
    .line 344
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;->patterns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 345
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;->patterns:Ljava/util/List;

    new-instance v1, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder$SfidaFlash;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder$SfidaFlash;-><init>(IIIZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    return-object p0

    .line 347
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Number of flash patterns exceeded limit."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()[B
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 356
    iget-object v5, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;->patterns:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x4

    new-array v0, v5, [B

    .line 357
    .local v0, "data":[B
    const/4 v3, 0x0

    .line 358
    .local v3, "offset":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .local v4, "offset":I
    iget v5, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;->inputReadTimeMs:I

    div-int/lit8 v5, v5, 0x32

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    .line 359
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    aput-byte v6, v0, v4

    .line 360
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    aput-byte v6, v0, v3

    .line 361
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    iget v5, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;->priority:I

    and-int/lit8 v5, v5, 0x7

    shl-int/lit8 v5, v5, 0x5

    iget-object v7, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;->patterns:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    and-int/lit8 v7, v7, 0x1f

    or-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 362
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;->patterns:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 363
    iget-object v5, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;->patterns:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder$SfidaFlash;

    .line 364
    .local v1, "flash":Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder$SfidaFlash;
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    iget v5, v1, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder$SfidaFlash;->flashTimeMs:I

    div-int/lit8 v5, v5, 0x32

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    .line 365
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    iget v5, v1, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder$SfidaFlash;->color:I

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    shr-int/lit8 v5, v5, 0x4

    shl-int/lit8 v5, v5, 0x4

    iget v7, v1, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder$SfidaFlash;->color:I

    shr-int/lit8 v7, v7, 0x4

    .line 366
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v7

    and-int/lit8 v7, v7, 0xf

    or-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 367
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    iget-boolean v5, v1, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder$SfidaFlash;->interpolationEnabled:Z

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_1
    shl-int/lit8 v5, v5, 0x7

    iget v7, v1, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder$SfidaFlash;->vibrationLevel:I

    and-int/lit8 v7, v7, 0x7

    shl-int/lit8 v7, v7, 0x4

    or-int/2addr v5, v7

    iget v7, v1, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder$SfidaFlash;->color:I

    .line 369
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    shr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0xf

    or-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    .line 362
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_0

    .end local v3    # "offset":I
    .restart local v4    # "offset":I
    :cond_0
    move v5, v6

    .line 367
    goto :goto_1

    .line 371
    .end local v1    # "flash":Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder$SfidaFlash;
    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    :cond_1
    return-object v0
.end method

.method public setInputReadTimeMs(I)Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;
    .locals 0
    .param p1, "inputReadTimeMs"    # I

    .prologue
    .line 325
    iput p1, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;->inputReadTimeMs:I

    .line 326
    return-object p0
.end method

.method public setPriority(I)Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 330
    iput p1, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;->priority:I

    .line 331
    return-object p0
.end method
