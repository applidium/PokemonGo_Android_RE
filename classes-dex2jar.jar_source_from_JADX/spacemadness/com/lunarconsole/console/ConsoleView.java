package spacemadness.com.lunarconsole.console;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.support.v4.view.ViewCompat;
import android.text.ClipboardManager;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import spacemadness.com.lunarconsole.C1401R;
import spacemadness.com.lunarconsole.core.Destroyable;
import spacemadness.com.lunarconsole.debug.Log;
import spacemadness.com.lunarconsole.debug.Tags;
import spacemadness.com.lunarconsole.ui.LogTypeButton;
import spacemadness.com.lunarconsole.ui.ToggleButton;
import spacemadness.com.lunarconsole.ui.ToggleButton.OnStateChangeListener;
import spacemadness.com.lunarconsole.ui.ToggleImageButton;
import spacemadness.com.lunarconsole.utils.StackTrace;
import spacemadness.com.lunarconsole.utils.StringUtils;
import spacemadness.com.lunarconsole.utils.ThreadUtils;
import spacemadness.com.lunarconsole.utils.UIUtils;

public class ConsoleView extends LinearLayout implements Destroyable, LunarConsoleListener, OnStateChangeListener {
    private final Console console;
    private final LogTypeButton errorButton;
    private final ListView listView;
    private Listener listener;
    private final LogTypeButton logButton;
    private final TextView overflowText;
    private final ConsoleAdapter recyclerViewAdapter;
    private final View rootView;
    private ToggleImageButton scrollLockButton;
    private boolean scrollLocked;
    private boolean softKeyboardVisible;
    private final LogTypeButton warningButton;

    public interface Listener {
        void onClose(ConsoleView consoleView);
    }

    /* renamed from: spacemadness.com.lunarconsole.console.ConsoleView.1 */
    class C14131 implements OnTouchListener {
        C14131() {
        }

        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    /* renamed from: spacemadness.com.lunarconsole.console.ConsoleView.2 */
    class C14162 implements OnItemClickListener {
        final /* synthetic */ Console val$console;

        /* renamed from: spacemadness.com.lunarconsole.console.ConsoleView.2.1 */
        class C14141 implements Runnable {
            final /* synthetic */ Context val$ctx;
            final /* synthetic */ ConsoleEntry val$entry;
            final /* synthetic */ View val$view;

            C14141(View view, ConsoleEntry consoleEntry, Context context) {
                this.val$view = view;
                this.val$entry = consoleEntry;
                this.val$ctx = context;
            }

            public void run() {
                try {
                    this.val$view.setBackgroundColor(this.val$entry.getBackgroundColor(this.val$ctx));
                } catch (Throwable e) {
                    Log.m862e(e, "Error while settings entry background color", new Object[0]);
                }
            }
        }

        /* renamed from: spacemadness.com.lunarconsole.console.ConsoleView.2.2 */
        class C14152 implements OnClickListener {
            final /* synthetic */ ConsoleEntry val$entry;
            final /* synthetic */ String val$message;
            final /* synthetic */ String val$stackTrace;

            C14152(String str, ConsoleEntry consoleEntry, String str2) {
                this.val$message = str;
                this.val$entry = consoleEntry;
                this.val$stackTrace = str2;
            }

            public void onClick(DialogInterface dialogInterface, int i) {
                String str = this.val$message;
                if (this.val$entry.hasStackTrace()) {
                    str = str + "\n\n" + this.val$stackTrace;
                }
                ConsoleView.this.copyToClipboard(str);
            }
        }

        C14162(Console console) {
            this.val$console = console;
        }

        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            Context context = ConsoleView.this.getContext();
            ConsoleEntry entry = this.val$console.getEntry(i);
            view.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
            ThreadUtils.runOnUIThread(new C14141(view, entry, context), 200);
            Builder builder = new Builder(context);
            View inflate = LayoutInflater.from(context).inflate(C1401R.layout.lunar_layout_log_details_dialog, null);
            ImageView imageView = (ImageView) inflate.findViewById(C1401R.id.lunar_console_log_details_icon);
            TextView textView = (TextView) inflate.findViewById(C1401R.id.lunar_console_log_details_message);
            TextView textView2 = (TextView) inflate.findViewById(C1401R.id.lunar_console_log_details_stacktrace);
            Object obj = entry.message;
            Object optimize = entry.hasStackTrace() ? StackTrace.optimize(entry.stackTrace) : ConsoleView.this.getResources().getString(C1401R.string.lunar_console_log_details_dialog_no_stacktrace_warning);
            textView.setText(obj);
            textView2.setText(optimize);
            imageView.setImageDrawable(entry.getIconDrawable(context));
            builder.setView(inflate);
            builder.setPositiveButton(C1401R.string.lunar_console_log_details_dialog_button_copy_to_clipboard, new C14152(obj, entry, optimize));
            builder.create().show();
        }
    }

    /* renamed from: spacemadness.com.lunarconsole.console.ConsoleView.3 */
    class C14173 implements OnTouchListener {
        C14173() {
        }

        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (ConsoleView.this.scrollLocked && motionEvent.getAction() == 0) {
                ConsoleView.this.scrollLockButton.setOn(false);
            }
            return false;
        }
    }

    /* renamed from: spacemadness.com.lunarconsole.console.ConsoleView.4 */
    class C14184 implements TextWatcher {
        C14184() {
        }

        public void afterTextChanged(Editable editable) {
            ConsoleView.this.filterByText(editable.toString());
        }

        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* renamed from: spacemadness.com.lunarconsole.console.ConsoleView.5 */
    class C14195 implements View.OnClickListener {
        C14195() {
        }

        public void onClick(View view) {
            ConsoleView.this.softKeyboardVisible = true;
        }
    }

    /* renamed from: spacemadness.com.lunarconsole.console.ConsoleView.6 */
    class C14206 implements OnEditorActionListener {
        C14206() {
        }

        public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
            if (i != 3) {
                return false;
            }
            ConsoleView.this.hideSoftKeyboard();
            return true;
        }
    }

    /* renamed from: spacemadness.com.lunarconsole.console.ConsoleView.7 */
    class C14217 implements View.OnClickListener {
        C14217() {
        }

        public void onClick(View view) {
            ConsoleView.this.clearConsole();
        }
    }

    /* renamed from: spacemadness.com.lunarconsole.console.ConsoleView.8 */
    class C14228 implements ToggleImageButton.OnStateChangeListener {
        C14228() {
        }

        public void onStateChanged(ToggleImageButton toggleImageButton) {
            ConsoleView.this.toggleScrollLock();
        }
    }

    /* renamed from: spacemadness.com.lunarconsole.console.ConsoleView.9 */
    class C14239 implements View.OnClickListener {
        C14239() {
        }

        public void onClick(View view) {
            ConsoleView.this.copyConsoleOutputToClipboard();
        }
    }

    public ConsoleView(Context context, Console console) {
        super(context);
        if (console == null) {
            throw new NullPointerException("Console is null");
        }
        this.console = console;
        this.console.setConsoleListener(this);
        this.scrollLocked = ConsoleViewState.scrollLocked;
        setOnTouchListener(new C14131());
        this.rootView = LayoutInflater.from(context).inflate(C1401R.layout.lunar_layout_console, this, false);
        addView(this.rootView, new LayoutParams(-1, -1));
        this.recyclerViewAdapter = new ConsoleAdapter(console);
        LinearLayout linearLayout = (LinearLayout) findExistingViewById(C1401R.id.lunar_console_recycler_view_container);
        this.listView = new ListView(context);
        this.listView.setDivider(null);
        this.listView.setDividerHeight(0);
        this.listView.setAdapter(this.recyclerViewAdapter);
        this.listView.setOverScrollMode(2);
        this.listView.setScrollingCacheEnabled(false);
        this.listView.setOnItemClickListener(new C14162(console));
        this.listView.setOnTouchListener(new C14173());
        linearLayout.addView(this.listView, new LayoutParams(-1, -1));
        setupFilterTextEdit();
        this.logButton = (LogTypeButton) findExistingViewById(C1401R.id.lunar_console_log_button);
        this.warningButton = (LogTypeButton) findExistingViewById(C1401R.id.lunar_console_warning_button);
        this.errorButton = (LogTypeButton) findExistingViewById(C1401R.id.lunar_console_error_button);
        setupLogTypeButtons();
        setupOperationsButtons();
        setupFakeStatusBar();
        this.overflowText = (TextView) findExistingViewById(C1401R.id.lunar_console_text_overflow);
        reloadData();
    }

    private void clearConsole() {
        this.console.clear();
    }

    private boolean copyConsoleOutputToClipboard() {
        return copyToClipboard(this.console.getText());
    }

    private boolean copyToClipboard(String str) {
        try {
            ((ClipboardManager) getContext().getSystemService("clipboard")).setText(str);
            UIUtils.showToast(getContext(), "Copied to clipboard");
            return true;
        } catch (Throwable e) {
            Log.m862e(e, "Error to copy text to clipboard", new Object[0]);
            return false;
        }
    }

    private void filterByText(String str) {
        if (this.console.entries().setFilterByText(str)) {
            reloadData();
        }
    }

    private <T extends View> T findExistingViewById(int i) throws ClassCastException {
        return findExistingViewById(this.rootView, i);
    }

    private <T extends View> T findExistingViewById(View view, int i) throws ClassCastException {
        T findViewById = view.findViewById(i);
        if (findViewById != null) {
            return findViewById;
        }
        throw new IllegalArgumentException("View with id " + i + " not found");
    }

    private void hideSoftKeyboard() {
        this.softKeyboardVisible = false;
        ((InputMethodManager) getContext().getSystemService("input_method")).hideSoftInputFromWindow(getWindowToken(), 0);
    }

    private void notifyClose() {
        this.softKeyboardVisible = false;
        if (this.listener != null) {
            this.listener.onClose(this);
        }
    }

    private void reloadData() {
        this.recyclerViewAdapter.notifyDataSetChanged();
        updateOverflowText();
    }

    private void scrollToBottom(Console console) {
        if (this.scrollLocked) {
            int entryCount = console.getEntryCount();
            if (entryCount > 0) {
                this.listView.setSelection(entryCount - 1);
            }
        }
    }

    private void scrollToTop(Console console) {
        if (console.getEntryCount() > 0) {
            this.listView.setSelection(0);
        }
    }

    private boolean sendConsoleOutputByEmail() {
        try {
            String TryFormat = StringUtils.TryFormat("'%s' console log", getContext().getPackageName());
            String text = this.console.getText();
            Intent intent = new Intent("android.intent.action.SENDTO");
            intent.setData(Uri.parse("mailto:"));
            intent.putExtra("android.intent.extra.SUBJECT", TryFormat);
            intent.putExtra("android.intent.extra.TEXT", text);
            if (intent.resolveActivity(getContext().getPackageManager()) != null) {
                getContext().startActivity(intent);
                return true;
            }
            UIUtils.showToast(getContext(), "Can't send email");
            return false;
        } catch (Throwable e) {
            Log.m862e(e, "Error while trying to send console output by email", new Object[0]);
            return false;
        }
    }

    private void setFilterByLogTypeMask(int i, boolean z) {
        if (this.console.entries().setFilterByLogTypeMask(i, z)) {
            reloadData();
        }
    }

    private void setOnClickListener(int i, View.OnClickListener onClickListener) {
        findExistingViewById(i).setOnClickListener(onClickListener);
    }

    private void setupFakeStatusBar() {
        CharSequence format = String.format(getResources().getString(C1401R.string.lunar_console_title_fake_status_bar), new Object[]{ConsolePlugin.getVersion()});
        TextView textView = (TextView) findExistingViewById(C1401R.id.lunar_console_fake_status_bar);
        textView.setText(format);
        textView.setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {
                ConsoleView.this.scrollLockButton.setOn(false);
                ConsoleView.this.scrollToTop(ConsoleView.this.console);
            }
        });
    }

    private EditText setupFilterTextEdit() {
        EditText editText = (EditText) findExistingViewById(C1401R.id.lunar_console_text_edit_filter);
        Object filterText = this.console.entries().getFilterText();
        if (!StringUtils.IsNullOrEmpty(filterText)) {
            editText.setText(filterText);
            editText.setSelection(filterText.length());
        }
        editText.addTextChangedListener(new C14184());
        editText.setOnClickListener(new C14195());
        editText.setOnEditorActionListener(new C14206());
        return editText;
    }

    private void setupLogTypeButton(LogTypeButton logTypeButton, int i) {
        logTypeButton.setOn(this.console.entries().isFilterLogTypeEnabled(i));
        logTypeButton.setOnStateChangeListener(this);
    }

    private void setupLogTypeButtons() {
        setupLogTypeButton(this.logButton, 3);
        setupLogTypeButton(this.warningButton, 2);
        setupLogTypeButton(this.errorButton, 0);
        updateLogButtons();
    }

    private void setupOperationsButtons() {
        setOnClickListener(C1401R.id.lunar_console_button_clear, new C14217());
        this.scrollLockButton = (ToggleImageButton) this.rootView.findViewById(C1401R.id.lunar_console_button_lock);
        Resources resources = getContext().getResources();
        this.scrollLockButton.setOnDrawable(resources.getDrawable(C1401R.drawable.lunar_console_icon_button_lock));
        this.scrollLockButton.setOffDrawable(resources.getDrawable(C1401R.drawable.lunar_console_icon_button_unlock));
        this.scrollLockButton.setOn(this.scrollLocked);
        this.scrollLockButton.setOnStateChangeListener(new C14228());
        setOnClickListener(C1401R.id.lunar_console_button_copy, new C14239());
        setOnClickListener(C1401R.id.lunar_console_button_email, new View.OnClickListener() {
            public void onClick(View view) {
                ConsoleView.this.sendConsoleOutputByEmail();
            }
        });
        setOnClickListener(C1401R.id.lunar_console_button_close, new View.OnClickListener() {
            public void onClick(View view) {
                ConsoleView.this.notifyClose();
            }
        });
    }

    private void toggleScrollLock() {
        this.scrollLocked = !this.scrollLocked;
        ConsoleViewState.scrollLocked = this.scrollLocked;
        scrollToBottom(this.console);
    }

    private void updateLogButtons() {
        ConsoleEntryList entries = this.console.entries();
        this.logButton.setCount(entries.getLogCount());
        this.warningButton.setCount(entries.getWarningCount());
        this.errorButton.setCount(entries.getErrorCount());
    }

    private void updateOverflowText() {
        if (this.console.trimmedCount() > 0) {
            this.overflowText.setVisibility(0);
            this.overflowText.setText(getResources().getString(C1401R.string.lunar_console_overflow_warning_text, new Object[]{Integer.valueOf(r0)}));
            return;
        }
        this.overflowText.setVisibility(8);
    }

    public void destroy() {
        Log.m860d(Tags.CONSOLE, "Destroy console", new Object[0]);
        this.console.setConsoleListener(null);
        setListener(null);
    }

    public boolean dispatchKeyEventPreIme(KeyEvent keyEvent) {
        if (keyEvent.getKeyCode() != 4) {
            return super.dispatchKeyEventPreIme(keyEvent);
        }
        if (keyEvent.getAction() != 1) {
            return true;
        }
        if (this.softKeyboardVisible) {
            hideSoftKeyboard();
            return true;
        }
        notifyClose();
        return true;
    }

    public Listener getListener() {
        return this.listener;
    }

    public void onAddEntry(Console console, ConsoleEntry consoleEntry, boolean z) {
        if (z) {
            this.recyclerViewAdapter.notifyDataSetChanged();
            scrollToBottom(console);
        }
        updateLogButtons();
    }

    public void onClearEntries(Console console) {
        reloadData();
        updateLogButtons();
    }

    public void onRemoveEntries(Console console, int i, int i2) {
        this.recyclerViewAdapter.notifyDataSetChanged();
        scrollToBottom(console);
        updateLogButtons();
        updateOverflowText();
    }

    public void onStateChanged(ToggleButton toggleButton) {
        boolean z = false;
        int mask = toggleButton == this.logButton ? ConsoleLogType.getMask(3) | 0 : toggleButton == this.warningButton ? ConsoleLogType.getMask(2) | 0 : toggleButton == this.errorButton ? ((ConsoleLogType.getMask(4) | ConsoleLogType.getMask(0)) | ConsoleLogType.getMask(1)) | 0 : 0;
        if (!toggleButton.isOn()) {
            z = true;
        }
        setFilterByLogTypeMask(mask, z);
    }

    public void setListener(Listener listener) {
        this.listener = listener;
    }
}
