package com.google.android.gms.internal;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class zzlk {
    private static final ExecutorService zzacD;

    private static final class zza implements ThreadFactory {
        private final ThreadFactory zzacE;
        private AtomicInteger zzacF;

        private zza() {
            this.zzacE = Executors.defaultThreadFactory();
            this.zzacF = new AtomicInteger(0);
        }

        public Thread newThread(Runnable runnable) {
            Thread newThread = this.zzacE.newThread(runnable);
            newThread.setName("GAC_Executor[" + this.zzacF.getAndIncrement() + "]");
            return newThread;
        }
    }

    static {
        zzacD = Executors.newFixedThreadPool(2, new zza());
    }

    public static ExecutorService zzoj() {
        return zzacD;
    }
}
