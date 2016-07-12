package spacemadness.com.lunarconsole.console;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;
import spacemadness.com.lunarconsole.core.LunarConsoleException;
import spacemadness.com.lunarconsole.utils.UIUtils;

class DefaultPluginImp implements ConsolePluginImp {
    private final WeakReference<View> rootViewRef;

    public DefaultPluginImp(Activity activity) {
        ViewGroup rootViewGroup = UIUtils.getRootViewGroup(activity);
        if (rootViewGroup == null) {
            throw new LunarConsoleException("Can't initialize plugin: root view not found");
        }
        this.rootViewRef = new WeakReference(rootViewGroup);
    }

    public View getTouchRecepientView() {
        return (View) this.rootViewRef.get();
    }
}
