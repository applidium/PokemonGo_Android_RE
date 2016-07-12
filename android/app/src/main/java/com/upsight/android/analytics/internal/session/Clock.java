package com.upsight.android.analytics.internal.session;

public interface Clock {
    long currentTimeMillis();

    long currentTimeSeconds();
}
