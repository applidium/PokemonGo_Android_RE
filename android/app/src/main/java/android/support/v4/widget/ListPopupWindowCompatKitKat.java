package android.support.v4.widget;

import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.ListPopupWindow;

class ListPopupWindowCompatKitKat {
    ListPopupWindowCompatKitKat() {
    }

    public static OnTouchListener createDragToOpenListener(Object obj, View view) {
        return ((ListPopupWindow) obj).createDragToOpenListener(view);
    }
}
