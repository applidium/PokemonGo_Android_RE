package rx.exceptions;

public class MissingBackpressureException extends Exception {
    private static final long serialVersionUID = 7250870679677032194L;

    public MissingBackpressureException(String str) {
        super(str);
    }
}
