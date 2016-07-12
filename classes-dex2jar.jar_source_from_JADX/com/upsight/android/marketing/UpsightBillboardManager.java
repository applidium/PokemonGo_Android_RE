package com.upsight.android.marketing;

import com.upsight.android.marketing.internal.billboard.Billboard;

public interface UpsightBillboardManager {
    boolean registerBillboard(Billboard billboard);

    boolean registerContentMediator(UpsightContentMediator upsightContentMediator);

    boolean unregisterBillboard(Billboard billboard);
}
