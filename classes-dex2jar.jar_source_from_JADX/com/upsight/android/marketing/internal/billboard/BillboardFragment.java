package com.upsight.android.marketing.internal.billboard;

import android.app.Dialog;
import android.app.DialogFragment;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.LinearLayout;
import com.upsight.android.marketing.C0962R;
import com.upsight.android.marketing.UpsightBillboard.Dimensions;
import com.upsight.android.marketing.UpsightBillboard.Dimensions.LayoutOrientation;
import java.util.Set;
import spacemadness.com.lunarconsole.C1401R;

public final class BillboardFragment extends DialogFragment {
    private static final String BUNDLE_KEY_LANDSCAPE_HEIGHT = "landscapeHeight";
    private static final String BUNDLE_KEY_LANDSCAPE_WIDTH = "landscapeWidth";
    private static final String BUNDLE_KEY_PORTRAIT_HEIGHT = "portraitHeight";
    private static final String BUNDLE_KEY_PORTRAIT_WIDTH = "portraitWidth";
    private ViewGroup mContentViewContainer;
    private ViewGroup mRootView;

    /* renamed from: com.upsight.android.marketing.internal.billboard.BillboardFragment.1 */
    static /* synthetic */ class C09661 {
        static final /* synthetic */ int[] f270x3f5ad3de;

        static {
            f270x3f5ad3de = new int[LayoutOrientation.values().length];
            try {
                f270x3f5ad3de[LayoutOrientation.Portrait.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f270x3f5ad3de[LayoutOrientation.Landscape.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public BillboardFragment() {
        this.mRootView = null;
        this.mContentViewContainer = null;
    }

    public static BillboardFragment newInstance(Context context, Set<Dimensions> set) {
        BillboardFragment billboardFragment = new BillboardFragment();
        Bundle bundle = new Bundle();
        if (set != null) {
            for (Dimensions dimensions : set) {
                if (dimensions.width > 0 && dimensions.height > 0) {
                    switch (C09661.f270x3f5ad3de[dimensions.layout.ordinal()]) {
                        case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                            bundle.putInt(BUNDLE_KEY_PORTRAIT_WIDTH, dimensions.width);
                            bundle.putInt(BUNDLE_KEY_PORTRAIT_HEIGHT, dimensions.height);
                            break;
                        case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                            bundle.putInt(BUNDLE_KEY_LANDSCAPE_WIDTH, dimensions.width);
                            bundle.putInt(BUNDLE_KEY_LANDSCAPE_HEIGHT, dimensions.height);
                            break;
                        default:
                            break;
                    }
                }
            }
        }
        billboardFragment.setArguments(bundle);
        billboardFragment.setRetainInstance(true);
        billboardFragment.mContentViewContainer = new LinearLayout(context.getApplicationContext());
        return billboardFragment;
    }

    private void setDialogSize(int i, int i2) {
        Window window = getDialog().getWindow();
        LayoutParams attributes = window.getAttributes();
        attributes.width = i;
        attributes.height = i2;
        window.setAttributes(attributes);
    }

    public ViewGroup getContentViewContainer() {
        return this.mContentViewContainer;
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        getFragmentManager().beginTransaction().detach(this).attach(this).commit();
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        if (this.mContentViewContainer != null) {
            this.mRootView = (ViewGroup) layoutInflater.inflate(C0962R.layout.upsight_fragment_billboard, viewGroup, false);
            this.mRootView.addView(this.mContentViewContainer, new ViewGroup.LayoutParams(-1, -1));
        }
        return this.mRootView;
    }

    public void onDestroyView() {
        if (this.mContentViewContainer != null) {
            this.mRootView.removeView(this.mContentViewContainer);
        }
        Dialog dialog = getDialog();
        if (dialog != null && getRetainInstance()) {
            dialog.setDismissMessage(null);
        }
        super.onDestroyView();
    }

    public void onResume() {
        int i = getResources().getConfiguration().orientation;
        Bundle arguments = getArguments();
        if (i == 1 && arguments.containsKey(BUNDLE_KEY_PORTRAIT_WIDTH)) {
            setDialogSize(arguments.getInt(BUNDLE_KEY_PORTRAIT_WIDTH), arguments.getInt(BUNDLE_KEY_PORTRAIT_HEIGHT));
        } else if (i == 2 && arguments.containsKey(BUNDLE_KEY_LANDSCAPE_WIDTH)) {
            setDialogSize(arguments.getInt(BUNDLE_KEY_LANDSCAPE_WIDTH), arguments.getInt(BUNDLE_KEY_LANDSCAPE_HEIGHT));
        }
        super.onResume();
    }

    public void onStart() {
        super.onStart();
        if (this.mContentViewContainer == null) {
            dismiss();
        }
    }
}
