package crittercism.android;

import java.net.SocketImpl;
import java.net.SocketImplFactory;

public final class ad implements SocketImplFactory {
    private Class f299a;
    private SocketImplFactory f300b;
    private C1078e f301c;
    private C1068d f302d;

    public ad(Class cls, C1078e c1078e, C1068d c1068d) {
        this.f301c = c1078e;
        this.f302d = c1068d;
        this.f299a = cls;
        Class cls2 = this.f299a;
        if (cls2 == null) {
            throw new cl("Class was null");
        }
        try {
            cls2.newInstance();
        } catch (Throwable th) {
            cl clVar = new cl("Unable to create new instance", th);
        }
    }

    public ad(SocketImplFactory socketImplFactory, C1078e c1078e, C1068d c1068d) {
        this.f301c = c1078e;
        this.f302d = c1068d;
        this.f300b = socketImplFactory;
        SocketImplFactory socketImplFactory2 = this.f300b;
        if (socketImplFactory2 == null) {
            throw new cl("Factory was null");
        }
        try {
            if (socketImplFactory2.createSocketImpl() == null) {
                throw new cl("Factory does not work");
            }
        } catch (Throwable th) {
            cl clVar = new cl("Factory does not work", th);
        }
    }

    public final SocketImpl createSocketImpl() {
        SocketImpl socketImpl = null;
        if (this.f300b != null) {
            socketImpl = this.f300b.createSocketImpl();
        } else {
            Class cls = this.f299a;
            try {
                socketImpl = (SocketImpl) this.f299a.newInstance();
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (InstantiationException e2) {
                e2.printStackTrace();
            }
        }
        return socketImpl != null ? new ac(this.f301c, this.f302d, socketImpl) : socketImpl;
    }
}
