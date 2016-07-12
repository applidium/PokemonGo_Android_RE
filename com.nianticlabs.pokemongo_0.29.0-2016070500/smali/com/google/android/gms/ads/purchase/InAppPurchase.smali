.class public interface abstract Lcom/google/android/gms/ads/purchase/InAppPurchase;
.super Ljava/lang/Object;


# static fields
.field public static final RESOLUTION_CANCELED:I = 0x2

.field public static final RESOLUTION_FAILURE:I = 0x0

.field public static final RESOLUTION_INVALID_PRODUCT:I = 0x3

.field public static final RESOLUTION_SUCCESS:I = 0x1


# virtual methods
.method public abstract getProductId()Ljava/lang/String;
.end method

.method public abstract recordPlayBillingResolution(I)V
.end method

.method public abstract recordResolution(I)V
.end method
