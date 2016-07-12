package com.fasterxml.jackson.core.util;

import java.util.concurrent.ConcurrentHashMap;

public final class InternCache extends ConcurrentHashMap<String, String> {
    private static final int MAX_ENTRIES = 180;
    public static final InternCache instance;
    private final Object lock;

    static {
        instance = new InternCache();
    }

    private InternCache() {
        super(MAX_ENTRIES, 0.8f, 4);
        this.lock = new Object();
    }

    public String intern(String str) {
        String str2 = (String) get(str);
        if (str2 != null) {
            return str2;
        }
        if (size() >= MAX_ENTRIES) {
            synchronized (this.lock) {
                if (size() >= MAX_ENTRIES) {
                    clear();
                }
            }
        }
        str2 = str.intern();
        put(str2, str2);
        return str2;
    }
}
