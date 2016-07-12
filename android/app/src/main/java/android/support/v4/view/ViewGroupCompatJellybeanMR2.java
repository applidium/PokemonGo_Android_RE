package android.support.v4.view;

import android.view.ViewGroup;

class ViewGroupCompatJellybeanMR2 {
    ViewGroupCompatJellybeanMR2() {
    }

    public static int getLayoutMode(ViewGroup viewGroup) {
        return viewGroup.getLayoutMode();
    }

    public static void setLayoutMode(ViewGroup viewGroup, int i) {
        viewGroup.setLayoutMode(i);
    }
}
