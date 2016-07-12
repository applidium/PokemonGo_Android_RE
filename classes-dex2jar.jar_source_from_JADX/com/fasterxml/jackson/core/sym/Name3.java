package com.fasterxml.jackson.core.sym;

public final class Name3 extends Name {
    private final int q1;
    private final int q2;
    private final int q3;

    Name3(String str, int i, int i2, int i3, int i4) {
        super(str, i);
        this.q1 = i2;
        this.q2 = i3;
        this.q3 = i4;
    }

    public boolean equals(int i) {
        return false;
    }

    public boolean equals(int i, int i2) {
        return false;
    }

    public boolean equals(int i, int i2, int i3) {
        return this.q1 == i && this.q2 == i2 && this.q3 == i3;
    }

    public boolean equals(int[] iArr, int i) {
        return i == 3 && iArr[0] == this.q1 && iArr[1] == this.q2 && iArr[2] == this.q3;
    }
}
