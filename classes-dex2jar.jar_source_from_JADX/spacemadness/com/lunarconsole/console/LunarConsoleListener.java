package spacemadness.com.lunarconsole.console;

public interface LunarConsoleListener {
    void onAddEntry(Console console, ConsoleEntry consoleEntry, boolean z);

    void onClearEntries(Console console);

    void onRemoveEntries(Console console, int i, int i2);
}
