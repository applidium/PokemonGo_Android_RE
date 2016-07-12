package rx.subscriptions;

import com.voxelbusters.nativeplugins.defines.Keys.GameServices;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import rx.Subscription;

public final class SerialSubscription implements Subscription {
    static final AtomicReferenceFieldUpdater<SerialSubscription, State> STATE_UPDATER;
    volatile State state;

    private static final class State {
        final boolean isUnsubscribed;
        final Subscription subscription;

        State(boolean z, Subscription subscription) {
            this.isUnsubscribed = z;
            this.subscription = subscription;
        }

        State set(Subscription subscription) {
            return new State(this.isUnsubscribed, subscription);
        }

        State unsubscribe() {
            return new State(true, this.subscription);
        }
    }

    static {
        STATE_UPDATER = AtomicReferenceFieldUpdater.newUpdater(SerialSubscription.class, State.class, GameServices.STATE);
    }

    public SerialSubscription() {
        this.state = new State(false, Subscriptions.empty());
    }

    public Subscription get() {
        return this.state.subscription;
    }

    public boolean isUnsubscribed() {
        return this.state.isUnsubscribed;
    }

    public void set(Subscription subscription) {
        if (subscription == null) {
            throw new IllegalArgumentException("Subscription can not be null");
        }
        State state;
        do {
            state = this.state;
            if (state.isUnsubscribed) {
                subscription.unsubscribe();
                return;
            }
        } while (!STATE_UPDATER.compareAndSet(this, state, state.set(subscription)));
        state.subscription.unsubscribe();
    }

    public void unsubscribe() {
        State state;
        do {
            state = this.state;
            if (!state.isUnsubscribed) {
            } else {
                return;
            }
        } while (!STATE_UPDATER.compareAndSet(this, state, state.unsubscribe()));
        state.subscription.unsubscribe();
    }
}
