package com.upsight.android.analytics.internal;

import android.content.Context;
import com.upsight.android.internal.util.PreferencesHelper;

public final class EventSequenceId {
    private static final long INITIAL_SEQUENCE_ID = 1;
    private static final String PREFERENCES_KEY_SEQ_ID = "seq_id";

    private EventSequenceId() {
    }

    public static long getAndIncrement(Context context) {
        synchronized (EventSequenceId.class) {
            try {
            } finally {
                Class cls = EventSequenceId.class;
            }
        }
        long j = PreferencesHelper.getLong(context, PREFERENCES_KEY_SEQ_ID, INITIAL_SEQUENCE_ID);
        Object obj = PREFERENCES_KEY_SEQ_ID;
        PreferencesHelper.putLong(context, obj, INITIAL_SEQUENCE_ID + j);
        return j;
    }
}
