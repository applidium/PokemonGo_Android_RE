package android.support.v4.view;

import android.view.ViewConfiguration;

class ViewConfigurationCompatFroyo {
    ViewConfigurationCompatFroyo() {
    }

    public static int getScaledPagingTouchSlop(ViewConfiguration viewConfiguration) {
        return viewConfiguration.getScaledPagingTouchSlop();
    }
}
