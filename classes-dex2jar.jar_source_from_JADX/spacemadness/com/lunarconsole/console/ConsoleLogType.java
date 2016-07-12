package spacemadness.com.lunarconsole.console;

public final class ConsoleLogType {
    public static final byte ASSERT = (byte) 1;
    public static final byte COUNT = (byte) 5;
    public static final byte ERROR = (byte) 0;
    public static final byte EXCEPTION = (byte) 4;
    public static final byte LOG = (byte) 3;
    public static final byte WARNING = (byte) 2;

    private ConsoleLogType() {
    }

    public static int getMask(int i) {
        return 1 << i;
    }

    public static boolean isErrorType(int i) {
        return i == 4 || i == 0 || i == 1;
    }

    public static boolean isValidType(int i) {
        return i >= 0 && i < 5;
    }
}
