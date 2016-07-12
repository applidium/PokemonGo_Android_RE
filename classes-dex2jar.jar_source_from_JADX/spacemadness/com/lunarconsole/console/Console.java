package spacemadness.com.lunarconsole.console;

import spacemadness.com.lunarconsole.console.ConsoleAdapter.DataSource;
import spacemadness.com.lunarconsole.core.Destroyable;
import spacemadness.com.lunarconsole.debug.Log;

public class Console implements Destroyable, DataSource {
    private static final LunarConsoleListener NULL_LISTENER;
    private LunarConsoleListener consoleListener;
    private final ConsoleEntryList entries;
    private final Options options;

    /* renamed from: spacemadness.com.lunarconsole.console.Console.1 */
    static final class C14021 implements LunarConsoleListener {
        C14021() {
        }

        public void onAddEntry(Console console, ConsoleEntry consoleEntry, boolean z) {
        }

        public void onClearEntries(Console console) {
        }

        public void onRemoveEntries(Console console, int i, int i2) {
        }
    }

    public static class Options {
        private final int capacity;
        private int trimCount;

        public Options(int i) {
            if (i <= 0) {
                throw new IllegalArgumentException("Invalid capacity: " + i);
            }
            this.capacity = i;
            this.trimCount = 1;
        }

        public Options clone() {
            Options options = new Options(this.capacity);
            options.trimCount = this.trimCount;
            return options;
        }

        public int getCapacity() {
            return this.capacity;
        }

        public int getTrimCount() {
            return this.trimCount;
        }

        public void setTrimCount(int i) {
            if (i <= 0 || i > this.capacity) {
                throw new IllegalArgumentException("Illegal trim count: " + i);
            }
            this.trimCount = i;
        }
    }

    static {
        NULL_LISTENER = new C14021();
    }

    public Console(Options options) {
        if (options == null) {
            throw new NullPointerException("Options is null");
        }
        this.options = options.clone();
        this.entries = new ConsoleEntryList(options.getCapacity(), options.getTrimCount());
        this.consoleListener = NULL_LISTENER;
    }

    private void notifyEntriesCleared() {
        try {
            this.consoleListener.onClearEntries(this);
        } catch (Throwable e) {
            Log.m862e(e, "Error while notifying delegate", new Object[0]);
        }
    }

    private void notifyEntryAdded(ConsoleEntry consoleEntry, boolean z) {
        try {
            this.consoleListener.onAddEntry(this, consoleEntry, z);
        } catch (Throwable e) {
            Log.m862e(e, "Error while notifying delegate", new Object[0]);
        }
    }

    private void notifyRemoveEntries(int i, int i2) {
        try {
            this.consoleListener.onRemoveEntries(this, i, i2);
        } catch (Throwable e) {
            Log.m862e(e, "Error while notifying delegate", new Object[0]);
        }
    }

    public void clear() {
        this.entries.clear();
        notifyEntriesCleared();
    }

    public void destroy() {
        this.entries.clear();
    }

    public ConsoleEntryList entries() {
        return this.entries;
    }

    public int entriesCount() {
        return this.entries.count();
    }

    public ConsoleEntry entryAtIndex(int i) {
        return this.entries.getEntry(i);
    }

    public LunarConsoleListener getConsoleListener() {
        return this.consoleListener;
    }

    public ConsoleEntry getEntry(int i) {
        return this.entries.getEntry(i);
    }

    public int getEntryCount() {
        return this.entries.count();
    }

    public String getText() {
        return this.entries.getText();
    }

    public boolean isTrimmed() {
        return this.entries.isTrimmed();
    }

    public void logMessage(String str, String str2, byte b) {
        logMessage(new ConsoleEntry(b, str, str2));
    }

    void logMessage(ConsoleEntry consoleEntry) {
        int trimmedCount = this.entries.trimmedCount();
        consoleEntry.index = this.entries.totalCount();
        boolean filterEntry = this.entries.filterEntry(consoleEntry);
        this.entries.addEntry(consoleEntry);
        trimmedCount = this.entries.trimmedCount() - trimmedCount;
        if (trimmedCount > 0) {
            notifyRemoveEntries(0, trimmedCount);
        }
        notifyEntryAdded(consoleEntry, filterEntry);
    }

    public void setConsoleListener(LunarConsoleListener lunarConsoleListener) {
        if (lunarConsoleListener == null) {
            lunarConsoleListener = NULL_LISTENER;
        }
        this.consoleListener = lunarConsoleListener;
    }

    public int trimmedCount() {
        return this.entries.trimmedCount();
    }
}
