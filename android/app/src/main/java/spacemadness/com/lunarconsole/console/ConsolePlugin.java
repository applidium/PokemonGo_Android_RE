package spacemadness.com.lunarconsole.console;

import android.app.Activity;
import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.unity3d.player.UnityPlayer;
import java.lang.ref.WeakReference;
import java.util.List;
import spacemadness.com.lunarconsole.C1401R;
import spacemadness.com.lunarconsole.console.Console.Options;
import spacemadness.com.lunarconsole.console.ConsoleEntryDispatcher.OnDispatchListener;
import spacemadness.com.lunarconsole.console.ConsoleView.Listener;
import spacemadness.com.lunarconsole.core.Destroyable;
import spacemadness.com.lunarconsole.debug.Log;
import spacemadness.com.lunarconsole.debug.Tags;
import spacemadness.com.lunarconsole.ui.GestureRecognizer;
import spacemadness.com.lunarconsole.ui.GestureRecognizer.OnGestureListener;
import spacemadness.com.lunarconsole.ui.SwipeGestureRecognizer;
import spacemadness.com.lunarconsole.ui.SwipeGestureRecognizer.SwipeDirection;
import spacemadness.com.lunarconsole.utils.ThreadUtils;
import spacemadness.com.lunarconsole.utils.UIUtils;

public class ConsolePlugin implements Destroyable, Listener, WarningView.Listener {
    private static final ConsoleEntryDispatcher entryDispatcher;
    private static ConsolePlugin instance;
    private final WeakReference<Activity> activityRef;
    private final Console console;
    private ConsoleView consoleView;
    private final GestureRecognizer gestureDetector;
    private final ConsolePluginImp pluginImp;
    private final String version;
    private WarningView warningView;

    /* renamed from: spacemadness.com.lunarconsole.console.ConsolePlugin.1 */
    static final class C14041 implements OnDispatchListener {
        C14041() {
        }

        public void onDispatchEntries(List<ConsoleEntry> list) {
            if (ConsolePlugin.instance != null) {
                ConsolePlugin.instance.logEntries(list);
            } else {
                Log.m861e("Can't log message: plugin instance is not initialized", new Object[0]);
            }
        }
    }

    /* renamed from: spacemadness.com.lunarconsole.console.ConsolePlugin.2 */
    static final class C14052 implements Runnable {
        final /* synthetic */ Activity val$activity;
        final /* synthetic */ int val$capacity;
        final /* synthetic */ ConsolePluginImp val$pluginImp;
        final /* synthetic */ int val$trim;
        final /* synthetic */ String val$version;

        C14052(Activity activity, String str, int i, int i2, ConsolePluginImp consolePluginImp) {
            this.val$activity = activity;
            this.val$version = str;
            this.val$capacity = i;
            this.val$trim = i2;
            this.val$pluginImp = consolePluginImp;
        }

        public void run() {
            ConsolePlugin.init0(this.val$activity, this.val$version, this.val$capacity, this.val$trim, this.val$pluginImp);
        }
    }

    /* renamed from: spacemadness.com.lunarconsole.console.ConsolePlugin.3 */
    static final class C14063 implements Runnable {
        C14063() {
        }

        public void run() {
            ConsolePlugin.shutdown0();
        }
    }

    /* renamed from: spacemadness.com.lunarconsole.console.ConsolePlugin.4 */
    static final class C14074 implements Runnable {
        C14074() {
        }

        public void run() {
            ConsolePlugin.show0();
        }
    }

    /* renamed from: spacemadness.com.lunarconsole.console.ConsolePlugin.5 */
    static final class C14085 implements Runnable {
        C14085() {
        }

        public void run() {
            ConsolePlugin.hide0();
        }
    }

    /* renamed from: spacemadness.com.lunarconsole.console.ConsolePlugin.6 */
    static final class C14096 implements Runnable {
        C14096() {
        }

        public void run() {
            ConsolePlugin.clear0();
        }
    }

    /* renamed from: spacemadness.com.lunarconsole.console.ConsolePlugin.7 */
    class C14107 implements OnGestureListener {
        C14107() {
        }

        public void onGesture(GestureRecognizer gestureRecognizer) {
            ConsolePlugin.this.showConsole();
        }
    }

    /* renamed from: spacemadness.com.lunarconsole.console.ConsolePlugin.8 */
    class C14118 implements AnimationListener {
        C14118() {
        }

        public void onAnimationEnd(Animation animation) {
            ConsolePlugin.this.removeConsoleView();
        }

        public void onAnimationRepeat(Animation animation) {
        }

        public void onAnimationStart(Animation animation) {
        }
    }

    /* renamed from: spacemadness.com.lunarconsole.console.ConsolePlugin.9 */
    class C14129 implements OnTouchListener {
        C14129() {
        }

        public boolean onTouch(View view, MotionEvent motionEvent) {
            ConsolePlugin.this.gestureDetector.onTouchEvent(motionEvent);
            return false;
        }
    }

    static {
        entryDispatcher = new ConsoleEntryDispatcher(new C14041());
    }

    private ConsolePlugin(Activity activity, String str, int i, int i2, ConsolePluginImp consolePluginImp) {
        if (activity == null) {
            throw new NullPointerException("Context is null");
        } else if (str == null) {
            throw new NullPointerException("Version is null");
        } else {
            this.version = str;
            this.pluginImp = consolePluginImp;
            Options options = new Options(i);
            options.setTrimCount(i2);
            this.console = new Console(options);
            this.activityRef = new WeakReference(activity);
            this.gestureDetector = new SwipeGestureRecognizer(SwipeDirection.Down, UIUtils.dpToPx(activity, 100.0f));
            this.gestureDetector.setListener(new C14107());
        }
    }

    public static void clear() {
        if (ThreadUtils.isRunningOnMainThread()) {
            clear0();
        } else {
            ThreadUtils.runOnUIThread(new C14096());
        }
    }

    private static void clear0() {
        if (instance != null) {
            instance.clearConsole();
        }
    }

    private void clearConsole() {
        try {
            this.console.clear();
        } catch (Throwable e) {
            Log.m862e(e, "Can't clear console", new Object[0]);
        }
    }

    private Activity getActivity() {
        return (Activity) this.activityRef.get();
    }

    public static String getVersion() {
        return instance != null ? instance.version : "?.?.?";
    }

    public static void hide() {
        if (ThreadUtils.isRunningOnMainThread()) {
            hide0();
        } else {
            ThreadUtils.runOnUIThread(new C14085());
        }
    }

    private static void hide0() {
        if (instance != null) {
            instance.hideConsole();
        } else {
            Log.m866w("Can't hide console: instance is not initialized", new Object[0]);
        }
    }

    private boolean hideConsole() {
        try {
            if (this.consoleView == null) {
                return false;
            }
            Log.m860d(Tags.CONSOLE, "Hide console", new Object[0]);
            Context activity = getActivity();
            if (activity != null) {
                Animation loadAnimation = AnimationUtils.loadAnimation(activity, C1401R.anim.lunar_console_slide_out_top);
                loadAnimation.setAnimationListener(new C14118());
                this.consoleView.startAnimation(loadAnimation);
            } else {
                removeConsoleView();
            }
            return true;
        } catch (Throwable e) {
            Log.m862e(e, "Can't hide console", new Object[0]);
            return false;
        }
    }

    private void hideWarning() {
        if (this.warningView != null) {
            Log.m860d(Tags.WARNING_VIEW, "Hide warning", new Object[0]);
            ViewParent parent = this.warningView.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.warningView);
            } else {
                Log.m861e("Can't hide warning view: unexpected parent view " + parent, new Object[0]);
            }
            this.warningView.destroy();
            this.warningView = null;
        }
    }

    public static void init(Activity activity, String str, int i, int i2) {
        init(activity, str, i, i2, new DefaultPluginImp(activity));
    }

    private static void init(Activity activity, String str, int i, int i2, ConsolePluginImp consolePluginImp) {
        if (ThreadUtils.isRunningOnMainThread()) {
            init0(activity, str, i, i2, consolePluginImp);
            return;
        }
        Log.m860d(Tags.PLUGIN, "Tried to initialize plugin on the secondary thread. Scheduling on UI-thread...", new Object[0]);
        ThreadUtils.runOnUIThread(new C14052(activity, str, i, i2, consolePluginImp));
    }

    public static void init(String str, int i, int i2) {
        Activity activity = UnityPlayer.currentActivity;
        init(activity, str, i, i2, new UnityPluginImp(activity));
    }

    private static void init0(Activity activity, String str, int i, int i2, ConsolePluginImp consolePluginImp) {
        try {
            if (instance == null) {
                Log.m860d(Tags.PLUGIN, "Initializing plugin instance (%s): %d", str, Integer.valueOf(i));
                instance = new ConsolePlugin(activity, str, i, i2, consolePluginImp);
                instance.enableGestureRecognition();
                return;
            }
            Log.m866w("Plugin instance already initialized", new Object[0]);
        } catch (Throwable e) {
            Log.m862e(e, "Can't initialize plugin instance", new Object[0]);
        }
    }

    private void logEntries(List<ConsoleEntry> list) {
        for (int i = 0; i < list.size(); i++) {
            ConsoleEntry consoleEntry = (ConsoleEntry) list.get(i);
            this.console.logMessage(consoleEntry);
            if (ConsoleLogType.isErrorType(consoleEntry.type) && !isConsoleShown()) {
                showWarning(consoleEntry.message);
            }
        }
    }

    public static void logMessage(String str, String str2, int i) {
        entryDispatcher.add(new ConsoleEntry((byte) i, str, str2));
    }

    private void removeConsoleView() {
        if (this.consoleView != null) {
            ViewParent parent = this.consoleView.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.consoleView);
            } else {
                Log.m861e("Can't remove console view: unexpected parent " + parent, new Object[0]);
            }
            this.consoleView.destroy();
            this.consoleView = null;
            enableGestureRecognition();
        }
    }

    public static void show() {
        if (ThreadUtils.isRunningOnMainThread()) {
            show0();
        } else {
            ThreadUtils.runOnUIThread(new C14074());
        }
    }

    private static void show0() {
        if (instance != null) {
            instance.showConsole();
        } else {
            Log.m866w("Can't show console: instance is not initialized", new Object[0]);
        }
    }

    private boolean showConsole() {
        try {
            if (this.consoleView == null) {
                Log.m860d(Tags.CONSOLE, "Show console", new Object[0]);
                Context activity = getActivity();
                if (activity == null) {
                    Log.m861e("Can't show console: activity reference is lost", new Object[0]);
                    return false;
                }
                FrameLayout rootLayout = UIUtils.getRootLayout(activity);
                this.consoleView = new ConsoleView(activity, this.console);
                this.consoleView.setListener(this);
                this.consoleView.requestFocus();
                rootLayout.addView(this.consoleView, new LayoutParams(-1, -1));
                this.consoleView.startAnimation(AnimationUtils.loadAnimation(activity, C1401R.anim.lunar_console_slide_in_top));
                disableGestureRecognition();
                return true;
            }
            Log.m866w("Console is show already", new Object[0]);
            return false;
        } catch (Throwable e) {
            Log.m862e(e, "Can't show console", new Object[0]);
            return false;
        }
    }

    private void showWarning(String str) {
        try {
            if (this.warningView == null) {
                Log.m860d(Tags.WARNING_VIEW, "Show warning", new Object[0]);
                Context activity = getActivity();
                if (activity == null) {
                    Log.m861e("Can't show warning: activity reference is lost", new Object[0]);
                    return;
                }
                FrameLayout rootLayout = UIUtils.getRootLayout(activity);
                this.warningView = new WarningView(activity);
                this.warningView.setListener(this);
                rootLayout.addView(this.warningView);
            }
            this.warningView.setMessage(str);
        } catch (Throwable e) {
            Log.m862e(e, "Can't show warning", new Object[0]);
        }
    }

    public static void shutdown() {
        if (ThreadUtils.isRunningOnMainThread()) {
            shutdown0();
            return;
        }
        Log.m860d(Tags.PLUGIN, "Tried to shutdown plugin on the secondary thread. Scheduling on UI-thread...", new Object[0]);
        ThreadUtils.runOnUIThread(new C14063());
    }

    private static void shutdown0() {
        try {
            if (instance != null) {
                instance.destroy();
                instance = null;
            }
        } catch (Throwable e) {
            Log.m862e(e, "Error while shutting down the plugin", new Object[0]);
        }
    }

    public void destroy() {
        disableGestureRecognition();
        this.console.destroy();
        entryDispatcher.cancelAll();
        Log.m860d(Tags.PLUGIN, "Plugin destroyed", new Object[0]);
    }

    public void disableGestureRecognition() {
        Log.m860d(Tags.GESTURES, "Disable gesture recognition", new Object[0]);
        View touchRecepientView = this.pluginImp.getTouchRecepientView();
        if (touchRecepientView != null) {
            touchRecepientView.setOnTouchListener(null);
        } else {
            Log.m866w("Can't disable gesture recognition: touch view is null", new Object[0]);
        }
    }

    public void enableGestureRecognition() {
        Log.m860d(Tags.GESTURES, "Enable gesture recognition", new Object[0]);
        View touchRecepientView = this.pluginImp.getTouchRecepientView();
        if (touchRecepientView == null) {
            Log.m866w("Can't enable gesture recognition: touch view is null", new Object[0]);
        } else {
            touchRecepientView.setOnTouchListener(new C14129());
        }
    }

    public boolean isConsoleShown() {
        return this.consoleView != null;
    }

    public void onClose(ConsoleView consoleView) {
        hideConsole();
    }

    public void onDetailsClick(WarningView warningView) {
        hideWarning();
        showConsole();
    }

    public void onDismissClick(WarningView warningView) {
        hideWarning();
    }
}
