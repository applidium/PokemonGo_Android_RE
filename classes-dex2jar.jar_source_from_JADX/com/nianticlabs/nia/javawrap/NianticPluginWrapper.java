package com.nianticlabs.nia.javawrap;

public class NianticPluginWrapper {
    private long nativeHandle;

    private native void nativeDispose();

    private native long nativeGetApi();

    private native void nativeInitialize();

    public void dispose() {
        nativeDispose();
    }

    public long getApi() {
        return nativeGetApi();
    }

    public void initialize() {
        nativeInitialize();
    }
}
