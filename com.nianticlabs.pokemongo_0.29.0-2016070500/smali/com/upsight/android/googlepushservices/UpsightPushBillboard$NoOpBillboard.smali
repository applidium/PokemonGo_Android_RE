.class Lcom/upsight/android/googlepushservices/UpsightPushBillboard$NoOpBillboard;
.super Lcom/upsight/android/marketing/UpsightBillboard;
.source "UpsightPushBillboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/googlepushservices/UpsightPushBillboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoOpBillboard"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/upsight/android/marketing/UpsightBillboard;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/googlepushservices/UpsightPushBillboard$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/googlepushservices/UpsightPushBillboard$1;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/upsight/android/googlepushservices/UpsightPushBillboard$NoOpBillboard;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method protected setUp(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/marketing/UpsightBillboard;
    .locals 0
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 48
    return-object p0
.end method
