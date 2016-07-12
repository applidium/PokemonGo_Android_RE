.class Lcom/nianticlabs/nia/iap/PurchasableItemDetails;
.super Ljava/lang/Object;
.source "PurchasableItemDetails.java"


# instance fields
.field private description:Ljava/lang/String;

.field private itemId:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "price"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/nianticlabs/nia/iap/PurchasableItemDetails;->itemId:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/nianticlabs/nia/iap/PurchasableItemDetails;->title:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/nianticlabs/nia/iap/PurchasableItemDetails;->description:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/nianticlabs/nia/iap/PurchasableItemDetails;->price:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/PurchasableItemDetails;->description:Ljava/lang/String;

    return-object v0
.end method

.method getItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/PurchasableItemDetails;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/PurchasableItemDetails;->price:Ljava/lang/String;

    return-object v0
.end method

.method getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/PurchasableItemDetails;->title:Ljava/lang/String;

    return-object v0
.end method
