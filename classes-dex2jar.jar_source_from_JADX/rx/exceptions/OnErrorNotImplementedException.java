package rx.exceptions;

public class OnErrorNotImplementedException extends RuntimeException {
    private static final long serialVersionUID = -6298857009889503852L;

    public OnErrorNotImplementedException(String str, Throwable th) {
        super(str, th);
    }

    public OnErrorNotImplementedException(Throwable th) {
        super(th.getMessage(), th);
    }
}
