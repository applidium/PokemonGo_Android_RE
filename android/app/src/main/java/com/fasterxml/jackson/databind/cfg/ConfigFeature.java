package com.fasterxml.jackson.databind.cfg;

public interface ConfigFeature {
    boolean enabledByDefault();

    boolean enabledIn(int i);

    int getMask();
}
