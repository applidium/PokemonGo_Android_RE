package spacemadness.com.lunarconsole.console;

import java.util.Iterator;
import spacemadness.com.lunarconsole.utils.ObjectUtils;
import spacemadness.com.lunarconsole.utils.StringUtils;

public class ConsoleEntryList {
    private LimitSizeEntryList currentEntries;
    private final LimitSizeEntryList entries;
    private int errorCount;
    private String filterText;
    private LimitSizeEntryList filteredEntries;
    private int logCount;
    private int logDisabledTypesMask;
    private int warningCount;

    private static class LimitSizeEntryList extends LimitSizeList<ConsoleEntry> {
        public LimitSizeEntryList(int i, int i2) {
            super(ConsoleEntry.class, i, i2);
        }
    }

    public ConsoleEntryList(int i, int i2) {
        this.entries = new LimitSizeEntryList(i, i2);
        this.currentEntries = this.entries;
        this.logDisabledTypesMask = 0;
    }

    private boolean appendFilter() {
        if (!isFiltering()) {
            return applyFilter();
        }
        useFilteredFromEntries(this.filteredEntries);
        return true;
    }

    private boolean applyFilter() {
        boolean z = StringUtils.length(this.filterText) > 0 || hasLogTypeFilters();
        if (!z) {
            return removeFilter();
        }
        useFilteredFromEntries(this.entries);
        return true;
    }

    private LimitSizeEntryList filterEntries(LimitSizeEntryList limitSizeEntryList) {
        LimitSizeEntryList limitSizeEntryList2 = new LimitSizeEntryList(limitSizeEntryList.capacity(), limitSizeEntryList.getTrimSize());
        Iterator it = limitSizeEntryList.iterator();
        while (it.hasNext()) {
            ConsoleEntry consoleEntry = (ConsoleEntry) it.next();
            if (isFiltered(consoleEntry)) {
                limitSizeEntryList2.addObject(consoleEntry);
            }
        }
        return limitSizeEntryList2;
    }

    private boolean hasLogTypeFilters() {
        return this.logDisabledTypesMask != 0;
    }

    private boolean isFiltered(ConsoleEntry consoleEntry) {
        return (this.logDisabledTypesMask & ConsoleLogType.getMask(consoleEntry.type)) != 0 ? false : StringUtils.length(this.filterText) == 0 || StringUtils.containsIgnoreCase(consoleEntry.message, this.filterText);
    }

    private boolean removeFilter() {
        if (!isFiltering()) {
            return false;
        }
        this.currentEntries = this.entries;
        this.filteredEntries = null;
        return true;
    }

    private void useFilteredFromEntries(LimitSizeEntryList limitSizeEntryList) {
        LimitSizeEntryList filterEntries = filterEntries(limitSizeEntryList);
        this.currentEntries = filterEntries;
        this.filteredEntries = filterEntries;
    }

    public void addEntry(ConsoleEntry consoleEntry) {
        this.entries.addObject(consoleEntry);
        byte b = consoleEntry.type;
        if (b == 3) {
            this.logCount++;
        } else if (b == 2) {
            this.warningCount++;
        } else if (ConsoleLogType.isErrorType(b)) {
            this.errorCount++;
        }
    }

    public void clear() {
        this.entries.clear();
        if (this.filteredEntries != null) {
            this.filteredEntries.clear();
        }
        this.logCount = 0;
        this.warningCount = 0;
        this.errorCount = 0;
    }

    public int count() {
        return this.currentEntries.count();
    }

    public boolean filterEntry(ConsoleEntry consoleEntry) {
        if (!isFiltering()) {
            return true;
        }
        if (!isFiltered(consoleEntry)) {
            return false;
        }
        this.filteredEntries.addObject(consoleEntry);
        return true;
    }

    public ConsoleEntry getEntry(int i) {
        return (ConsoleEntry) this.currentEntries.objectAtIndex(i);
    }

    public int getErrorCount() {
        return this.errorCount;
    }

    public String getFilterText() {
        return this.filterText;
    }

    public int getLogCount() {
        return this.logCount;
    }

    public String getText() {
        StringBuilder stringBuilder = new StringBuilder();
        int count = this.currentEntries.count();
        Iterator it = this.currentEntries.iterator();
        int i = 0;
        while (it.hasNext()) {
            stringBuilder.append(((ConsoleEntry) it.next()).message);
            int i2 = i + 1;
            if (i2 < count) {
                stringBuilder.append('\n');
                i = i2;
            } else {
                i = i2;
            }
        }
        return stringBuilder.toString();
    }

    public int getWarningCount() {
        return this.warningCount;
    }

    public boolean isFilterLogTypeEnabled(int i) {
        return (this.logDisabledTypesMask & ConsoleLogType.getMask(i)) == 0;
    }

    public boolean isFiltering() {
        return this.filteredEntries != null;
    }

    public boolean isOverfloating() {
        return this.currentEntries.isOverfloating();
    }

    public boolean isTrimmed() {
        return this.currentEntries.isTrimmed();
    }

    public int overflowAmount() {
        return this.currentEntries.overflowCount();
    }

    public boolean setFilterByLogType(int i, boolean z) {
        return setFilterByLogTypeMask(ConsoleLogType.getMask(i), z);
    }

    public boolean setFilterByLogTypeMask(int i, boolean z) {
        int i2 = this.logDisabledTypesMask;
        if (z) {
            this.logDisabledTypesMask |= i;
        } else {
            this.logDisabledTypesMask &= i ^ -1;
        }
        return i2 != this.logDisabledTypesMask ? z ? appendFilter() : applyFilter() : false;
    }

    public boolean setFilterByText(String str) {
        if (ObjectUtils.areEqual(this.filterText, str)) {
            return false;
        }
        String str2 = this.filterText;
        this.filterText = str;
        return (StringUtils.length(str) <= StringUtils.length(str2) || !(StringUtils.length(str2) == 0 || StringUtils.hasPrefix(str, str2))) ? applyFilter() : appendFilter();
    }

    public int totalCount() {
        return this.currentEntries.totalCount();
    }

    public void trimHead(int i) {
        this.entries.trimHead(i);
    }

    public int trimmedCount() {
        return this.currentEntries.trimmedCount();
    }
}
