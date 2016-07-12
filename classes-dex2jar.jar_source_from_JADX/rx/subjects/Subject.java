package rx.subjects;

import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Observer;
import rx.annotations.Experimental;

public abstract class Subject<T, R> extends Observable<R> implements Observer<T> {
    private static final Object[] EMPTY_ARRAY;

    static {
        EMPTY_ARRAY = new Object[0];
    }

    protected Subject(OnSubscribe<R> onSubscribe) {
        super(onSubscribe);
    }

    @Experimental
    public Throwable getThrowable() {
        throw new UnsupportedOperationException();
    }

    @Experimental
    public T getValue() {
        throw new UnsupportedOperationException();
    }

    @Experimental
    public Object[] getValues() {
        Object[] values = getValues(EMPTY_ARRAY);
        return values == EMPTY_ARRAY ? new Object[0] : values;
    }

    @Experimental
    public T[] getValues(T[] tArr) {
        throw new UnsupportedOperationException();
    }

    @Experimental
    public boolean hasCompleted() {
        throw new UnsupportedOperationException();
    }

    public abstract boolean hasObservers();

    @Experimental
    public boolean hasThrowable() {
        throw new UnsupportedOperationException();
    }

    @Experimental
    public boolean hasValue() {
        throw new UnsupportedOperationException();
    }

    public final SerializedSubject<T, R> toSerialized() {
        return getClass() == SerializedSubject.class ? (SerializedSubject) this : new SerializedSubject(this);
    }
}
