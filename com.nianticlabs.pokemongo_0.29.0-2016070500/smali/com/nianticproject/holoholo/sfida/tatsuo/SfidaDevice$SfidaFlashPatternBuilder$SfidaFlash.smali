.class Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder$SfidaFlash;
.super Ljava/lang/Object;
.source "SfidaDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SfidaFlash"
.end annotation


# instance fields
.field public color:I

.field public flashTimeMs:I

.field public interpolationEnabled:Z

.field public vibrationLevel:I


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 0
    .param p1, "flashTimeMs"    # I
    .param p2, "color"    # I
    .param p3, "vibrationLevel"    # I
    .param p4, "interpolationEnabled"    # Z

    .prologue
    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    iput p1, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder$SfidaFlash;->flashTimeMs:I

    .line 306
    iput p2, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder$SfidaFlash;->color:I

    .line 307
    iput p3, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder$SfidaFlash;->vibrationLevel:I

    .line 308
    iput-boolean p4, p0, Lcom/nianticproject/holoholo/sfida/tatsuo/SfidaDevice$SfidaFlashPatternBuilder$SfidaFlash;->interpolationEnabled:Z

    .line 309
    return-void
.end method
