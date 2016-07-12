package com.upsight.android.marketing;

import android.app.Activity;
import android.app.DialogFragment;
import android.view.ViewGroup;
import com.upsight.android.marketing.UpsightBillboard.Dimensions;
import com.upsight.android.marketing.UpsightBillboard.Handler;
import com.upsight.android.marketing.UpsightBillboard.PresentationStyle;
import com.upsight.android.marketing.internal.billboard.BillboardFragment;
import java.util.List;
import java.util.Set;
import spacemadness.com.lunarconsole.C1401R;

public final class UpsightBillboardHandlers {
    private static final int STYLE_DIALOG;
    private static final int STYLE_FULLSCREEN = 16974122;

    /* renamed from: com.upsight.android.marketing.UpsightBillboardHandlers.1 */
    static /* synthetic */ class C09631 {
        static final /* synthetic */ int[] f268x10de5d48;

        static {
            f268x10de5d48 = new int[PresentationStyle.values().length];
            try {
                f268x10de5d48[PresentationStyle.Dialog.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f268x10de5d48[PresentationStyle.Fullscreen.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    private static abstract class SimpleHandler implements Handler {
        protected Activity mActivity;
        protected BillboardFragment mFragment;

        protected SimpleHandler(Activity activity) {
            this.mFragment = null;
            this.mActivity = activity;
        }

        public void onDetach() {
            DialogFragment dialogFragment = this.mFragment;
            if (dialogFragment != null) {
                dialogFragment.dismissAllowingStateLoss();
                this.mFragment = null;
            }
        }

        public void onNextView() {
        }

        public void onPurchases(List<UpsightPurchase> list) {
        }

        public void onRewards(List<UpsightReward> list) {
        }
    }

    public static class DefaultHandler extends SimpleHandler {
        public DefaultHandler(Activity activity) {
            super(activity);
        }

        public ViewGroup onAttach(String str, PresentationStyle presentationStyle, Set<Dimensions> set) {
            if (this.mActivity == null || this.mActivity.isFinishing()) {
                return null;
            }
            int access$000;
            Set set2;
            switch (C09631.f268x10de5d48[presentationStyle.ordinal()]) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    access$000 = UpsightBillboardHandlers.STYLE_DIALOG;
                    break;
                default:
                    access$000 = UpsightBillboardHandlers.STYLE_FULLSCREEN;
                    set2 = null;
                    break;
            }
            this.mFragment = BillboardFragment.newInstance(this.mActivity, set2);
            this.mFragment.setStyle(1, access$000);
            this.mFragment.setCancelable(false);
            this.mFragment.show(this.mActivity.getFragmentManager(), null);
            return this.mFragment.getContentViewContainer();
        }

        public /* bridge */ /* synthetic */ void onDetach() {
            super.onDetach();
        }

        public /* bridge */ /* synthetic */ void onNextView() {
            super.onNextView();
        }

        public /* bridge */ /* synthetic */ void onPurchases(List list) {
            super.onPurchases(list);
        }

        public /* bridge */ /* synthetic */ void onRewards(List list) {
            super.onRewards(list);
        }
    }

    public static class DialogHandler extends SimpleHandler {
        public DialogHandler(Activity activity) {
            super(activity);
        }

        public ViewGroup onAttach(String str, PresentationStyle presentationStyle, Set<Dimensions> set) {
            if (this.mActivity == null || this.mActivity.isFinishing()) {
                return null;
            }
            this.mFragment = BillboardFragment.newInstance(this.mActivity, set);
            this.mFragment.setStyle(1, UpsightBillboardHandlers.STYLE_DIALOG);
            this.mFragment.setCancelable(false);
            this.mFragment.show(this.mActivity.getFragmentManager(), null);
            return this.mFragment.getContentViewContainer();
        }

        public /* bridge */ /* synthetic */ void onDetach() {
            super.onDetach();
        }

        public /* bridge */ /* synthetic */ void onNextView() {
            super.onNextView();
        }

        public /* bridge */ /* synthetic */ void onPurchases(List list) {
            super.onPurchases(list);
        }

        public /* bridge */ /* synthetic */ void onRewards(List list) {
            super.onRewards(list);
        }
    }

    private static class EmbeddedHandler extends SimpleHandler {
        protected int mContainerViewId;

        public EmbeddedHandler(Activity activity, int i) {
            super(activity);
            this.mContainerViewId = i;
        }

        public ViewGroup onAttach(String str, PresentationStyle presentationStyle, Set<Dimensions> set) {
            if (this.mActivity == null || this.mActivity.isFinishing()) {
                return null;
            }
            this.mFragment = BillboardFragment.newInstance(this.mActivity, set);
            this.mActivity.getFragmentManager().beginTransaction().add(this.mContainerViewId, this.mFragment).commit();
            return this.mFragment.getContentViewContainer();
        }
    }

    public static class FullscreenHandler extends SimpleHandler {
        public FullscreenHandler(Activity activity) {
            super(activity);
        }

        public ViewGroup onAttach(String str, PresentationStyle presentationStyle, Set<Dimensions> set) {
            if (this.mActivity == null || this.mActivity.isFinishing()) {
                return null;
            }
            this.mFragment = BillboardFragment.newInstance(this.mActivity, null);
            this.mFragment.setStyle(1, UpsightBillboardHandlers.STYLE_FULLSCREEN);
            this.mFragment.setCancelable(false);
            this.mFragment.show(this.mActivity.getFragmentManager(), null);
            return this.mFragment.getContentViewContainer();
        }

        public /* bridge */ /* synthetic */ void onDetach() {
            super.onDetach();
        }

        public /* bridge */ /* synthetic */ void onNextView() {
            super.onNextView();
        }

        public /* bridge */ /* synthetic */ void onPurchases(List list) {
            super.onPurchases(list);
        }

        public /* bridge */ /* synthetic */ void onRewards(List list) {
            super.onRewards(list);
        }
    }

    static {
        STYLE_DIALOG = C0962R.style.Theme_DeviceDefault_Light_Dialog_NoActionBar_UpsightDialog;
    }

    public static Handler forDefault(Activity activity) {
        return new DefaultHandler(activity);
    }

    public static Handler forDialog(Activity activity) {
        return new DialogHandler(activity);
    }

    private static Handler forEmbedded(Activity activity, int i) {
        return new EmbeddedHandler(activity, i);
    }

    public static Handler forFullscreen(Activity activity) {
        return new FullscreenHandler(activity);
    }
}
