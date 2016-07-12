package rx.observers;

import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import rx.Notification;
import rx.Observer;
import rx.Subscriber;
import rx.annotations.Experimental;
import rx.exceptions.CompositeException;

public class TestSubscriber<T> extends Subscriber<T> {
    private static final Observer<Object> INERT;
    private final long initialRequest;
    private volatile Thread lastSeenThread;
    private final CountDownLatch latch;
    private final TestObserver<T> testObserver;

    /* renamed from: rx.observers.TestSubscriber.1 */
    static final class C13751 implements Observer<Object> {
        C13751() {
        }

        public void onCompleted() {
        }

        public void onError(Throwable th) {
        }

        public void onNext(Object obj) {
        }
    }

    static {
        INERT = new C13751();
    }

    public TestSubscriber() {
        this(-1);
    }

    @Experimental
    public TestSubscriber(long j) {
        this(INERT, j);
    }

    public TestSubscriber(Observer<T> observer) {
        this(observer, -1);
    }

    @Experimental
    public TestSubscriber(Observer<T> observer, long j) {
        this.latch = new CountDownLatch(1);
        if (observer == null) {
            throw new NullPointerException();
        }
        this.testObserver = new TestObserver(observer);
        this.initialRequest = j;
    }

    public TestSubscriber(Subscriber<T> subscriber) {
        this(subscriber, -1);
    }

    @Experimental
    public static <T> TestSubscriber<T> create() {
        return new TestSubscriber();
    }

    @Experimental
    public static <T> TestSubscriber<T> create(long j) {
        return new TestSubscriber(j);
    }

    @Experimental
    public static <T> TestSubscriber<T> create(Observer<T> observer) {
        return new TestSubscriber((Observer) observer);
    }

    @Experimental
    public static <T> TestSubscriber<T> create(Observer<T> observer, long j) {
        return new TestSubscriber(observer, j);
    }

    @Experimental
    public static <T> TestSubscriber<T> create(Subscriber<T> subscriber) {
        return new TestSubscriber((Subscriber) subscriber);
    }

    @Experimental
    public void assertCompleted() {
        int size = this.testObserver.getOnCompletedEvents().size();
        if (size == 0) {
            throw new AssertionError("Not completed!");
        } else if (size > 1) {
            throw new AssertionError("Completed multiple times: " + size);
        }
    }

    @Experimental
    public void assertError(Class<? extends Throwable> cls) {
        List onErrorEvents = this.testObserver.getOnErrorEvents();
        if (onErrorEvents.size() == 0) {
            throw new AssertionError("No errors");
        } else if (onErrorEvents.size() > 1) {
            r1 = new AssertionError("Multiple errors: " + onErrorEvents.size());
            r1.initCause(new CompositeException(onErrorEvents));
            throw r1;
        } else if (!cls.isInstance(onErrorEvents.get(0))) {
            r1 = new AssertionError("Exceptions differ; expected: " + cls + ", actual: " + onErrorEvents.get(0));
            r1.initCause((Throwable) onErrorEvents.get(0));
            throw r1;
        }
    }

    @Experimental
    public void assertError(Throwable th) {
        List onErrorEvents = this.testObserver.getOnErrorEvents();
        if (onErrorEvents.size() == 0) {
            throw new AssertionError("No errors");
        } else if (onErrorEvents.size() > 1) {
            r1 = new AssertionError("Multiple errors: " + onErrorEvents.size());
            r1.initCause(new CompositeException(onErrorEvents));
            throw r1;
        } else if (!th.equals(onErrorEvents.get(0))) {
            r1 = new AssertionError("Exceptions differ; expected: " + th + ", actual: " + onErrorEvents.get(0));
            r1.initCause((Throwable) onErrorEvents.get(0));
            throw r1;
        }
    }

    public void assertNoErrors() {
        if (getOnErrorEvents().size() > 0) {
            throw new RuntimeException("Unexpected onError events: " + getOnErrorEvents().size(), (Throwable) getOnErrorEvents().get(0));
        }
    }

    @Experimental
    public void assertNoTerminalEvent() {
        Collection onErrorEvents = this.testObserver.getOnErrorEvents();
        int size = this.testObserver.getOnCompletedEvents().size();
        if (onErrorEvents.size() <= 0 && size <= 0) {
            return;
        }
        if (onErrorEvents.isEmpty()) {
            throw new AssertionError("Found " + onErrorEvents.size() + " errors and " + size + " completion events instead of none");
        } else if (onErrorEvents.size() == 1) {
            r2 = new AssertionError("Found " + onErrorEvents.size() + " errors and " + size + " completion events instead of none");
            r2.initCause((Throwable) onErrorEvents.get(0));
            throw r2;
        } else {
            r2 = new AssertionError("Found " + onErrorEvents.size() + " errors and " + size + " completion events instead of none");
            r2.initCause(new CompositeException(onErrorEvents));
            throw r2;
        }
    }

    @Experimental
    public void assertNoValues() {
        int size = this.testObserver.getOnNextEvents().size();
        if (size > 0) {
            throw new AssertionError("No onNext events expected yet some received: " + size);
        }
    }

    @Experimental
    public void assertNotCompleted() {
        int size = this.testObserver.getOnCompletedEvents().size();
        if (size == 1) {
            throw new AssertionError("Completed!");
        } else if (size > 1) {
            throw new AssertionError("Completed multiple times: " + size);
        }
    }

    public void assertReceivedOnNext(List<T> list) {
        this.testObserver.assertReceivedOnNext(list);
    }

    public void assertTerminalEvent() {
        this.testObserver.assertTerminalEvent();
    }

    public void assertUnsubscribed() {
        if (!isUnsubscribed()) {
            throw new AssertionError("Not unsubscribed.");
        }
    }

    @Experimental
    public void assertValue(T t) {
        assertReceivedOnNext(Collections.singletonList(t));
    }

    @Experimental
    public void assertValueCount(int i) {
        int size = this.testObserver.getOnNextEvents().size();
        if (size != i) {
            throw new AssertionError("Number of onNext events differ; expected: " + i + ", actual: " + size);
        }
    }

    @Experimental
    public void assertValues(T... tArr) {
        assertReceivedOnNext(Arrays.asList(tArr));
    }

    public void awaitTerminalEvent() {
        try {
            this.latch.await();
        } catch (Throwable e) {
            throw new RuntimeException("Interrupted", e);
        }
    }

    public void awaitTerminalEvent(long j, TimeUnit timeUnit) {
        try {
            this.latch.await(j, timeUnit);
        } catch (Throwable e) {
            throw new RuntimeException("Interrupted", e);
        }
    }

    public void awaitTerminalEventAndUnsubscribeOnTimeout(long j, TimeUnit timeUnit) {
        try {
            if (!this.latch.await(j, timeUnit)) {
                unsubscribe();
            }
        } catch (InterruptedException e) {
            unsubscribe();
        }
    }

    public Thread getLastSeenThread() {
        return this.lastSeenThread;
    }

    public List<Notification<T>> getOnCompletedEvents() {
        return this.testObserver.getOnCompletedEvents();
    }

    public List<Throwable> getOnErrorEvents() {
        return this.testObserver.getOnErrorEvents();
    }

    public List<T> getOnNextEvents() {
        return this.testObserver.getOnNextEvents();
    }

    public void onCompleted() {
        try {
            this.lastSeenThread = Thread.currentThread();
            this.testObserver.onCompleted();
        } finally {
            this.latch.countDown();
        }
    }

    public void onError(Throwable th) {
        try {
            this.lastSeenThread = Thread.currentThread();
            this.testObserver.onError(th);
        } finally {
            this.latch.countDown();
        }
    }

    public void onNext(T t) {
        this.lastSeenThread = Thread.currentThread();
        this.testObserver.onNext(t);
    }

    public void onStart() {
        if (this.initialRequest >= 0) {
            requestMore(this.initialRequest);
        }
    }

    public void requestMore(long j) {
        request(j);
    }
}
