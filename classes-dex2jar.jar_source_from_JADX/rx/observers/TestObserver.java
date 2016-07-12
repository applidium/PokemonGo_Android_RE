package rx.observers;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import rx.Notification;
import rx.Observer;

public class TestObserver<T> implements Observer<T> {
    private static Observer<Object> INERT;
    private final Observer<T> delegate;
    private final ArrayList<Notification<T>> onCompletedEvents;
    private final ArrayList<Throwable> onErrorEvents;
    private final ArrayList<T> onNextEvents;

    /* renamed from: rx.observers.TestObserver.1 */
    static final class C13741 implements Observer<Object> {
        C13741() {
        }

        public void onCompleted() {
        }

        public void onError(Throwable th) {
        }

        public void onNext(Object obj) {
        }
    }

    static {
        INERT = new C13741();
    }

    public TestObserver() {
        this.onNextEvents = new ArrayList();
        this.onErrorEvents = new ArrayList();
        this.onCompletedEvents = new ArrayList();
        this.delegate = INERT;
    }

    public TestObserver(Observer<T> observer) {
        this.onNextEvents = new ArrayList();
        this.onErrorEvents = new ArrayList();
        this.onCompletedEvents = new ArrayList();
        this.delegate = observer;
    }

    public void assertReceivedOnNext(List<T> list) {
        if (this.onNextEvents.size() != list.size()) {
            throw new AssertionError("Number of items does not match. Provided: " + list.size() + "  Actual: " + this.onNextEvents.size());
        }
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i) == null) {
                if (this.onNextEvents.get(i) != null) {
                    throw new AssertionError("Value at index: " + i + " expected to be [null] but was: [" + this.onNextEvents.get(i) + "]");
                }
            } else if (!list.get(i).equals(this.onNextEvents.get(i))) {
                throw new AssertionError("Value at index: " + i + " expected to be [" + list.get(i) + "] (" + list.get(i).getClass().getSimpleName() + ") but was: [" + this.onNextEvents.get(i) + "] (" + this.onNextEvents.get(i).getClass().getSimpleName() + ")");
            }
        }
    }

    public void assertTerminalEvent() {
        if (this.onErrorEvents.size() > 1) {
            throw new AssertionError("Too many onError events: " + this.onErrorEvents.size());
        } else if (this.onCompletedEvents.size() > 1) {
            throw new AssertionError("Too many onCompleted events: " + this.onCompletedEvents.size());
        } else if (this.onCompletedEvents.size() == 1 && this.onErrorEvents.size() == 1) {
            throw new AssertionError("Received both an onError and onCompleted. Should be one or the other.");
        } else if (this.onCompletedEvents.size() == 0 && this.onErrorEvents.size() == 0) {
            throw new AssertionError("No terminal events received.");
        }
    }

    public List<Object> getEvents() {
        List arrayList = new ArrayList();
        arrayList.add(this.onNextEvents);
        arrayList.add(this.onErrorEvents);
        arrayList.add(this.onCompletedEvents);
        return Collections.unmodifiableList(arrayList);
    }

    public List<Notification<T>> getOnCompletedEvents() {
        return Collections.unmodifiableList(this.onCompletedEvents);
    }

    public List<Throwable> getOnErrorEvents() {
        return Collections.unmodifiableList(this.onErrorEvents);
    }

    public List<T> getOnNextEvents() {
        return Collections.unmodifiableList(this.onNextEvents);
    }

    public void onCompleted() {
        this.onCompletedEvents.add(Notification.createOnCompleted());
        this.delegate.onCompleted();
    }

    public void onError(Throwable th) {
        this.onErrorEvents.add(th);
        this.delegate.onError(th);
    }

    public void onNext(T t) {
        this.onNextEvents.add(t);
        this.delegate.onNext(t);
    }
}
