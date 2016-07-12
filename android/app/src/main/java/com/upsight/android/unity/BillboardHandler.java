package com.upsight.android.unity;

import android.app.Activity;
import android.util.Log;
import android.view.ViewGroup;
import com.upsight.android.marketing.UpsightBillboard.Dimensions;
import com.upsight.android.marketing.UpsightBillboard.PresentationStyle;
import com.upsight.android.marketing.UpsightBillboardHandlers.DefaultHandler;
import com.upsight.android.marketing.UpsightPurchase;
import com.upsight.android.marketing.UpsightReward;
import java.util.List;
import java.util.Set;
import org.json.JSONObject;

public class BillboardHandler extends DefaultHandler {
    protected static final String TAG = "UpsightBillboardHandler";
    private String mCurrentScope;
    private UpsightPlugin mPlugin;

    public BillboardHandler(Activity activity, UpsightPlugin upsightPlugin) {
        super(activity);
        this.mPlugin = upsightPlugin;
    }

    public ViewGroup onAttach(String str, PresentationStyle presentationStyle, Set<Dimensions> set) {
        this.mCurrentScope = str;
        ViewGroup onAttach = super.onAttach(str, presentationStyle, set);
        if (onAttach != null) {
            this.mPlugin.setHasActiveBillboard(true);
            this.mPlugin.UnitySendMessage("onBillboardAppear", str);
        }
        return onAttach;
    }

    public void onDetach() {
        super.onDetach();
        Log.i(TAG, "onDetach");
        this.mPlugin.UnitySendMessage("onBillboardDismiss", this.mCurrentScope);
        this.mPlugin.removeBillboardFromMap(this.mCurrentScope);
        this.mPlugin.setHasActiveBillboard(false);
    }

    public void onNextView() {
        super.onNextView();
        Log.i(TAG, "onNextView");
    }

    public void onPurchases(List<UpsightPurchase> list) {
        super.onPurchases(list);
        Log.i(TAG, "onPurchases");
        for (UpsightPurchase upsightPurchase : list) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("productIdentifier", upsightPurchase.getProduct());
                jSONObject.put("quantity", upsightPurchase.getQuantity());
                jSONObject.put("billboardScope", this.mCurrentScope);
                this.mPlugin.UnitySendMessage("billboardDidReceivePurchase", jSONObject.toString());
            } catch (Exception e) {
                Log.i(TAG, "Error creating JSON" + e.getMessage());
            }
        }
    }

    public void onRewards(List<UpsightReward> list) {
        super.onRewards(list);
        Log.i(TAG, "onRewards");
        for (UpsightReward upsightReward : list) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("productIdentifier", upsightReward.getProduct());
                jSONObject.put("quantity", upsightReward.getQuantity());
                jSONObject.put("signatureData", upsightReward.getSignatureData());
                jSONObject.put("billboardScope", this.mCurrentScope);
                this.mPlugin.UnitySendMessage("billboardDidReceiveReward", jSONObject.toString());
            } catch (Exception e) {
                Log.i(TAG, "Error creating JSON" + e.getMessage());
            }
        }
    }
}
