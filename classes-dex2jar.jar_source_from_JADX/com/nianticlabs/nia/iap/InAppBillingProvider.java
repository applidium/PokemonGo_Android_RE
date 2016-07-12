package com.nianticlabs.nia.iap;

import java.util.ArrayList;
import java.util.Collection;

public interface InAppBillingProvider {

    public interface Delegate {
        void ProcessReceipt(String str, String str2, String str3, int i);

        void onConnectionStateChanged(boolean z);

        void purchasableItemsResult(Collection<PurchasableItemDetails> collection);

        void purchaseResult(PurchaseResult purchaseResult);
    }

    void getPurchasableItems(ArrayList<String> arrayList);

    boolean isBillingAvailable();

    boolean isTransactionInProgress();

    void onPause();

    void onProcessedGoogleBillingTransaction(boolean z, String str);

    void onResume();

    void purchaseItem(String str, String str2);

    void setDelegate(Delegate delegate);
}
