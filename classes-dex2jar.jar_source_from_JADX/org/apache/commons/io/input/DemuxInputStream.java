package org.apache.commons.io.input;

import java.io.IOException;
import java.io.InputStream;

public class DemuxInputStream extends InputStream {
    private final InheritableThreadLocal<InputStream> m_streams;

    public DemuxInputStream() {
        this.m_streams = new InheritableThreadLocal();
    }

    public InputStream bindStream(InputStream inputStream) {
        InputStream inputStream2 = (InputStream) this.m_streams.get();
        this.m_streams.set(inputStream);
        return inputStream2;
    }

    public void close() throws IOException {
        InputStream inputStream = (InputStream) this.m_streams.get();
        if (inputStream != null) {
            inputStream.close();
        }
    }

    public int read() throws IOException {
        InputStream inputStream = (InputStream) this.m_streams.get();
        return inputStream != null ? inputStream.read() : -1;
    }
}
