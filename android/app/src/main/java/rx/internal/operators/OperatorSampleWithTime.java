package rx.internal.operators;

import com.voxelbusters.nativeplugins.defines.Keys.GameServices;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import rx.Observable.Operator;
import rx.Scheduler;
import rx.Subscriber;
import rx.functions.Action0;
import rx.observers.SerializedSubscriber;

public final class OperatorSampleWithTime<T> implements Operator<T, T> {
    final Scheduler scheduler;
    final long time;
    final TimeUnit unit;

    static final class SamplerSubscriber<T> extends Subscriber<T> implements Action0 {
        private static final Object EMPTY_TOKEN;
        static final AtomicReferenceFieldUpdater<SamplerSubscriber, Object> VALUE_UPDATER;
        private final Subscriber<? super T> subscriber;
        volatile Object value;

        static {
            EMPTY_TOKEN = new Object();
            VALUE_UPDATER = AtomicReferenceFieldUpdater.newUpdater(SamplerSubscriber.class, Object.class, GameServices.SCORE_VALUE);
        }

        public SamplerSubscriber(Subscriber<? super T> subscriber) {
            this.value = EMPTY_TOKEN;
            this.subscriber = subscriber;
        }

        public void call() {
            Object andSet = VALUE_UPDATER.getAndSet(this, EMPTY_TOKEN);
            if (andSet != EMPTY_TOKEN) {
                try {
                    this.subscriber.onNext(andSet);
                } catch (Throwable th) {
                    onError(th);
                }
            }
        }

        public void onCompleted() {
            this.subscriber.onCompleted();
            unsubscribe();
        }

        public void onError(Throwable th) {
            this.subscriber.onError(th);
            unsubscribe();
        }

        public void onNext(T t) {
            this.value = t;
        }

        public void onStart() {
            request(Long.MAX_VALUE);
        }
    }

    public OperatorSampleWithTime(long j, TimeUnit timeUnit, Scheduler scheduler) {
        this.time = j;
        this.unit = timeUnit;
        this.scheduler = scheduler;
    }

    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        Subscriber serializedSubscriber = new SerializedSubscriber(subscriber);
        Object createWorker = this.scheduler.createWorker();
        subscriber.add(createWorker);
        Subscriber<? super T> samplerSubscriber = new SamplerSubscriber(serializedSubscriber);
        subscriber.add(samplerSubscriber);
        createWorker.schedulePeriodically(samplerSubscriber, this.time, this.time, this.unit);
        return samplerSubscriber;
    }
}
