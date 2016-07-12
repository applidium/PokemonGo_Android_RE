package com.upsight.android.internal.logger;

import com.upsight.android.logger.UpsightLogger.Level;

public interface LogWriter {
    void write(String str, Level level, String str2);
}
