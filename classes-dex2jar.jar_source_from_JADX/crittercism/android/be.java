package crittercism.android;

import com.crittercism.app.Transaction;

public final class be extends Transaction {
    public be() {
        dx.m757c("Creating no-op transaction");
    }

    public final void m451a() {
        dx.m755b("No-op transaction. Ignoring Transaction.start() call.", new IllegalStateException("No-op transaction"));
    }

    public final void m452a(int i) {
        dx.m755b("No-op transaction. Ignoring Transaction.setValue(double) call.", new IllegalStateException("No-op transaction"));
    }

    public final void m453b() {
        dx.m755b("No-op transaction. Ignoring Transaction.stop() call.", new IllegalStateException("No-op transaction"));
    }

    public final void m454c() {
        dx.m755b("No-op transaction. Ignoring Transaction.fail() call.", new IllegalStateException("No-op transaction"));
    }

    public final int m455d() {
        dx.m755b("No-op transaction. Ignoring Transaction.getValue() call.", new IllegalStateException("No-op transaction"));
        return -1;
    }
}
