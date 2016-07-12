package com.fasterxml.jackson.databind.util;

import java.io.Serializable;
import spacemadness.com.lunarconsole.C1401R;

public class ViewMatcher implements Serializable {
    protected static final ViewMatcher EMPTY;
    private static final long serialVersionUID = 1;

    private static final class Multi extends ViewMatcher implements Serializable {
        private static final long serialVersionUID = 1;
        private final Class<?>[] _views;

        public Multi(Class<?>[] clsArr) {
            this._views = clsArr;
        }

        public boolean isVisibleForView(Class<?> cls) {
            for (Class<?> cls2 : this._views) {
                if (cls == cls2 || cls2.isAssignableFrom(cls)) {
                    return true;
                }
            }
            return false;
        }
    }

    private static final class Single extends ViewMatcher {
        private static final long serialVersionUID = 1;
        private final Class<?> _view;

        public Single(Class<?> cls) {
            this._view = cls;
        }

        public boolean isVisibleForView(Class<?> cls) {
            return cls == this._view || this._view.isAssignableFrom(cls);
        }
    }

    static {
        EMPTY = new ViewMatcher();
    }

    public static ViewMatcher construct(Class<?>[] clsArr) {
        if (clsArr == null) {
            return EMPTY;
        }
        switch (clsArr.length) {
            case C1401R.styleable.AdsAttrs_adSize /*0*/:
                return EMPTY;
            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                return new Single(clsArr[0]);
            default:
                return new Multi(clsArr);
        }
    }

    public boolean isVisibleForView(Class<?> cls) {
        return false;
    }
}
