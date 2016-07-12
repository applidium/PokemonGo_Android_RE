package android.support.v4.view;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.lang.reflect.Method;

class ViewCompatEclairMr1 {
    public static final String TAG = "ViewCompat";
    private static Method sChildrenDrawingOrderMethod;

    ViewCompatEclairMr1() {
    }

    public static boolean isOpaque(View view) {
        return view.isOpaque();
    }

    public static void setChildrenDrawingOrderEnabled(ViewGroup viewGroup, boolean z) {
        if (sChildrenDrawingOrderMethod == null) {
            try {
                sChildrenDrawingOrderMethod = ViewGroup.class.getDeclaredMethod("setChildrenDrawingOrderEnabled", new Class[]{Boolean.TYPE});
            } catch (Throwable e) {
                Log.e(TAG, "Unable to find childrenDrawingOrderEnabled", e);
            }
            sChildrenDrawingOrderMethod.setAccessible(true);
        }
        try {
            sChildrenDrawingOrderMethod.invoke(viewGroup, new Object[]{Boolean.valueOf(z)});
        } catch (Throwable e2) {
            Log.e(TAG, "Unable to invoke childrenDrawingOrderEnabled", e2);
        } catch (Throwable e22) {
            Log.e(TAG, "Unable to invoke childrenDrawingOrderEnabled", e22);
        } catch (Throwable e222) {
            Log.e(TAG, "Unable to invoke childrenDrawingOrderEnabled", e222);
        }
    }
}
