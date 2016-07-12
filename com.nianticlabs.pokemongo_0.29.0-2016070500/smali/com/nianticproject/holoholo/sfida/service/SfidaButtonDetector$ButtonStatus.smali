.class Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$ButtonStatus;
.super Ljava/lang/Object;
.source "SfidaButtonDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ButtonStatus"
.end annotation


# instance fields
.field clickedCount:I

.field pressedCount:I

.field releasedCount:I

.field value:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/16 v0, 0xa

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$ButtonStatus;->value:[Z

    .line 127
    return-void
.end method
