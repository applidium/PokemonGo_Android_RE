package rx.internal.operators;

import java.util.Deque;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import rx.Producer;
import rx.Subscriber;

final class TakeLastQueueProducer<T> implements Producer {
    private static final AtomicLongFieldUpdater<TakeLastQueueProducer> REQUESTED_UPDATER;
    private final Deque<Object> deque;
    private volatile boolean emittingStarted;
    private final NotificationLite<T> notification;
    private volatile long requested;
    private final Subscriber<? super T> subscriber;

    static {
        REQUESTED_UPDATER = AtomicLongFieldUpdater.newUpdater(TakeLastQueueProducer.class, "requested");
    }

    public TakeLastQueueProducer(NotificationLite<T> notificationLite, Deque<Object> deque, Subscriber<? super T> subscriber) {
        this.emittingStarted = false;
        this.requested = 0;
        this.notification = notificationLite;
        this.deque = deque;
        this.subscriber = subscriber;
    }

    void emit(long j) {
        if (this.requested == Long.MAX_VALUE) {
            if (j == 0) {
                try {
                    for (Object next : this.deque) {
                        if (!this.subscriber.isUnsubscribed()) {
                            this.notification.accept(this.subscriber, next);
                        } else {
                            return;
                        }
                    }
                    this.deque.clear();
                } catch (Throwable th) {
                    this.subscriber.onError(th);
                } finally {
                    this.deque.clear();
                }
            }
        } else if (j == 0) {
            while (true) {
                long j2;
                long j3;
                int i = 0;
                long j4 = this.requested;
                while (true) {
                    j2 = j4 - 1;
                    if (j2 < 0) {
                        break;
                    }
                    Object poll = this.deque.poll();
                    if (poll == null) {
                        break;
                    } else if (!this.subscriber.isUnsubscribed() && !this.notification.accept(this.subscriber, poll)) {
                        i++;
                        j4 = j2;
                    } else {
                        return;
                    }
                }
                do {
                    j2 = this.requested;
                    j3 = j2 - ((long) i);
                    if (j2 == Long.MAX_VALUE) {
                        break;
                    }
                } while (!REQUESTED_UPDATER.compareAndSet(this, j2, j3));
                if (j3 == 0) {
                    return;
                }
            }
        }
    }

    public void request(long j) {
        if (this.requested != Long.MAX_VALUE) {
            long andSet = j == Long.MAX_VALUE ? REQUESTED_UPDATER.getAndSet(this, Long.MAX_VALUE) : BackpressureUtils.getAndAddRequest(REQUESTED_UPDATER, this, j);
            if (this.emittingStarted) {
                emit(andSet);
            }
        }
    }

    void startEmitting() {
        if (!this.emittingStarted) {
            this.emittingStarted = true;
            emit(0);
        }
    }
}
