.class public interface abstract Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;
.super Ljava/lang/Object;
.source "InAppBillingProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticlabs/nia/iap/InAppBillingProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract ProcessReceipt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract onConnectionStateChanged(Z)V
.end method

.method public abstract purchasableItemsResult(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/nianticlabs/nia/iap/PurchasableItemDetails;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract purchaseResult(Lcom/nianticlabs/nia/iap/PurchaseResult;)V
.end method
