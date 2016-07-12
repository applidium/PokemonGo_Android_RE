package spacemadness.com.lunarconsole.debug;

public class Tags {
    public static final Tag CONSOLE;
    public static final Tag GESTURES;
    public static final Tag PLUGIN;
    public static final Tag WARNING_VIEW;

    static {
        PLUGIN = new Tag("Plugin");
        GESTURES = new Tag("Gestures");
        CONSOLE = new Tag("Console");
        WARNING_VIEW = new Tag("Warning");
    }
}
