package rx.exceptions;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import rx.annotations.Experimental;

public final class Exceptions {
    private static final int MAX_DEPTH = 25;

    private Exceptions() {
    }

    public static void addCause(Throwable th, Throwable th2) {
        Set hashSet = new HashSet();
        int i = 0;
        while (th.getCause() != null) {
            if (i < MAX_DEPTH) {
                th = th.getCause();
                if (!hashSet.contains(th.getCause())) {
                    hashSet.add(th.getCause());
                    i++;
                }
            } else {
                return;
            }
        }
        try {
            break;
            th.initCause(th2);
        } catch (Throwable th3) {
        }
    }

    public static Throwable getFinalCause(Throwable th) {
        int i = 0;
        while (th.getCause() != null) {
            if (i >= MAX_DEPTH) {
                return new RuntimeException("Stack too deep to get final cause");
            }
            th = th.getCause();
            i++;
        }
        return th;
    }

    public static RuntimeException propagate(Throwable th) {
        if (th instanceof RuntimeException) {
            throw ((RuntimeException) th);
        } else if (th instanceof Error) {
            throw ((Error) th);
        } else {
            throw new RuntimeException(th);
        }
    }

    @Experimental
    public static void throwIfAny(List<? extends Throwable> list) {
        if (list != null && !list.isEmpty()) {
            if (list.size() == 1) {
                Throwable th = (Throwable) list.get(0);
                if (th instanceof RuntimeException) {
                    throw ((RuntimeException) th);
                } else if (th instanceof Error) {
                    throw ((Error) th);
                } else {
                    throw new RuntimeException(th);
                }
            }
            throw new CompositeException("Multiple exceptions", list);
        }
    }

    public static void throwIfFatal(Throwable th) {
        if (th instanceof OnErrorNotImplementedException) {
            throw ((OnErrorNotImplementedException) th);
        } else if (th instanceof OnErrorFailedException) {
            Throwable cause = ((OnErrorFailedException) th).getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            throw ((OnErrorFailedException) th);
        } else if (th instanceof StackOverflowError) {
            throw ((StackOverflowError) th);
        } else if (th instanceof VirtualMachineError) {
            throw ((VirtualMachineError) th);
        } else if (th instanceof ThreadDeath) {
            throw ((ThreadDeath) th);
        } else if (th instanceof LinkageError) {
            throw ((LinkageError) th);
        }
    }
}
