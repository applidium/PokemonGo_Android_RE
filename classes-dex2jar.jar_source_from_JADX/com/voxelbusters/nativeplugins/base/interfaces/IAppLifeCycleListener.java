package com.voxelbusters.nativeplugins.base.interfaces;

public interface IAppLifeCycleListener {
    void onApplicationPause();

    void onApplicationQuit();

    void onApplicationResume();
}
