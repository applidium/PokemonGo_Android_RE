package com.nianticlabs.nia.iap;

class PurchasableItemDetails {
    private String description;
    private String itemId;
    private String price;
    private String title;

    PurchasableItemDetails(String str, String str2, String str3, String str4) {
        this.itemId = str;
        this.title = str2;
        this.description = str3;
        this.price = str4;
    }

    String getDescription() {
        return this.description;
    }

    String getItemId() {
        return this.itemId;
    }

    String getPrice() {
        return this.price;
    }

    String getTitle() {
        return this.title;
    }
}
