package bitter.jnibridge;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

public class JNIBridge {

    /* renamed from: bitter.jnibridge.JNIBridge.a */
    private static final class C0133a implements InvocationHandler {
        private Object f5a;
        private long f6b;

        public C0133a(long j) {
            this.f5a = new Object[0];
            this.f6b = j;
        }

        public final void m15a() {
            synchronized (this.f5a) {
                this.f6b = 0;
            }
        }

        public final void finalize() {
            synchronized (this.f5a) {
                if (this.f6b == 0) {
                    return;
                }
                JNIBridge.delete(this.f6b);
            }
        }

        public final Object invoke(Object obj, Method method, Object[] objArr) {
            Object obj2;
            synchronized (this.f5a) {
                if (this.f6b == 0) {
                    obj2 = null;
                } else {
                    obj2 = JNIBridge.invoke(this.f6b, method.getDeclaringClass(), method, objArr);
                }
            }
            return obj2;
        }
    }

    static native void delete(long j);

    static void disableInterfaceProxy(Object obj) {
        ((C0133a) Proxy.getInvocationHandler(obj)).m15a();
    }

    static native Object invoke(long j, Class cls, Method method, Object[] objArr);

    static Object newInterfaceProxy(long j, Class[] clsArr) {
        return Proxy.newProxyInstance(JNIBridge.class.getClassLoader(), clsArr, new C0133a(j));
    }
}
