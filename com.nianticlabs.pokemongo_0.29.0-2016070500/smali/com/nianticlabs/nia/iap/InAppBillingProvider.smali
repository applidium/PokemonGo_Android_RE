.class public interface abstract Lcom/nianticlabs/nia/iap/InAppBillingProvider;
.super Ljava/lang/Object;
.source "InAppBillingProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;
    }
.end annotation


# virtual methods
.method public abstract getPurchasableItems(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract isBillingAvailable()Z
.end method

.method public abstract isTransactionInProgress()Z
.end method

.method public abstract onPause()V
.end method

.method public abstract onProcessedGoogleBillingTransaction(ZLjava/lang/String;)V
.end method

.method public abstract onResume()V
.end method

.method public abstract purchaseItem(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setDelegate(Lcom/nianticlabs/nia/iap/InAppBillingProvider$Delegate;)V
.end method
