package com.fasterxml.jackson.core.sym;

import spacemadness.com.lunarconsole.BuildConfig;

public final class Name1 extends Name {
    private static final Name1 EMPTY;
    private final int f27q;

    static {
        EMPTY = new Name1(BuildConfig.FLAVOR, 0, 0);
    }

    Name1(String str, int i, int i2) {
        super(str, i);
        this.f27q = i2;
    }

    public static Name1 getEmptyName() {
        return EMPTY;
    }

    public boolean equals(int i) {
        return i == this.f27q;
    }

    public boolean equals(int i, int i2) {
        return i == this.f27q && i2 == 0;
    }

    public boolean equals(int i, int i2, int i3) {
        return false;
    }

    public boolean equals(int[] iArr, int i) {
        return i == 1 && iArr[0] == this.f27q;
    }
}
