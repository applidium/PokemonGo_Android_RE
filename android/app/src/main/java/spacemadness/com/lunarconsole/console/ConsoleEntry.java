package spacemadness.com.lunarconsole.console;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import spacemadness.com.lunarconsole.C1401R;

public class ConsoleEntry {
    private static final int[] LOG_ENTRY_ICON_RES_LOOKUP;
    public int index;
    public final String message;
    public final String stackTrace;
    public final byte type;

    public static class ViewHolder extends spacemadness.com.lunarconsole.console.ConsoleAdapter.ViewHolder<ConsoleEntry> {
        private final ImageView iconView;
        private final View layout;
        private final TextView messageView;

        public ViewHolder(View view) {
            super(view);
            this.layout = view.findViewById(C1401R.id.lunar_console_log_entry_layout);
            this.iconView = (ImageView) view.findViewById(C1401R.id.lunar_console_log_entry_icon);
            this.messageView = (TextView) view.findViewById(C1401R.id.lunar_console_log_entry_message);
        }

        public void onBindViewHolder(ConsoleEntry consoleEntry) {
            Context context = getContext();
            this.layout.setBackgroundColor(consoleEntry.getBackgroundColor(context));
            this.iconView.setImageDrawable(consoleEntry.getIconDrawable(context));
            this.messageView.setText(consoleEntry.message);
        }
    }

    static {
        LOG_ENTRY_ICON_RES_LOOKUP = new int[5];
        LOG_ENTRY_ICON_RES_LOOKUP[0] = C1401R.drawable.lunar_console_icon_log_error;
        LOG_ENTRY_ICON_RES_LOOKUP[1] = C1401R.drawable.lunar_console_icon_log_error;
        LOG_ENTRY_ICON_RES_LOOKUP[2] = C1401R.drawable.lunar_console_icon_log_warning;
        LOG_ENTRY_ICON_RES_LOOKUP[3] = C1401R.drawable.lunar_console_icon_log;
        LOG_ENTRY_ICON_RES_LOOKUP[4] = C1401R.drawable.lunar_console_icon_log_error;
    }

    public ConsoleEntry(byte b, String str) {
        this(b, str, null);
    }

    public ConsoleEntry(byte b, String str, String str2) {
        this.type = b;
        this.message = str;
        this.stackTrace = str2;
    }

    private int getIconResId(int i) {
        return (i < 0 || i >= LOG_ENTRY_ICON_RES_LOOKUP.length) ? C1401R.drawable.lunar_console_icon_log : LOG_ENTRY_ICON_RES_LOOKUP[i];
    }

    public int getBackgroundColor(Context context) {
        return context.getResources().getColor(this.index % 2 == 0 ? C1401R.color.lunar_console_color_cell_background_dark : C1401R.color.lunar_console_color_cell_background_light);
    }

    public Drawable getIconDrawable(Context context) {
        return context.getResources().getDrawable(getIconResId(this.type));
    }

    public boolean hasStackTrace() {
        return this.stackTrace != null && this.stackTrace.length() > 0;
    }
}
