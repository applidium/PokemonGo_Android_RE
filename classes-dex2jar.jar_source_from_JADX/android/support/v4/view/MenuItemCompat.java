package android.support.v4.view;

import android.os.Build.VERSION;
import android.support.v4.internal.view.SupportMenuItem;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;

public class MenuItemCompat {
    static final MenuVersionImpl IMPL;
    public static final int SHOW_AS_ACTION_ALWAYS = 2;
    public static final int SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW = 8;
    public static final int SHOW_AS_ACTION_IF_ROOM = 1;
    public static final int SHOW_AS_ACTION_NEVER = 0;
    public static final int SHOW_AS_ACTION_WITH_TEXT = 4;
    private static final String TAG = "MenuItemCompat";

    interface MenuVersionImpl {
        boolean collapseActionView(MenuItem menuItem);

        boolean expandActionView(MenuItem menuItem);

        View getActionView(MenuItem menuItem);

        boolean isActionViewExpanded(MenuItem menuItem);

        MenuItem setActionView(MenuItem menuItem, int i);

        MenuItem setActionView(MenuItem menuItem, View view);

        MenuItem setOnActionExpandListener(MenuItem menuItem, OnActionExpandListener onActionExpandListener);

        void setShowAsAction(MenuItem menuItem, int i);
    }

    static class BaseMenuVersionImpl implements MenuVersionImpl {
        BaseMenuVersionImpl() {
        }

        public boolean collapseActionView(MenuItem menuItem) {
            return false;
        }

        public boolean expandActionView(MenuItem menuItem) {
            return false;
        }

        public View getActionView(MenuItem menuItem) {
            return null;
        }

        public boolean isActionViewExpanded(MenuItem menuItem) {
            return false;
        }

        public MenuItem setActionView(MenuItem menuItem, int i) {
            return menuItem;
        }

        public MenuItem setActionView(MenuItem menuItem, View view) {
            return menuItem;
        }

        public MenuItem setOnActionExpandListener(MenuItem menuItem, OnActionExpandListener onActionExpandListener) {
            return menuItem;
        }

        public void setShowAsAction(MenuItem menuItem, int i) {
        }
    }

    static class HoneycombMenuVersionImpl implements MenuVersionImpl {
        HoneycombMenuVersionImpl() {
        }

        public boolean collapseActionView(MenuItem menuItem) {
            return false;
        }

        public boolean expandActionView(MenuItem menuItem) {
            return false;
        }

        public View getActionView(MenuItem menuItem) {
            return MenuItemCompatHoneycomb.getActionView(menuItem);
        }

        public boolean isActionViewExpanded(MenuItem menuItem) {
            return false;
        }

        public MenuItem setActionView(MenuItem menuItem, int i) {
            return MenuItemCompatHoneycomb.setActionView(menuItem, i);
        }

        public MenuItem setActionView(MenuItem menuItem, View view) {
            return MenuItemCompatHoneycomb.setActionView(menuItem, view);
        }

        public MenuItem setOnActionExpandListener(MenuItem menuItem, OnActionExpandListener onActionExpandListener) {
            return menuItem;
        }

        public void setShowAsAction(MenuItem menuItem, int i) {
            MenuItemCompatHoneycomb.setShowAsAction(menuItem, i);
        }
    }

    static class IcsMenuVersionImpl extends HoneycombMenuVersionImpl {

        /* renamed from: android.support.v4.view.MenuItemCompat.IcsMenuVersionImpl.1 */
        class C00831 implements SupportActionExpandProxy {
            final /* synthetic */ OnActionExpandListener val$listener;

            C00831(OnActionExpandListener onActionExpandListener) {
                this.val$listener = onActionExpandListener;
            }

            public boolean onMenuItemActionCollapse(MenuItem menuItem) {
                return this.val$listener.onMenuItemActionCollapse(menuItem);
            }

            public boolean onMenuItemActionExpand(MenuItem menuItem) {
                return this.val$listener.onMenuItemActionExpand(menuItem);
            }
        }

        IcsMenuVersionImpl() {
        }

        public boolean collapseActionView(MenuItem menuItem) {
            return MenuItemCompatIcs.collapseActionView(menuItem);
        }

        public boolean expandActionView(MenuItem menuItem) {
            return MenuItemCompatIcs.expandActionView(menuItem);
        }

        public boolean isActionViewExpanded(MenuItem menuItem) {
            return MenuItemCompatIcs.isActionViewExpanded(menuItem);
        }

        public MenuItem setOnActionExpandListener(MenuItem menuItem, OnActionExpandListener onActionExpandListener) {
            return onActionExpandListener == null ? MenuItemCompatIcs.setOnActionExpandListener(menuItem, null) : MenuItemCompatIcs.setOnActionExpandListener(menuItem, new C00831(onActionExpandListener));
        }
    }

    public interface OnActionExpandListener {
        boolean onMenuItemActionCollapse(MenuItem menuItem);

        boolean onMenuItemActionExpand(MenuItem menuItem);
    }

    static {
        int i = VERSION.SDK_INT;
        if (i >= 14) {
            IMPL = new IcsMenuVersionImpl();
        } else if (i >= 11) {
            IMPL = new HoneycombMenuVersionImpl();
        } else {
            IMPL = new BaseMenuVersionImpl();
        }
    }

    public static boolean collapseActionView(MenuItem menuItem) {
        return menuItem instanceof SupportMenuItem ? ((SupportMenuItem) menuItem).collapseActionView() : IMPL.collapseActionView(menuItem);
    }

    public static boolean expandActionView(MenuItem menuItem) {
        return menuItem instanceof SupportMenuItem ? ((SupportMenuItem) menuItem).expandActionView() : IMPL.expandActionView(menuItem);
    }

    public static ActionProvider getActionProvider(MenuItem menuItem) {
        if (menuItem instanceof SupportMenuItem) {
            return ((SupportMenuItem) menuItem).getSupportActionProvider();
        }
        Log.w(TAG, "getActionProvider: item does not implement SupportMenuItem; returning null");
        return null;
    }

    public static View getActionView(MenuItem menuItem) {
        return menuItem instanceof SupportMenuItem ? ((SupportMenuItem) menuItem).getActionView() : IMPL.getActionView(menuItem);
    }

    public static boolean isActionViewExpanded(MenuItem menuItem) {
        return menuItem instanceof SupportMenuItem ? ((SupportMenuItem) menuItem).isActionViewExpanded() : IMPL.isActionViewExpanded(menuItem);
    }

    public static MenuItem setActionProvider(MenuItem menuItem, ActionProvider actionProvider) {
        if (menuItem instanceof SupportMenuItem) {
            return ((SupportMenuItem) menuItem).setSupportActionProvider(actionProvider);
        }
        Log.w(TAG, "setActionProvider: item does not implement SupportMenuItem; ignoring");
        return menuItem;
    }

    public static MenuItem setActionView(MenuItem menuItem, int i) {
        return menuItem instanceof SupportMenuItem ? ((SupportMenuItem) menuItem).setActionView(i) : IMPL.setActionView(menuItem, i);
    }

    public static MenuItem setActionView(MenuItem menuItem, View view) {
        return menuItem instanceof SupportMenuItem ? ((SupportMenuItem) menuItem).setActionView(view) : IMPL.setActionView(menuItem, view);
    }

    public static MenuItem setOnActionExpandListener(MenuItem menuItem, OnActionExpandListener onActionExpandListener) {
        return menuItem instanceof SupportMenuItem ? ((SupportMenuItem) menuItem).setSupportOnActionExpandListener(onActionExpandListener) : IMPL.setOnActionExpandListener(menuItem, onActionExpandListener);
    }

    public static void setShowAsAction(MenuItem menuItem, int i) {
        if (menuItem instanceof SupportMenuItem) {
            ((SupportMenuItem) menuItem).setShowAsAction(i);
        } else {
            IMPL.setShowAsAction(menuItem, i);
        }
    }
}
