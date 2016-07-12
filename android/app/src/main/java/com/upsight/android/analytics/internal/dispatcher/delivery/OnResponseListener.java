package com.upsight.android.analytics.internal.dispatcher.delivery;

import com.upsight.android.analytics.dispatcher.EndpointResponse;

public interface OnResponseListener {
    void onResponse(EndpointResponse endpointResponse);
}
