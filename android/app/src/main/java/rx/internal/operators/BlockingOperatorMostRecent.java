package rx.internal.operators;

import java.util.Iterator;
import java.util.NoSuchElementException;
import rx.Observable;
import rx.Subscriber;
import rx.exceptions.Exceptions;

public final class BlockingOperatorMostRecent {

    /* renamed from: rx.internal.operators.BlockingOperatorMostRecent.1 */
    static final class C11621 implements Iterable<T> {
        final /* synthetic */ Object val$initialValue;
        final /* synthetic */ Observable val$source;

        C11621(Object obj, Observable observable) {
            this.val$initialValue = obj;
            this.val$source = observable;
        }

        public Iterator<T> iterator() {
            Subscriber mostRecentObserver = new MostRecentObserver(null);
            this.val$source.subscribe(mostRecentObserver);
            return mostRecentObserver.getIterable();
        }
    }

    private static final class MostRecentObserver<T> extends Subscriber<T> {
        final NotificationLite<T> nl;
        volatile Object value;

        /* renamed from: rx.internal.operators.BlockingOperatorMostRecent.MostRecentObserver.1 */
        class C11631 implements Iterator<T> {
            private Object buf;

            C11631() {
                this.buf = null;
            }

            public boolean hasNext() {
                this.buf = MostRecentObserver.this.value;
                return !MostRecentObserver.this.nl.isCompleted(this.buf);
            }

            public T next() {
                try {
                    if (this.buf == null) {
                        Object obj = MostRecentObserver.this.value;
                    }
                    if (MostRecentObserver.this.nl.isCompleted(this.buf)) {
                        throw new NoSuchElementException();
                    } else if (MostRecentObserver.this.nl.isError(this.buf)) {
                        throw Exceptions.propagate(MostRecentObserver.this.nl.getError(this.buf));
                    } else {
                        T value = MostRecentObserver.this.nl.getValue(this.buf);
                        this.buf = null;
                        return value;
                    }
                } finally {
                    this.buf = null;
                }
            }

            public void remove() {
                throw new UnsupportedOperationException("Read only iterator");
            }
        }

        private MostRecentObserver(T t) {
            this.nl = NotificationLite.instance();
            this.value = this.nl.next(t);
        }

        public Iterator<T> getIterable() {
            return new C11631();
        }

        public void onCompleted() {
            this.value = this.nl.completed();
        }

        public void onError(Throwable th) {
            this.value = this.nl.error(th);
        }

        public void onNext(T t) {
            this.value = this.nl.next(t);
        }
    }

    private BlockingOperatorMostRecent() {
        throw new IllegalStateException("No instances!");
    }

    public static <T> Iterable<T> mostRecent(Observable<? extends T> observable, T t) {
        return new C11621(t, observable);
    }
}
