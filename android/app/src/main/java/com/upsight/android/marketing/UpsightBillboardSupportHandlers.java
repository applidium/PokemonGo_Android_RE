package com.upsight.android.marketing;

import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentActivity;
import android.view.ViewGroup;
import com.upsight.android.marketing.UpsightBillboard.Dimensions;
import com.upsight.android.marketing.UpsightBillboard.Handler;
import com.upsight.android.marketing.UpsightBillboard.PresentationStyle;
import com.upsight.android.marketing.internal.billboard.BillboardSupportFragment;
import java.util.List;
import java.util.Set;
import spacemadness.com.lunarconsole.C1401R;

public final class UpsightBillboardSupportHandlers {
    private static final int STYLE_DIALOG;
    private static final int STYLE_FULLSCREEN = 16974122;

    /* renamed from: com.upsight.android.marketing.UpsightBillboardSupportHandlers.1 */
    static /* synthetic */ class C09641 {
        static final /* synthetic */ int[] f269x10de5d48;

        static {
            f269x10de5d48 = new int[PresentationStyle.values().length];
            try {
                f269x10de5d48[PresentationStyle.Dialog.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f269x10de5d48[PresentationStyle.Fullscreen.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    private static abstract class SimpleHandler implements Handler {
        protected FragmentActivity mActivity;
        protected BillboardSupportFragment mFragment;

        protected SimpleHandler(FragmentActivity fragmentActivity) {
            this.mFragment = null;
            this.mActivity = fragmentActivity;
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
        public DefaultHandler(FragmentActivity fragmentActivity) {
            super(fragmentActivity);
        }

        public ViewGroup onAttach(String str, PresentationStyle presentationStyle, Set<Dimensions> set) {
            if (this.mActivity == null || this.mActivity.isFinishing()) {
                return null;
            }
            int access$000;
            Set set2;
            switch (C09641.f269x10de5d48[presentationStyle.ordinal()]) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    access$000 = UpsightBillboardSupportHandlers.STYLE_DIALOG;
                    break;
                default:
                    access$000 = UpsightBillboardSupportHandlers.STYLE_FULLSCREEN;
                    set2 = null;
                    break;
            }
            this.mFragment = BillboardSupportFragment.newInstance(this.mActivity, set2);
            this.mFragment.setStyle(1, access$000);
            this.mFragment.setCancelable(false);
            this.mFragment.show(this.mActivity.getSupportFragmentManager(), null);
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
        public DialogHandler(FragmentActivity fragmentActivity) {
            super(fragmentActivity);
        }

        public ViewGroup onAttach(String str, PresentationStyle presentationStyle, Set<Dimensions> set) {
            if (this.mActivity == null || this.mActivity.isFinishing()) {
                return null;
            }
            this.mFragment = BillboardSupportFragment.newInstance(this.mActivity, set);
            this.mFragment.setStyle(1, UpsightBillboardSupportHandlers.STYLE_DIALOG);
            this.mFragment.setCancelable(false);
            this.mFragment.show(this.mActivity.getSupportFragmentManager(), null);
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

        public EmbeddedHandler(FragmentActivity fragmentActivity, int i) {
            super(fragmentActivity);
            this.mContainerViewId = i;
        }

        public ViewGroup onAttach(String str, PresentationStyle presentationStyle, Set<Dimensions> set) {
            if (this.mActivity == null || this.mActivity.isFinishing()) {
                return null;
            }
            this.mFragment = BillboardSupportFragment.newInstance(this.mActivity, set);
            this.mActivity.getSupportFragmentManager().beginTransaction().add(this.mContainerViewId, this.mFragment).commit();
            return this.mFragment.getContentViewContainer();
        }
    }

    public static class FullscreenHandler extends SimpleHandler {
        public FullscreenHandler(FragmentActivity fragmentActivity) {
            super(fragmentActivity);
        }

        public ViewGroup onAttach(String str, PresentationStyle presentationStyle, Set<Dimensions> set) {
            if (this.mActivity == null || this.mActivity.isFinishing()) {
                return null;
            }
            this.mFragment = BillboardSupportFragment.newInstance(this.mActivity, null);
            this.mFragment.setStyle(1, UpsightBillboardSupportHandlers.STYLE_FULLSCREEN);
            this.mFragment.setCancelable(false);
            this.mFragment.show(this.mActivity.getSupportFragmentManager(), null);
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

    public static Handler forDefault(FragmentActivity fragmentActivity) {
        return new DefaultHandler(fragmentActivity);
    }

    public static Handler forDialog(FragmentActivity fragmentActivity) {
        return new DialogHandler(fragmentActivity);
    }

    private static Handler forEmbedded(FragmentActivity fragmentActivity, int i) {
        return new EmbeddedHandler(fragmentActivity, i);
    }

    public static Handler forFullscreen(FragmentActivity fragmentActivity) {
        return new FullscreenHandler(fragmentActivity);
    }
}
