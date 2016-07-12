package crittercism.android;

import java.net.InetAddress;
import java.net.Socket;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

public final class ab extends SSLSocketFactory {
    private SSLSocketFactory f283a;
    private C1078e f284b;
    private C1068d f285c;

    public ab(SSLSocketFactory sSLSocketFactory, C1078e c1078e, C1068d c1068d) {
        this.f283a = sSLSocketFactory;
        this.f284b = c1078e;
        this.f285c = c1068d;
    }

    private Socket m235a(Socket socket) {
        if (socket == null) {
            return socket;
        }
        try {
            if (!(socket instanceof SSLSocket)) {
                return socket;
            }
            return new aa((SSLSocket) socket, this.f284b, this.f285c);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m752a(th);
            return socket;
        }
    }

    public final SSLSocketFactory m236a() {
        return this.f283a;
    }

    public final Socket createSocket() {
        return m235a(this.f283a.createSocket());
    }

    public final Socket createSocket(String str, int i) {
        return m235a(this.f283a.createSocket(str, i));
    }

    public final Socket createSocket(String str, int i, InetAddress inetAddress, int i2) {
        return m235a(this.f283a.createSocket(str, i, inetAddress, i2));
    }

    public final Socket createSocket(InetAddress inetAddress, int i) {
        return m235a(this.f283a.createSocket(inetAddress, i));
    }

    public final Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) {
        return m235a(this.f283a.createSocket(inetAddress, i, inetAddress2, i2));
    }

    public final Socket createSocket(Socket socket, String str, int i, boolean z) {
        return m235a(this.f283a.createSocket(socket, str, i, z));
    }

    public final String[] getDefaultCipherSuites() {
        return this.f283a.getDefaultCipherSuites();
    }

    public final String[] getSupportedCipherSuites() {
        return this.f283a.getSupportedCipherSuites();
    }
}
