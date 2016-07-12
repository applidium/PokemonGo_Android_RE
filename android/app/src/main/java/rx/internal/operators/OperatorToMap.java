package rx.internal.operators;

import java.util.HashMap;
import java.util.Map;
import rx.Observable.Operator;
import rx.Subscriber;
import rx.functions.Func0;
import rx.functions.Func1;

public final class OperatorToMap<T, K, V> implements Operator<Map<K, V>, T> {
    private final Func1<? super T, ? extends K> keySelector;
    private final Func0<? extends Map<K, V>> mapFactory;
    private final Func1<? super T, ? extends V> valueSelector;

    /* renamed from: rx.internal.operators.OperatorToMap.1 */
    class C13241 extends Subscriber<T> {
        private Map<K, V> map;
        final /* synthetic */ Subscriber val$subscriber;

        C13241(Subscriber subscriber, Subscriber subscriber2) {
            this.val$subscriber = subscriber2;
            super(subscriber);
            this.map = (Map) OperatorToMap.this.mapFactory.call();
        }

        public void onCompleted() {
            Map map = this.map;
            this.map = null;
            this.val$subscriber.onNext(map);
            this.val$subscriber.onCompleted();
        }

        public void onError(Throwable th) {
            this.map = null;
            this.val$subscriber.onError(th);
        }

        public void onNext(T t) {
            this.map.put(OperatorToMap.this.keySelector.call(t), OperatorToMap.this.valueSelector.call(t));
        }

        public void onStart() {
            request(Long.MAX_VALUE);
        }
    }

    public static final class DefaultToMapFactory<K, V> implements Func0<Map<K, V>> {
        public Map<K, V> call() {
            return new HashMap();
        }
    }

    public OperatorToMap(Func1<? super T, ? extends K> func1, Func1<? super T, ? extends V> func12) {
        this(func1, func12, new DefaultToMapFactory());
    }

    public OperatorToMap(Func1<? super T, ? extends K> func1, Func1<? super T, ? extends V> func12, Func0<? extends Map<K, V>> func0) {
        this.keySelector = func1;
        this.valueSelector = func12;
        this.mapFactory = func0;
    }

    public Subscriber<? super T> call(Subscriber<? super Map<K, V>> subscriber) {
        return new C13241(subscriber, subscriber);
    }
}
