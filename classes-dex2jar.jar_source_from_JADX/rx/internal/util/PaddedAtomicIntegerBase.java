package rx.internal.util;

import com.voxelbusters.nativeplugins.defines.Keys.GameServices;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

abstract class PaddedAtomicIntegerBase extends FrontPadding {
    private static final long serialVersionUID = 6513142711280243198L;
    private static final AtomicIntegerFieldUpdater<PaddedAtomicIntegerBase> updater;
    private volatile int value;

    static {
        updater = AtomicIntegerFieldUpdater.newUpdater(PaddedAtomicIntegerBase.class, GameServices.SCORE_VALUE);
    }

    PaddedAtomicIntegerBase() {
    }

    public final int addAndGet(int i) {
        return updater.addAndGet(this, i);
    }

    public final boolean compareAndSet(int i, int i2) {
        return updater.compareAndSet(this, i, i2);
    }

    public final int decrementAndGet() {
        return updater.decrementAndGet(this);
    }

    public final int get() {
        return this.value;
    }

    public final int getAndAdd(int i) {
        return updater.getAndAdd(this, i);
    }

    public final int getAndDecrement() {
        return updater.getAndDecrement(this);
    }

    public final int getAndIncrement() {
        return updater.getAndIncrement(this);
    }

    public final int getAndSet(int i) {
        return updater.getAndSet(this, this.value);
    }

    public final int incrementAndGet() {
        return updater.incrementAndGet(this);
    }

    public final void lazySet(int i) {
        updater.lazySet(this, i);
    }

    public final void set(int i) {
        this.value = i;
    }

    public String toString() {
        return String.valueOf(get());
    }

    public final boolean weakCompareAndSet(int i, int i2) {
        return updater.weakCompareAndSet(this, i, i2);
    }
}
