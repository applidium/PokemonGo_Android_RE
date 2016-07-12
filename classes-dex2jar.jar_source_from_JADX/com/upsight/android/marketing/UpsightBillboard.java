package com.upsight.android.marketing;

import android.text.TextUtils;
import android.view.ViewGroup;
import com.upsight.android.UpsightContext;
import com.upsight.android.marketing.internal.billboard.Billboard;
import java.util.List;
import java.util.Set;

public abstract class UpsightBillboard {

    public static class Dimensions {
        public final int height;
        public final LayoutOrientation layout;
        public final int width;

        public enum LayoutOrientation {
            Portrait,
            Landscape
        }

        public Dimensions(LayoutOrientation layoutOrientation, int i, int i2) {
            this.layout = layoutOrientation;
            this.width = i;
            this.height = i2;
        }
    }

    public interface Handler {
        ViewGroup onAttach(String str, PresentationStyle presentationStyle, Set<Dimensions> set);

        void onDetach();

        void onNextView();

        void onPurchases(List<UpsightPurchase> list);

        void onRewards(List<UpsightReward> list);
    }

    public enum PresentationStyle {
        None,
        Dialog,
        Fullscreen
    }

    public static UpsightBillboard create(UpsightContext upsightContext, String str, Handler handler) throws IllegalArgumentException, IllegalStateException {
        if (!TextUtils.isEmpty(str) || handler == null) {
            UpsightBillboard billboard = new Billboard(str, handler);
            billboard.setUp(upsightContext);
            return billboard;
        }
        throw new IllegalArgumentException("The billboard scope and handler must be non-null and non-empty.");
    }

    public abstract void destroy();

    protected abstract UpsightBillboard setUp(UpsightContext upsightContext) throws IllegalStateException;
}
