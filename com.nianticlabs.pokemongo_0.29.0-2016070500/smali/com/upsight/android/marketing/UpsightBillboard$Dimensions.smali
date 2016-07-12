.class public Lcom/upsight/android/marketing/UpsightBillboard$Dimensions;
.super Ljava/lang/Object;
.source "UpsightBillboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/marketing/UpsightBillboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dimensions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;
    }
.end annotation


# instance fields
.field public final height:I

.field public final layout:Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;

.field public final width:I


# direct methods
.method public constructor <init>(Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;II)V
    .locals 0
    .param p1, "layout"    # Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/upsight/android/marketing/UpsightBillboard$Dimensions;->layout:Lcom/upsight/android/marketing/UpsightBillboard$Dimensions$LayoutOrientation;

    .line 104
    iput p2, p0, Lcom/upsight/android/marketing/UpsightBillboard$Dimensions;->width:I

    .line 105
    iput p3, p0, Lcom/upsight/android/marketing/UpsightBillboard$Dimensions;->height:I

    .line 106
    return-void
.end method
