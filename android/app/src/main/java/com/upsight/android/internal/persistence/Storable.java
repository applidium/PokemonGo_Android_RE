package com.upsight.android.internal.persistence;

public final class Storable {
    String id;
    String type;
    String value;

    Storable(String str, String str2, String str3) {
        this.id = str;
        this.type = str2;
        this.value = str3;
    }

    public static Storable create(String str, String str2, String str3) {
        return new Storable(str, str2, str3);
    }

    public String getID() {
        return this.id;
    }

    public String getType() {
        return this.type;
    }

    public String getValue() {
        return this.value;
    }
}
