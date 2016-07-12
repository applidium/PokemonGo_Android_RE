package com.upsight.android.internal.util;

import android.content.Context;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.util.UUID;

public final class SidHelper {
    private static final int BYTE_BUFFER_CAPACITY = 8;
    public static final String PREFERENCE_KEY_SID = "sid";

    public static String getSid(Context context) {
        String string;
        synchronized (SidHelper.class) {
            try {
                string = PreferencesHelper.getString(context, PREFERENCE_KEY_SID, null);
                if (string == null) {
                    UUID randomUUID = UUID.randomUUID();
                    string = new BigInteger(1, longToBytes(randomUUID.getMostSignificantBits() ^ randomUUID.getLeastSignificantBits())).toString();
                    PreferencesHelper.putString(context, PREFERENCE_KEY_SID, string);
                }
            } catch (Throwable th) {
                Class cls = SidHelper.class;
            }
        }
        return string;
    }

    private static byte[] longToBytes(long j) {
        ByteBuffer allocate = ByteBuffer.allocate(BYTE_BUFFER_CAPACITY);
        allocate.putLong(j);
        return allocate.array();
    }
}
