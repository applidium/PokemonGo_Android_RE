package android.support.v4.widget;

import android.content.ComponentName;
import android.content.Context;
import android.os.Build.VERSION;
import android.view.View;

public class SearchViewCompat {
    private static final SearchViewCompatImpl IMPL;

    public static abstract class OnCloseListenerCompat {
        final Object mListener;

        public OnCloseListenerCompat() {
            this.mListener = SearchViewCompat.IMPL.newOnCloseListener(this);
        }

        public boolean onClose() {
            return false;
        }
    }

    public static abstract class OnQueryTextListenerCompat {
        final Object mListener;

        public OnQueryTextListenerCompat() {
            this.mListener = SearchViewCompat.IMPL.newOnQueryTextListener(this);
        }

        public boolean onQueryTextChange(String str) {
            return false;
        }

        public boolean onQueryTextSubmit(String str) {
            return false;
        }
    }

    interface SearchViewCompatImpl {
        CharSequence getQuery(View view);

        boolean isIconified(View view);

        boolean isQueryRefinementEnabled(View view);

        boolean isSubmitButtonEnabled(View view);

        Object newOnCloseListener(OnCloseListenerCompat onCloseListenerCompat);

        Object newOnQueryTextListener(OnQueryTextListenerCompat onQueryTextListenerCompat);

        View newSearchView(Context context);

        void setIconified(View view, boolean z);

        void setImeOptions(View view, int i);

        void setInputType(View view, int i);

        void setMaxWidth(View view, int i);

        void setOnCloseListener(Object obj, Object obj2);

        void setOnQueryTextListener(Object obj, Object obj2);

        void setQuery(View view, CharSequence charSequence, boolean z);

        void setQueryHint(View view, CharSequence charSequence);

        void setQueryRefinementEnabled(View view, boolean z);

        void setSearchableInfo(View view, ComponentName componentName);

        void setSubmitButtonEnabled(View view, boolean z);
    }

    static class SearchViewCompatStubImpl implements SearchViewCompatImpl {
        SearchViewCompatStubImpl() {
        }

        public CharSequence getQuery(View view) {
            return null;
        }

        public boolean isIconified(View view) {
            return true;
        }

        public boolean isQueryRefinementEnabled(View view) {
            return false;
        }

        public boolean isSubmitButtonEnabled(View view) {
            return false;
        }

        public Object newOnCloseListener(OnCloseListenerCompat onCloseListenerCompat) {
            return null;
        }

        public Object newOnQueryTextListener(OnQueryTextListenerCompat onQueryTextListenerCompat) {
            return null;
        }

        public View newSearchView(Context context) {
            return null;
        }

        public void setIconified(View view, boolean z) {
        }

        public void setImeOptions(View view, int i) {
        }

        public void setInputType(View view, int i) {
        }

        public void setMaxWidth(View view, int i) {
        }

        public void setOnCloseListener(Object obj, Object obj2) {
        }

        public void setOnQueryTextListener(Object obj, Object obj2) {
        }

        public void setQuery(View view, CharSequence charSequence, boolean z) {
        }

        public void setQueryHint(View view, CharSequence charSequence) {
        }

        public void setQueryRefinementEnabled(View view, boolean z) {
        }

        public void setSearchableInfo(View view, ComponentName componentName) {
        }

        public void setSubmitButtonEnabled(View view, boolean z) {
        }
    }

    static class SearchViewCompatHoneycombImpl extends SearchViewCompatStubImpl {

        /* renamed from: android.support.v4.widget.SearchViewCompat.SearchViewCompatHoneycombImpl.1 */
        class C01161 implements OnQueryTextListenerCompatBridge {
            final /* synthetic */ OnQueryTextListenerCompat val$listener;

            C01161(OnQueryTextListenerCompat onQueryTextListenerCompat) {
                this.val$listener = onQueryTextListenerCompat;
            }

            public boolean onQueryTextChange(String str) {
                return this.val$listener.onQueryTextChange(str);
            }

            public boolean onQueryTextSubmit(String str) {
                return this.val$listener.onQueryTextSubmit(str);
            }
        }

        /* renamed from: android.support.v4.widget.SearchViewCompat.SearchViewCompatHoneycombImpl.2 */
        class C01172 implements OnCloseListenerCompatBridge {
            final /* synthetic */ OnCloseListenerCompat val$listener;

            C01172(OnCloseListenerCompat onCloseListenerCompat) {
                this.val$listener = onCloseListenerCompat;
            }

            public boolean onClose() {
                return this.val$listener.onClose();
            }
        }

        SearchViewCompatHoneycombImpl() {
        }

        public CharSequence getQuery(View view) {
            return SearchViewCompatHoneycomb.getQuery(view);
        }

        public boolean isIconified(View view) {
            return SearchViewCompatHoneycomb.isIconified(view);
        }

        public boolean isQueryRefinementEnabled(View view) {
            return SearchViewCompatHoneycomb.isQueryRefinementEnabled(view);
        }

        public boolean isSubmitButtonEnabled(View view) {
            return SearchViewCompatHoneycomb.isSubmitButtonEnabled(view);
        }

        public Object newOnCloseListener(OnCloseListenerCompat onCloseListenerCompat) {
            return SearchViewCompatHoneycomb.newOnCloseListener(new C01172(onCloseListenerCompat));
        }

        public Object newOnQueryTextListener(OnQueryTextListenerCompat onQueryTextListenerCompat) {
            return SearchViewCompatHoneycomb.newOnQueryTextListener(new C01161(onQueryTextListenerCompat));
        }

        public View newSearchView(Context context) {
            return SearchViewCompatHoneycomb.newSearchView(context);
        }

        public void setIconified(View view, boolean z) {
            SearchViewCompatHoneycomb.setIconified(view, z);
        }

        public void setMaxWidth(View view, int i) {
            SearchViewCompatHoneycomb.setMaxWidth(view, i);
        }

        public void setOnCloseListener(Object obj, Object obj2) {
            SearchViewCompatHoneycomb.setOnCloseListener(obj, obj2);
        }

        public void setOnQueryTextListener(Object obj, Object obj2) {
            SearchViewCompatHoneycomb.setOnQueryTextListener(obj, obj2);
        }

        public void setQuery(View view, CharSequence charSequence, boolean z) {
            SearchViewCompatHoneycomb.setQuery(view, charSequence, z);
        }

        public void setQueryHint(View view, CharSequence charSequence) {
            SearchViewCompatHoneycomb.setQueryHint(view, charSequence);
        }

        public void setQueryRefinementEnabled(View view, boolean z) {
            SearchViewCompatHoneycomb.setQueryRefinementEnabled(view, z);
        }

        public void setSearchableInfo(View view, ComponentName componentName) {
            SearchViewCompatHoneycomb.setSearchableInfo(view, componentName);
        }

        public void setSubmitButtonEnabled(View view, boolean z) {
            SearchViewCompatHoneycomb.setSubmitButtonEnabled(view, z);
        }
    }

    static class SearchViewCompatIcsImpl extends SearchViewCompatHoneycombImpl {
        SearchViewCompatIcsImpl() {
        }

        public View newSearchView(Context context) {
            return SearchViewCompatIcs.newSearchView(context);
        }

        public void setImeOptions(View view, int i) {
            SearchViewCompatIcs.setImeOptions(view, i);
        }

        public void setInputType(View view, int i) {
            SearchViewCompatIcs.setInputType(view, i);
        }
    }

    static {
        if (VERSION.SDK_INT >= 14) {
            IMPL = new SearchViewCompatIcsImpl();
        } else if (VERSION.SDK_INT >= 11) {
            IMPL = new SearchViewCompatHoneycombImpl();
        } else {
            IMPL = new SearchViewCompatStubImpl();
        }
    }

    private SearchViewCompat(Context context) {
    }

    public static CharSequence getQuery(View view) {
        return IMPL.getQuery(view);
    }

    public static boolean isIconified(View view) {
        return IMPL.isIconified(view);
    }

    public static boolean isQueryRefinementEnabled(View view) {
        return IMPL.isQueryRefinementEnabled(view);
    }

    public static boolean isSubmitButtonEnabled(View view) {
        return IMPL.isSubmitButtonEnabled(view);
    }

    public static View newSearchView(Context context) {
        return IMPL.newSearchView(context);
    }

    public static void setIconified(View view, boolean z) {
        IMPL.setIconified(view, z);
    }

    public static void setImeOptions(View view, int i) {
        IMPL.setImeOptions(view, i);
    }

    public static void setInputType(View view, int i) {
        IMPL.setInputType(view, i);
    }

    public static void setMaxWidth(View view, int i) {
        IMPL.setMaxWidth(view, i);
    }

    public static void setOnCloseListener(View view, OnCloseListenerCompat onCloseListenerCompat) {
        IMPL.setOnCloseListener(view, onCloseListenerCompat.mListener);
    }

    public static void setOnQueryTextListener(View view, OnQueryTextListenerCompat onQueryTextListenerCompat) {
        IMPL.setOnQueryTextListener(view, onQueryTextListenerCompat.mListener);
    }

    public static void setQuery(View view, CharSequence charSequence, boolean z) {
        IMPL.setQuery(view, charSequence, z);
    }

    public static void setQueryHint(View view, CharSequence charSequence) {
        IMPL.setQueryHint(view, charSequence);
    }

    public static void setQueryRefinementEnabled(View view, boolean z) {
        IMPL.setQueryRefinementEnabled(view, z);
    }

    public static void setSearchableInfo(View view, ComponentName componentName) {
        IMPL.setSearchableInfo(view, componentName);
    }

    public static void setSubmitButtonEnabled(View view, boolean z) {
        IMPL.setSubmitButtonEnabled(view, z);
    }
}
