package com.upsight.android.analytics.internal.dispatcher.delivery;

import com.upsight.android.analytics.internal.dispatcher.routing.Packet;

public interface OnDeliveryListener {
    void onDelivery(Packet packet);
}
