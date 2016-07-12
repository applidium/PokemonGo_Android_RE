package android.support.v4.os;

import android.os.CancellationSignal;

class CancellationSignalCompatJellybean {
    CancellationSignalCompatJellybean() {
    }

    public static void cancel(Object obj) {
        ((CancellationSignal) obj).cancel();
    }

    public static Object create() {
        return new CancellationSignal();
    }
}
