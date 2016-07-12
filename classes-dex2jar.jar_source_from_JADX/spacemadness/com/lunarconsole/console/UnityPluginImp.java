package spacemadness.com.lunarconsole.console;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import com.unity3d.player.UnityPlayer;
import java.lang.ref.WeakReference;
import spacemadness.com.lunarconsole.core.LunarConsoleException;
import spacemadness.com.lunarconsole.utils.UIUtils;

public class UnityPluginImp implements ConsolePluginImp {
    private final WeakReference<UnityPlayer> playerRef;

    public UnityPluginImp(Activity activity) {
        UnityPlayer resolveUnityPlayerInstance = resolveUnityPlayerInstance(activity);
        if (resolveUnityPlayerInstance == null) {
            throw new LunarConsoleException("Can't initialize plugin: UnityPlayer instance not resolved");
        }
        this.playerRef = new WeakReference(resolveUnityPlayerInstance);
    }

    private UnityPlayer getPlayer() {
        return (UnityPlayer) this.playerRef.get();
    }

    private static UnityPlayer resolveUnityPlayerInstance(Activity activity) {
        return resolveUnityPlayerInstance(UIUtils.getRootViewGroup(activity));
    }

    private static UnityPlayer resolveUnityPlayerInstance(ViewGroup viewGroup) {
        if (viewGroup instanceof UnityPlayer) {
            return (UnityPlayer) viewGroup;
        }
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof UnityPlayer) {
                return (UnityPlayer) childAt;
            }
            if (childAt instanceof ViewGroup) {
                UnityPlayer resolveUnityPlayerInstance = resolveUnityPlayerInstance((ViewGroup) childAt);
                if (resolveUnityPlayerInstance != null) {
                    return resolveUnityPlayerInstance;
                }
            }
        }
        return null;
    }

    public View getTouchRecepientView() {
        return getPlayer();
    }
}
