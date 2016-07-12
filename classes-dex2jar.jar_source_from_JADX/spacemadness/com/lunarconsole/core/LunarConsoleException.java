package spacemadness.com.lunarconsole.core;

public class LunarConsoleException extends RuntimeException {
    public LunarConsoleException(String str) {
        super(str);
    }

    public LunarConsoleException(String str, Throwable th) {
        super(str, th);
    }
}
