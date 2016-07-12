package rx.exceptions;

import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import org.apache.commons.io.IOUtils;
import spacemadness.com.lunarconsole.BuildConfig;

public final class CompositeException extends RuntimeException {
    private static final long serialVersionUID = 3026362227162912146L;
    private Throwable cause;
    private final List<Throwable> exceptions;
    private final String message;

    static final class CompositeExceptionCausalChain extends RuntimeException {
        static String MESSAGE = null;
        private static final long serialVersionUID = 3875212506787802066L;

        static {
            MESSAGE = "Chain of Causes for CompositeException In Order Received =>";
        }

        CompositeExceptionCausalChain() {
        }

        public String getMessage() {
            return MESSAGE;
        }
    }

    private static abstract class PrintStreamOrWriter {
        private PrintStreamOrWriter() {
        }

        abstract Object lock();

        abstract void println(Object obj);
    }

    private static class WrappedPrintStream extends PrintStreamOrWriter {
        private final PrintStream printStream;

        WrappedPrintStream(PrintStream printStream) {
            super();
            this.printStream = printStream;
        }

        Object lock() {
            return this.printStream;
        }

        void println(Object obj) {
            this.printStream.println(obj);
        }
    }

    private static class WrappedPrintWriter extends PrintStreamOrWriter {
        private final PrintWriter printWriter;

        WrappedPrintWriter(PrintWriter printWriter) {
            super();
            this.printWriter = printWriter;
        }

        Object lock() {
            return this.printWriter;
        }

        void println(Object obj) {
            this.printWriter.println(obj);
        }
    }

    public CompositeException(String str, Collection<? extends Throwable> collection) {
        this.cause = null;
        Collection linkedHashSet = new LinkedHashSet();
        List arrayList = new ArrayList();
        if (collection != null) {
            for (Throwable th : collection) {
                if (th instanceof CompositeException) {
                    linkedHashSet.addAll(((CompositeException) th).getExceptions());
                } else if (th != null) {
                    linkedHashSet.add(th);
                } else {
                    linkedHashSet.add(new NullPointerException());
                }
            }
        } else {
            linkedHashSet.add(new NullPointerException());
        }
        arrayList.addAll(linkedHashSet);
        this.exceptions = Collections.unmodifiableList(arrayList);
        this.message = this.exceptions.size() + " exceptions occurred. ";
    }

    public CompositeException(Collection<? extends Throwable> collection) {
        this(null, collection);
    }

    private void appendStackTrace(StringBuilder stringBuilder, Throwable th, String str) {
        stringBuilder.append(str).append(th).append(IOUtils.LINE_SEPARATOR_UNIX);
        for (Object append : th.getStackTrace()) {
            stringBuilder.append("\t\tat ").append(append).append(IOUtils.LINE_SEPARATOR_UNIX);
        }
        if (th.getCause() != null) {
            stringBuilder.append("\tCaused by: ");
            appendStackTrace(stringBuilder, th.getCause(), BuildConfig.FLAVOR);
        }
    }

    private final List<Throwable> getListOfCauses(Throwable th) {
        List arrayList = new ArrayList();
        Throwable cause = th.getCause();
        if (cause != null) {
            while (true) {
                arrayList.add(cause);
                if (cause.getCause() == null) {
                    break;
                }
                cause = cause.getCause();
            }
        }
        return arrayList;
    }

    private void printStackTrace(PrintStreamOrWriter printStreamOrWriter) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(this).append(IOUtils.LINE_SEPARATOR_UNIX);
        for (Object append : getStackTrace()) {
            stringBuilder.append("\tat ").append(append).append(IOUtils.LINE_SEPARATOR_UNIX);
        }
        int i = 1;
        for (Throwable th : this.exceptions) {
            stringBuilder.append("  ComposedException ").append(i).append(" :").append(IOUtils.LINE_SEPARATOR_UNIX);
            appendStackTrace(stringBuilder, th, "\t");
            i++;
        }
        synchronized (printStreamOrWriter.lock()) {
            printStreamOrWriter.println(stringBuilder.toString());
        }
    }

    public Throwable getCause() {
        Throwable th;
        synchronized (this) {
            if (this.cause == null) {
                Throwable compositeExceptionCausalChain = new CompositeExceptionCausalChain();
                Set hashSet = new HashSet();
                Throwable th2 = compositeExceptionCausalChain;
                for (Throwable th3 : this.exceptions) {
                    if (!hashSet.contains(th3)) {
                        hashSet.add(th3);
                        Throwable th4 = th3;
                        for (Throwable th32 : getListOfCauses(th32)) {
                            if (hashSet.contains(th32)) {
                                th4 = new RuntimeException("Duplicate found in causal chain so cropping to prevent loop ...");
                            } else {
                                hashSet.add(th32);
                            }
                        }
                        try {
                            th2.initCause(th4);
                        } catch (Throwable th5) {
                        }
                        th2 = th2.getCause();
                    }
                }
                this.cause = compositeExceptionCausalChain;
            }
            th32 = this.cause;
        }
        return th32;
    }

    public List<Throwable> getExceptions() {
        return this.exceptions;
    }

    public String getMessage() {
        return this.message;
    }

    public void printStackTrace() {
        printStackTrace(System.err);
    }

    public void printStackTrace(PrintStream printStream) {
        printStackTrace(new WrappedPrintStream(printStream));
    }

    public void printStackTrace(PrintWriter printWriter) {
        printStackTrace(new WrappedPrintWriter(printWriter));
    }
}
