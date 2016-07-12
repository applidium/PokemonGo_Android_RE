package com.upsight.android.analytics.internal.dispatcher.routing;

import com.upsight.android.analytics.internal.DataStoreRecord;
import com.upsight.android.analytics.internal.dispatcher.delivery.OnResponseListener;

public interface RoutingListener extends OnResponseListener {
    void onDelivery(DataStoreRecord dataStoreRecord, boolean z, boolean z2, String str);

    void onRoutingFinished(Router router);
}
