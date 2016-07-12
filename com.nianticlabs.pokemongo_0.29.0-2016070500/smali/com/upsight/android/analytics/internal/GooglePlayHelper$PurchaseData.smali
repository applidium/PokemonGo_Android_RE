.class Lcom/upsight/android/analytics/internal/GooglePlayHelper$PurchaseData;
.super Ljava/lang/Object;
.source "GooglePlayHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/GooglePlayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PurchaseData"
.end annotation


# instance fields
.field developerPayload:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "developerPayload"
    .end annotation
.end field

.field orderId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "orderId"
    .end annotation
.end field

.field packageName:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "packageName"
    .end annotation
.end field

.field productId:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "productId"
    .end annotation
.end field

.field purchaseState:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "purchaseState"
    .end annotation
.end field

.field purchaseTime:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "purchaseTime"
    .end annotation
.end field

.field purchaseToken:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "purchaseToken"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
