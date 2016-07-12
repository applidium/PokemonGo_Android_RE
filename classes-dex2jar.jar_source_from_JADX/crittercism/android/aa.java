package crittercism.android;

import crittercism.android.C1060c.C1059a;
import crittercism.android.C1088k.C1087a;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.SocketAddress;
import java.nio.channels.SocketChannel;
import java.util.LinkedList;
import java.util.Queue;
import javax.net.ssl.HandshakeCompletedListener;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;

public final class aa extends SSLSocket implements ae {
    private SSLSocket f277a;
    private C1078e f278b;
    private C1068d f279c;
    private final Queue f280d;
    private C1102w f281e;
    private C1103x f282f;

    public aa(SSLSocket sSLSocket, C1078e c1078e, C1068d c1068d) {
        this.f280d = new LinkedList();
        if (sSLSocket == null) {
            throw new NullPointerException("delegate was null");
        } else if (c1078e == null) {
            throw new NullPointerException("dispatch was null");
        } else {
            this.f277a = sSLSocket;
            this.f278b = c1078e;
            this.f279c = c1068d;
        }
    }

    private C1060c m231a(boolean z) {
        C1060c c1060c = new C1060c();
        InetAddress inetAddress = this.f277a.getInetAddress();
        if (inetAddress != null) {
            c1060c.m639a(inetAddress);
        }
        if (z) {
            c1060c.m632a(getPort());
        }
        c1060c.m635a(C1087a.HTTPS);
        if (this.f279c != null) {
            c1060c.f589j = this.f279c.m692a();
        }
        if (bc.m450b()) {
            c1060c.m634a(bc.m448a());
        }
        return c1060c;
    }

    public final C1060c m232a() {
        return m231a(false);
    }

    public final void m233a(C1060c c1060c) {
        if (c1060c != null) {
            synchronized (this.f280d) {
                this.f280d.add(c1060c);
            }
        }
    }

    public final void addHandshakeCompletedListener(HandshakeCompletedListener handshakeCompletedListener) {
        this.f277a.addHandshakeCompletedListener(handshakeCompletedListener);
    }

    public final C1060c m234b() {
        C1060c c1060c;
        synchronized (this.f280d) {
            c1060c = (C1060c) this.f280d.poll();
        }
        return c1060c;
    }

    public final void bind(SocketAddress socketAddress) {
        this.f277a.bind(socketAddress);
    }

    public final void close() {
        this.f277a.close();
        try {
            if (this.f282f != null) {
                this.f282f.m845d();
            }
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m752a(th);
        }
    }

    public final void connect(SocketAddress socketAddress) {
        this.f277a.connect(socketAddress);
    }

    public final void connect(SocketAddress socketAddress, int i) {
        this.f277a.connect(socketAddress, i);
    }

    public final boolean equals(Object obj) {
        return this.f277a.equals(obj);
    }

    public final SocketChannel getChannel() {
        return this.f277a.getChannel();
    }

    public final boolean getEnableSessionCreation() {
        return this.f277a.getEnableSessionCreation();
    }

    public final String[] getEnabledCipherSuites() {
        return this.f277a.getEnabledCipherSuites();
    }

    public final String[] getEnabledProtocols() {
        return this.f277a.getEnabledProtocols();
    }

    public final InetAddress getInetAddress() {
        return this.f277a.getInetAddress();
    }

    public final InputStream getInputStream() {
        InputStream inputStream = this.f277a.getInputStream();
        if (inputStream == null) {
            return inputStream;
        }
        try {
            if (this.f282f != null && this.f282f.m841a(inputStream)) {
                return this.f282f;
            }
            this.f282f = new C1103x(this, inputStream, this.f278b);
            return this.f282f;
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m752a(th);
            return inputStream;
        }
    }

    public final boolean getKeepAlive() {
        return this.f277a.getKeepAlive();
    }

    public final InetAddress getLocalAddress() {
        return this.f277a.getLocalAddress();
    }

    public final int getLocalPort() {
        return this.f277a.getLocalPort();
    }

    public final SocketAddress getLocalSocketAddress() {
        return this.f277a.getLocalSocketAddress();
    }

    public final boolean getNeedClientAuth() {
        return this.f277a.getNeedClientAuth();
    }

    public final boolean getOOBInline() {
        return this.f277a.getOOBInline();
    }

    public final OutputStream getOutputStream() {
        OutputStream outputStream = this.f277a.getOutputStream();
        if (outputStream == null) {
            return outputStream;
        }
        try {
            if (this.f281e != null && this.f281e.m829a(outputStream)) {
                return this.f281e;
            }
            C1102w c1102w = this.f281e;
            this.f281e = new C1102w(this, outputStream);
            return this.f281e;
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m752a(th);
            return outputStream;
        }
    }

    public final int getPort() {
        return this.f277a.getPort();
    }

    public final int getReceiveBufferSize() {
        return this.f277a.getReceiveBufferSize();
    }

    public final SocketAddress getRemoteSocketAddress() {
        return this.f277a.getRemoteSocketAddress();
    }

    public final boolean getReuseAddress() {
        return this.f277a.getReuseAddress();
    }

    public final int getSendBufferSize() {
        return this.f277a.getSendBufferSize();
    }

    public final SSLSession getSession() {
        return this.f277a.getSession();
    }

    public final int getSoLinger() {
        return this.f277a.getSoLinger();
    }

    public final int getSoTimeout() {
        return this.f277a.getSoTimeout();
    }

    public final String[] getSupportedCipherSuites() {
        return this.f277a.getSupportedCipherSuites();
    }

    public final String[] getSupportedProtocols() {
        return this.f277a.getSupportedProtocols();
    }

    public final boolean getTcpNoDelay() {
        return this.f277a.getTcpNoDelay();
    }

    public final int getTrafficClass() {
        return this.f277a.getTrafficClass();
    }

    public final boolean getUseClientMode() {
        return this.f277a.getUseClientMode();
    }

    public final boolean getWantClientAuth() {
        return this.f277a.getWantClientAuth();
    }

    public final int hashCode() {
        return this.f277a.hashCode();
    }

    public final boolean isBound() {
        return this.f277a.isBound();
    }

    public final boolean isClosed() {
        return this.f277a.isClosed();
    }

    public final boolean isConnected() {
        return this.f277a.isConnected();
    }

    public final boolean isInputShutdown() {
        return this.f277a.isInputShutdown();
    }

    public final boolean isOutputShutdown() {
        return this.f277a.isOutputShutdown();
    }

    public final void removeHandshakeCompletedListener(HandshakeCompletedListener handshakeCompletedListener) {
        this.f277a.removeHandshakeCompletedListener(handshakeCompletedListener);
    }

    public final void sendUrgentData(int i) {
        this.f277a.sendUrgentData(i);
    }

    public final void setEnableSessionCreation(boolean z) {
        this.f277a.setEnableSessionCreation(z);
    }

    public final void setEnabledCipherSuites(String[] strArr) {
        this.f277a.setEnabledCipherSuites(strArr);
    }

    public final void setEnabledProtocols(String[] strArr) {
        this.f277a.setEnabledProtocols(strArr);
    }

    public final void setKeepAlive(boolean z) {
        this.f277a.setKeepAlive(z);
    }

    public final void setNeedClientAuth(boolean z) {
        this.f277a.setNeedClientAuth(z);
    }

    public final void setOOBInline(boolean z) {
        this.f277a.setOOBInline(z);
    }

    public final void setPerformancePreferences(int i, int i2, int i3) {
        this.f277a.setPerformancePreferences(i, i2, i3);
    }

    public final void setReceiveBufferSize(int i) {
        this.f277a.setReceiveBufferSize(i);
    }

    public final void setReuseAddress(boolean z) {
        this.f277a.setReuseAddress(z);
    }

    public final void setSendBufferSize(int i) {
        this.f277a.setSendBufferSize(i);
    }

    public final void setSoLinger(boolean z, int i) {
        this.f277a.setSoLinger(z, i);
    }

    public final void setSoTimeout(int i) {
        this.f277a.setSoTimeout(i);
    }

    public final void setTcpNoDelay(boolean z) {
        this.f277a.setTcpNoDelay(z);
    }

    public final void setTrafficClass(int i) {
        this.f277a.setTrafficClass(i);
    }

    public final void setUseClientMode(boolean z) {
        this.f277a.setUseClientMode(z);
    }

    public final void setWantClientAuth(boolean z) {
        this.f277a.setWantClientAuth(z);
    }

    public final void shutdownInput() {
        this.f277a.shutdownInput();
    }

    public final void shutdownOutput() {
        this.f277a.shutdownOutput();
    }

    public final void startHandshake() {
        try {
            this.f277a.startHandshake();
        } catch (Throwable e) {
            try {
                C1060c a = m231a(true);
                a.m640b();
                a.m643c();
                a.m649f();
                a.m638a(e);
                this.f278b.m761a(a, C1059a.SSL_SOCKET_START_HANDSHAKE);
            } catch (ThreadDeath e2) {
                throw e2;
            } catch (Throwable th) {
                dx.m752a(th);
            }
            throw e;
        }
    }

    public final String toString() {
        return this.f277a.toString();
    }
}
