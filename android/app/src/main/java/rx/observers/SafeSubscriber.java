package rx.observers;

import rx.Subscriber;
import rx.exceptions.Exceptions;

public class SafeSubscriber<T> extends Subscriber<T> {
    private final Subscriber<? super T> actual;
    boolean done;

    public SafeSubscriber(Subscriber<? super T> subscriber) {
        super(subscriber);
        this.done = false;
        this.actual = subscriber;
    }

    private void handlePluginException(Throwable th) {
        System.err.println("RxJavaErrorHandler threw an Exception. It shouldn't. => " + th.getMessage());
        th.printStackTrace();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    protected void _onError(java.lang.Throwable r10) {
        /*
        r9 = this;
        r8 = 2;
        r7 = 1;
        r6 = 0;
        r0 = rx.plugins.RxJavaPlugins.getInstance();	 Catch:{ Throwable -> 0x0017 }
        r0 = r0.getErrorHandler();	 Catch:{ Throwable -> 0x0017 }
        r0.handleError(r10);	 Catch:{ Throwable -> 0x0017 }
    L_0x000e:
        r0 = r9.actual;	 Catch:{ Throwable -> 0x001c }
        r0.onError(r10);	 Catch:{ Throwable -> 0x001c }
        r9.unsubscribe();	 Catch:{ RuntimeException -> 0x00a4 }
        return;
    L_0x0017:
        r0 = move-exception;
        r9.handlePluginException(r0);
        goto L_0x000e;
    L_0x001c:
        r0 = move-exception;
        r1 = r0 instanceof rx.exceptions.OnErrorNotImplementedException;
        if (r1 == 0) goto L_0x004f;
    L_0x0021:
        r9.unsubscribe();	 Catch:{ Throwable -> 0x0027 }
        r0 = (rx.exceptions.OnErrorNotImplementedException) r0;
        throw r0;
    L_0x0027:
        r1 = move-exception;
        r0 = rx.plugins.RxJavaPlugins.getInstance();	 Catch:{ Throwable -> 0x004a }
        r0 = r0.getErrorHandler();	 Catch:{ Throwable -> 0x004a }
        r0.handleError(r1);	 Catch:{ Throwable -> 0x004a }
    L_0x0033:
        r0 = new java.lang.RuntimeException;
        r2 = "Observer.onError not implemented and error while unsubscribing.";
        r3 = new rx.exceptions.CompositeException;
        r4 = new java.lang.Throwable[r8];
        r4[r6] = r10;
        r4[r7] = r1;
        r1 = java.util.Arrays.asList(r4);
        r3.<init>(r1);
        r0.<init>(r2, r3);
        throw r0;
    L_0x004a:
        r0 = move-exception;
        r9.handlePluginException(r0);
        goto L_0x0033;
    L_0x004f:
        r1 = rx.plugins.RxJavaPlugins.getInstance();	 Catch:{ Throwable -> 0x0074 }
        r1 = r1.getErrorHandler();	 Catch:{ Throwable -> 0x0074 }
        r1.handleError(r0);	 Catch:{ Throwable -> 0x0074 }
    L_0x005a:
        r9.unsubscribe();	 Catch:{ Throwable -> 0x0079 }
        r1 = new rx.exceptions.OnErrorFailedException;
        r2 = "Error occurred when trying to propagate error to Observer.onError";
        r3 = new rx.exceptions.CompositeException;
        r4 = new java.lang.Throwable[r8];
        r4[r6] = r10;
        r4[r7] = r0;
        r0 = java.util.Arrays.asList(r4);
        r3.<init>(r0);
        r1.<init>(r2, r3);
        throw r1;
    L_0x0074:
        r1 = move-exception;
        r9.handlePluginException(r1);
        goto L_0x005a;
    L_0x0079:
        r2 = move-exception;
        r1 = rx.plugins.RxJavaPlugins.getInstance();	 Catch:{ Throwable -> 0x009f }
        r1 = r1.getErrorHandler();	 Catch:{ Throwable -> 0x009f }
        r1.handleError(r2);	 Catch:{ Throwable -> 0x009f }
    L_0x0085:
        r1 = new rx.exceptions.OnErrorFailedException;
        r3 = "Error occurred when trying to propagate error to Observer.onError and during unsubscription.";
        r4 = new rx.exceptions.CompositeException;
        r5 = 3;
        r5 = new java.lang.Throwable[r5];
        r5[r6] = r10;
        r5[r7] = r0;
        r5[r8] = r2;
        r0 = java.util.Arrays.asList(r5);
        r4.<init>(r0);
        r1.<init>(r3, r4);
        throw r1;
    L_0x009f:
        r1 = move-exception;
        r9.handlePluginException(r1);
        goto L_0x0085;
    L_0x00a4:
        r1 = move-exception;
        r0 = rx.plugins.RxJavaPlugins.getInstance();	 Catch:{ Throwable -> 0x00b6 }
        r0 = r0.getErrorHandler();	 Catch:{ Throwable -> 0x00b6 }
        r0.handleError(r1);	 Catch:{ Throwable -> 0x00b6 }
    L_0x00b0:
        r0 = new rx.exceptions.OnErrorFailedException;
        r0.<init>(r1);
        throw r0;
    L_0x00b6:
        r0 = move-exception;
        r9.handlePluginException(r0);
        goto L_0x00b0;
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.observers.SafeSubscriber._onError(java.lang.Throwable):void");
    }

    public Subscriber<? super T> getActual() {
        return this.actual;
    }

    public void onCompleted() {
        if (!this.done) {
            this.done = true;
            try {
                this.actual.onCompleted();
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                _onError(th);
            } finally {
                unsubscribe();
            }
        }
    }

    public void onError(Throwable th) {
        Exceptions.throwIfFatal(th);
        if (!this.done) {
            this.done = true;
            _onError(th);
        }
    }

    public void onNext(T t) {
        try {
            if (!this.done) {
                this.actual.onNext(t);
            }
        } catch (Throwable th) {
            Exceptions.throwIfFatal(th);
            onError(th);
        }
    }
}
