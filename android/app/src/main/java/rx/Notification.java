package rx;

import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;

public final class Notification<T> {
    private static final Notification<Void> ON_COMPLETED;
    private final Kind kind;
    private final Throwable throwable;
    private final T value;

    public enum Kind {
        OnNext,
        OnError,
        OnCompleted
    }

    static {
        ON_COMPLETED = new Notification(Kind.OnCompleted, null, null);
    }

    private Notification(Kind kind, T t, Throwable th) {
        this.value = t;
        this.throwable = th;
        this.kind = kind;
    }

    public static <T> Notification<T> createOnCompleted() {
        return ON_COMPLETED;
    }

    public static <T> Notification<T> createOnCompleted(Class<T> cls) {
        return ON_COMPLETED;
    }

    public static <T> Notification<T> createOnError(Throwable th) {
        return new Notification(Kind.OnError, null, th);
    }

    public static <T> Notification<T> createOnNext(T t) {
        return new Notification(Kind.OnNext, t, null);
    }

    public void accept(Observer<? super T> observer) {
        if (isOnNext()) {
            observer.onNext(getValue());
        } else if (isOnCompleted()) {
            observer.onCompleted();
        } else if (isOnError()) {
            observer.onError(getThrowable());
        }
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj.getClass() != getClass()) {
            return false;
        }
        Notification notification = (Notification) obj;
        return notification.getKind() == getKind() ? (!hasValue() || getValue().equals(notification.getValue())) ? !hasThrowable() || getThrowable().equals(notification.getThrowable()) : false : false;
    }

    public Kind getKind() {
        return this.kind;
    }

    public Throwable getThrowable() {
        return this.throwable;
    }

    public T getValue() {
        return this.value;
    }

    public boolean hasThrowable() {
        return isOnError() && this.throwable != null;
    }

    public boolean hasValue() {
        return isOnNext() && this.value != null;
    }

    public int hashCode() {
        int hashCode = getKind().hashCode();
        if (hasValue()) {
            hashCode = (hashCode * 31) + getValue().hashCode();
        }
        return hasThrowable() ? (hashCode * 31) + getThrowable().hashCode() : hashCode;
    }

    public boolean isOnCompleted() {
        return getKind() == Kind.OnCompleted;
    }

    public boolean isOnError() {
        return getKind() == Kind.OnError;
    }

    public boolean isOnNext() {
        return getKind() == Kind.OnNext;
    }

    public String toString() {
        StringBuilder append = new StringBuilder("[").append(super.toString()).append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR).append(getKind());
        if (hasValue()) {
            append.append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR).append(getValue());
        }
        if (hasThrowable()) {
            append.append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR).append(getThrowable().getMessage());
        }
        append.append("]");
        return append.toString();
    }
}
