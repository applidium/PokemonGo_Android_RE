.class public Lcom/voxelbusters/nativeplugins/defines/Keys$Billing;
.super Ljava/lang/Object;
.source "Keys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxelbusters/nativeplugins/defines/Keys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Billing"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxelbusters/nativeplugins/defines/Keys$Billing$Validation;
    }
.end annotation


# static fields
.field public static final ERROR:Ljava/lang/String; = "error"

.field public static final ORIGINAL_JSON:Ljava/lang/String; = "original-json"

.field public static final PRODUCTS_LIST:Ljava/lang/String; = "products-list"

.field public static final PRODUCT_CURRENCY_CODE:Ljava/lang/String; = "price_currency_code"

.field public static final PRODUCT_CURRENCY_SYMBOL:Ljava/lang/String; = "price_currency_symbol"

.field public static final PRODUCT_IDENTIFIER:Ljava/lang/String; = "productId"

.field public static final PURCHASE_VALIDATION_STATE:Ljava/lang/String; = "purchaseValidationState"

.field public static final RAW_PURCHASE_DATA:Ljava/lang/String; = "raw-purchase-data"

.field public static final SIGNATURE:Ljava/lang/String; = "signature"

.field public static final TRANSACTIONS_LIST:Ljava/lang/String; = "transactions-list"


# instance fields
.field final synthetic this$0:Lcom/voxelbusters/nativeplugins/defines/Keys;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/nativeplugins/defines/Keys;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/voxelbusters/nativeplugins/defines/Keys$Billing;->this$0:Lcom/voxelbusters/nativeplugins/defines/Keys;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
