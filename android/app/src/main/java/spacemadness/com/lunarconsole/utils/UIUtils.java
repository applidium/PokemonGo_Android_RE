package spacemadness.com.lunarconsole.utils;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.Toast;
import spacemadness.com.lunarconsole.debug.Assert;

public class UIUtils {
    public static float dpToPx(Context context, float f) {
        return getScreenDensity(context) * f;
    }

    public static FrameLayout getRootLayout(Activity activity) {
        ViewGroup rootViewGroup = getRootViewGroup(activity);
        Assert.IsTrue(rootViewGroup instanceof FrameLayout);
        return (FrameLayout) ObjectUtils.as(rootViewGroup, FrameLayout.class);
    }

    public static ViewGroup getRootViewGroup(Activity activity) {
        if (activity == null) {
            throw new NullPointerException("Activity is null");
        }
        View findViewById = activity.getWindow().findViewById(16908290);
        Assert.IsTrue(findViewById instanceof ViewGroup);
        return (ViewGroup) ObjectUtils.as(findViewById, ViewGroup.class);
    }

    private static float getScreenDensity(Context context) {
        return context.getResources().getDisplayMetrics().density;
    }

    public static float pxToDp(Context context, float f) {
        return f / getScreenDensity(context);
    }

    public static void showToast(Context context, String str) {
        Assert.IsNotNull(context);
        if (context != null) {
            Toast.makeText(context, str, 0).show();
        }
    }
}
