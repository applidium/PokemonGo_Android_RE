package crittercism.android;

import android.support.v4.os.EnvironmentCompat;
import crittercism.android.C1060c.C1059a;
import crittercism.android.C1088k.C1087a;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.net.SocketImpl;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.Executor;

public final class ac extends SocketImpl implements ae {
    private static Field f286a;
    private static Field f287b;
    private static Field f288c;
    private static Field f289d;
    private static Method[] f290e;
    private static boolean f291f;
    private static Throwable f292g;
    private final Queue f293h;
    private C1078e f294i;
    private C1068d f295j;
    private SocketImpl f296k;
    private C1102w f297l;
    private C1103x f298m;

    /* renamed from: crittercism.android.ac.1 */
    static final class C10051 extends SocketImpl {
        C10051() {
        }

        protected final void accept(SocketImpl socketImpl) {
        }

        protected final int available() {
            return 0;
        }

        protected final void bind(InetAddress inetAddress, int i) {
        }

        protected final void close() {
        }

        protected final void connect(String str, int i) {
        }

        protected final void connect(InetAddress inetAddress, int i) {
        }

        protected final void connect(SocketAddress socketAddress, int i) {
        }

        protected final void create(boolean z) {
        }

        protected final FileDescriptor getFileDescriptor() {
            return null;
        }

        protected final InetAddress getInetAddress() {
            return null;
        }

        protected final InputStream getInputStream() {
            return null;
        }

        protected final int getLocalPort() {
            return 0;
        }

        public final Object getOption(int i) {
            return null;
        }

        protected final OutputStream getOutputStream() {
            return null;
        }

        protected final int getPort() {
            return 0;
        }

        protected final void listen(int i) {
        }

        protected final void sendUrgentData(int i) {
        }

        public final void setOption(int i, Object obj) {
        }

        protected final void setPerformancePreferences(int i, int i2, int i3) {
        }

        protected final void shutdownInput() {
        }

        protected final void shutdownOutput() {
        }

        protected final boolean supportsUrgentData() {
            return false;
        }

        public final String toString() {
            return null;
        }
    }

    /* renamed from: crittercism.android.ac.2 */
    static final class C10062 implements Executor {
        C10062() {
        }

        public final void execute(Runnable runnable) {
        }
    }

    static {
        f290e = new Method[20];
        f291f = false;
        f292g = null;
        try {
            f286a = SocketImpl.class.getDeclaredField("address");
            f287b = SocketImpl.class.getDeclaredField("fd");
            f288c = SocketImpl.class.getDeclaredField("localport");
            f289d = SocketImpl.class.getDeclaredField("port");
            AccessibleObject accessibleObject = f286a;
            AccessibleObject[] accessibleObjectArr = new AccessibleObject[]{f287b, f288c, f289d};
            if (accessibleObject != null) {
                accessibleObject.setAccessible(true);
            }
            if (accessibleObjectArr.length > 0) {
                C1086j.m796a(accessibleObjectArr);
            }
            f290e[0] = SocketImpl.class.getDeclaredMethod("accept", new Class[]{SocketImpl.class});
            f290e[1] = SocketImpl.class.getDeclaredMethod("available", new Class[0]);
            f290e[2] = SocketImpl.class.getDeclaredMethod("bind", new Class[]{InetAddress.class, Integer.TYPE});
            f290e[3] = SocketImpl.class.getDeclaredMethod("close", new Class[0]);
            f290e[4] = SocketImpl.class.getDeclaredMethod("connect", new Class[]{InetAddress.class, Integer.TYPE});
            f290e[5] = SocketImpl.class.getDeclaredMethod("connect", new Class[]{SocketAddress.class, Integer.TYPE});
            f290e[6] = SocketImpl.class.getDeclaredMethod("connect", new Class[]{String.class, Integer.TYPE});
            f290e[7] = SocketImpl.class.getDeclaredMethod("create", new Class[]{Boolean.TYPE});
            f290e[8] = SocketImpl.class.getDeclaredMethod("getFileDescriptor", new Class[0]);
            f290e[9] = SocketImpl.class.getDeclaredMethod("getInetAddress", new Class[0]);
            f290e[10] = SocketImpl.class.getDeclaredMethod("getInputStream", new Class[0]);
            f290e[11] = SocketImpl.class.getDeclaredMethod("getLocalPort", new Class[0]);
            f290e[12] = SocketImpl.class.getDeclaredMethod("getOutputStream", new Class[0]);
            f290e[13] = SocketImpl.class.getDeclaredMethod("getPort", new Class[0]);
            f290e[14] = SocketImpl.class.getDeclaredMethod("listen", new Class[]{Integer.TYPE});
            f290e[15] = SocketImpl.class.getDeclaredMethod("sendUrgentData", new Class[]{Integer.TYPE});
            f290e[16] = SocketImpl.class.getDeclaredMethod("setPerformancePreferences", new Class[]{Integer.TYPE, Integer.TYPE, Integer.TYPE});
            f290e[17] = SocketImpl.class.getDeclaredMethod("shutdownInput", new Class[0]);
            f290e[18] = SocketImpl.class.getDeclaredMethod("shutdownOutput", new Class[0]);
            f290e[19] = SocketImpl.class.getDeclaredMethod("supportsUrgentData", new Class[0]);
            C1086j.m796a(f290e);
            f291f = true;
        } catch (Throwable e) {
            f291f = false;
            f292g = e;
        } catch (Throwable e2) {
            Throwable th = e2;
            f291f = false;
            int i = 0;
            while (i < 20) {
                if (f290e[i] == null) {
                    break;
                }
                i++;
            }
            i = 20;
            f292g = new ck("Bad method: " + i, th);
        } catch (Throwable e22) {
            Throwable th2 = e22;
            f291f = false;
            String str = EnvironmentCompat.MEDIA_UNKNOWN;
            if (f286a == null) {
                str = "address";
            } else if (f287b == null) {
                str = "fd";
            } else if (f288c == null) {
                str = "localport";
            } else if (f289d == null) {
                str = "port";
            }
            f292g = new ck("No such field: " + str, th2);
        } catch (Throwable e222) {
            f291f = false;
            f292g = e222;
        }
    }

    public ac(C1078e c1078e, C1068d c1068d, SocketImpl socketImpl) {
        this.f293h = new LinkedList();
        if (c1078e == null) {
            throw new NullPointerException("dispatch was null");
        } else if (socketImpl == null) {
            throw new NullPointerException("delegate was null");
        } else {
            this.f294i = c1078e;
            this.f295j = c1068d;
            this.f296k = socketImpl;
            m244f();
        }
    }

    private C1060c m237a(boolean z) {
        C1060c c1060c = new C1060c();
        InetAddress inetAddress = getInetAddress();
        if (inetAddress != null) {
            c1060c.m639a(inetAddress);
        }
        int port = getPort();
        if (port > 0) {
            c1060c.m632a(port);
        }
        if (z) {
            c1060c.m635a(C1087a.HTTP);
        }
        if (this.f295j != null) {
            c1060c.f589j = this.f295j.m692a();
        }
        if (bc.m450b()) {
            c1060c.m634a(bc.m448a());
        }
        return c1060c;
    }

    private Object m238a(int i, Object... objArr) {
        Throwable e;
        try {
            f286a.set(this.f296k, this.address);
            f287b.set(this.f296k, this.fd);
            f288c.setInt(this.f296k, this.localport);
            f289d.setInt(this.f296k, this.port);
            try {
                Object invoke = f290e[i].invoke(this.f296k, objArr);
                m244f();
                return invoke;
            } catch (Throwable e2) {
                throw new ck(e2);
            } catch (Throwable e22) {
                throw new ck(e22);
            } catch (Throwable e222) {
                Throwable th = e222;
                e222 = th.getTargetException();
                if (e222 == null) {
                    throw new ck(th);
                } else if (e222 instanceof Exception) {
                    throw ((Exception) e222);
                } else if (e222 instanceof Error) {
                    throw ((Error) e222);
                } else {
                    throw new ck(e222);
                }
            } catch (Throwable e2222) {
                throw new ck(e2222);
            } catch (Throwable e22222) {
                throw new ck(e22222);
            } catch (Throwable th2) {
                m244f();
            }
        } catch (Throwable e222222) {
            throw new ck(e222222);
        } catch (Throwable e2222222) {
            throw new ck(e2222222);
        }
    }

    private Object m239b(int i, Object... objArr) {
        try {
            return m238a(i, objArr);
        } catch (RuntimeException e) {
            throw e;
        } catch (Throwable e2) {
            throw new ck(e2);
        }
    }

    private Object m240c(int i, Object... objArr) {
        try {
            return m238a(i, objArr);
        } catch (IOException e) {
            throw e;
        } catch (RuntimeException e2) {
            throw e2;
        } catch (Throwable e3) {
            throw new ck(e3);
        }
    }

    public static boolean m241c() {
        return f291f;
    }

    public static Throwable m242d() {
        return f292g;
    }

    public static void m243e() {
        if (f291f) {
            SocketImpl acVar = new ac(new C1078e(new C10062()), null, new C10051());
            try {
                acVar.setOption(0, new Object());
                acVar.getOption(0);
                acVar.sendUrgentData(0);
                acVar.listen(0);
                acVar.getOutputStream();
                acVar.getInputStream();
                acVar.create(false);
                acVar.connect(null, 0);
                acVar.connect(null, 0);
                acVar.connect(null, 0);
                acVar.close();
                acVar.bind(null, 0);
                acVar.available();
                acVar.accept(acVar);
                acVar.getFileDescriptor();
                acVar.getInetAddress();
                acVar.getLocalPort();
                acVar.getPort();
                acVar.setPerformancePreferences(0, 0, 0);
                acVar.shutdownInput();
                acVar.shutdownOutput();
                acVar.supportsUrgentData();
            } catch (IOException e) {
            } catch (ck e2) {
                throw e2;
            } catch (Throwable th) {
                ck ckVar = new ck(th);
            }
        } else {
            throw new ck(f292g);
        }
    }

    private void m244f() {
        try {
            this.address = (InetAddress) f286a.get(this.f296k);
            this.fd = (FileDescriptor) f287b.get(this.f296k);
            this.localport = f288c.getInt(this.f296k);
            this.port = f289d.getInt(this.f296k);
        } catch (Throwable e) {
            throw new ck(e);
        } catch (Throwable e2) {
            throw new ck(e2);
        }
    }

    public final C1060c m245a() {
        return m237a(true);
    }

    public final void m246a(C1060c c1060c) {
        synchronized (this.f293h) {
            this.f293h.add(c1060c);
        }
    }

    public final void accept(SocketImpl socketImpl) {
        m240c(0, socketImpl);
    }

    public final int available() {
        Integer num = (Integer) m240c(1, new Object[0]);
        if (num != null) {
            return num.intValue();
        }
        throw new ck("Received a null Integer");
    }

    public final C1060c m247b() {
        C1060c c1060c;
        synchronized (this.f293h) {
            c1060c = (C1060c) this.f293h.poll();
        }
        return c1060c;
    }

    public final void bind(InetAddress inetAddress, int i) {
        m240c(2, inetAddress, Integer.valueOf(i));
    }

    public final void close() {
        m240c(3, new Object[0]);
        try {
            if (this.f298m != null) {
                this.f298m.m845d();
            }
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m752a(th);
        }
    }

    public final void connect(String str, int i) {
        try {
            m240c(6, str, Integer.valueOf(i));
        } catch (Throwable e) {
            if (str != null) {
                try {
                    C1060c a = m237a(false);
                    a.m640b();
                    a.m643c();
                    a.m649f();
                    a.m642b(str);
                    a.m632a(i);
                    a.m638a(e);
                    this.f294i.m761a(a, C1059a.SOCKET_IMPL_CONNECT);
                } catch (ThreadDeath e2) {
                    throw e2;
                } catch (Throwable th) {
                    dx.m752a(th);
                }
            }
            throw e;
        }
    }

    public final void connect(InetAddress inetAddress, int i) {
        try {
            m240c(4, inetAddress, Integer.valueOf(i));
        } catch (Throwable e) {
            if (inetAddress != null) {
                try {
                    C1060c a = m237a(false);
                    a.m640b();
                    a.m643c();
                    a.m649f();
                    a.m639a(inetAddress);
                    a.m632a(i);
                    a.m638a(e);
                    this.f294i.m761a(a, C1059a.SOCKET_IMPL_CONNECT);
                } catch (ThreadDeath e2) {
                    throw e2;
                } catch (Throwable th) {
                    dx.m752a(th);
                }
            }
            throw e;
        }
    }

    public final void connect(SocketAddress socketAddress, int i) {
        try {
            m240c(5, socketAddress, Integer.valueOf(i));
        } catch (Throwable e) {
            if (socketAddress != null) {
                try {
                    if (socketAddress instanceof InetSocketAddress) {
                        C1060c a = m237a(false);
                        InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddress;
                        a.m640b();
                        a.m643c();
                        a.m649f();
                        a.m639a(inetSocketAddress.getAddress());
                        a.m632a(inetSocketAddress.getPort());
                        a.m638a(e);
                        this.f294i.m761a(a, C1059a.SOCKET_IMPL_CONNECT);
                    }
                } catch (ThreadDeath e2) {
                    throw e2;
                } catch (Throwable th) {
                    dx.m752a(th);
                }
            }
            throw e;
        }
    }

    public final void create(boolean z) {
        m240c(7, Boolean.valueOf(z));
    }

    public final FileDescriptor getFileDescriptor() {
        return (FileDescriptor) m239b(8, new Object[0]);
    }

    public final InetAddress getInetAddress() {
        return (InetAddress) m239b(9, new Object[0]);
    }

    public final InputStream getInputStream() {
        InputStream inputStream = (InputStream) m240c(10, new Object[0]);
        if (inputStream == null) {
            return inputStream;
        }
        try {
            if (this.f298m != null && this.f298m.m841a(inputStream)) {
                return this.f298m;
            }
            this.f298m = new C1103x(this, inputStream, this.f294i);
            return this.f298m;
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m752a(th);
            return inputStream;
        }
    }

    public final int getLocalPort() {
        return ((Integer) m239b(11, new Object[0])).intValue();
    }

    public final Object getOption(int i) {
        return this.f296k.getOption(i);
    }

    public final OutputStream getOutputStream() {
        OutputStream outputStream = (OutputStream) m240c(12, new Object[0]);
        if (outputStream == null) {
            return outputStream;
        }
        try {
            if (this.f297l != null && this.f297l.m829a(outputStream)) {
                return this.f297l;
            }
            this.f297l = new C1102w(this, outputStream);
            return this.f297l;
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m752a(th);
            return outputStream;
        }
    }

    public final int getPort() {
        return ((Integer) m239b(13, new Object[0])).intValue();
    }

    public final void listen(int i) {
        m240c(14, Integer.valueOf(i));
    }

    public final void sendUrgentData(int i) {
        m240c(15, Integer.valueOf(i));
    }

    public final void setOption(int i, Object obj) {
        this.f296k.setOption(i, obj);
    }

    public final void setPerformancePreferences(int i, int i2, int i3) {
        m239b(16, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
    }

    public final void shutdownInput() {
        m240c(17, new Object[0]);
    }

    public final void shutdownOutput() {
        m240c(18, new Object[0]);
    }

    public final boolean supportsUrgentData() {
        return ((Boolean) m239b(19, new Object[0])).booleanValue();
    }

    public final String toString() {
        return this.f296k.toString();
    }
}
