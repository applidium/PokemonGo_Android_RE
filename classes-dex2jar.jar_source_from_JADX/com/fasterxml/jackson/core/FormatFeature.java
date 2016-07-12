package com.fasterxml.jackson.core;

public interface FormatFeature {
    boolean enabledByDefault();

    boolean enabledIn(int i);

    int getMask();
}
