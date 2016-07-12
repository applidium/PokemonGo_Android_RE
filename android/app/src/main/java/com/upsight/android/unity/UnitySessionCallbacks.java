package com.upsight.android.unity;

import android.util.Log;
import com.upsight.android.UpsightContext;
import com.upsight.android.analytics.session.UpsightSessionCallbacks;
import com.upsight.android.managedvariables.experience.UpsightUserExperience;
import com.upsight.android.managedvariables.experience.UpsightUserExperience.Handler;
import java.util.List;
import org.json.JSONArray;

public class UnitySessionCallbacks implements UpsightSessionCallbacks {
    protected static final String TAG = "UnitySessionCallbacks";

    /* renamed from: com.upsight.android.unity.UnitySessionCallbacks.1 */
    class C09841 implements Handler {
        C09841() {
        }

        public boolean onReceive() {
            return UpsightPlugin.instance().getShouldSynchronizeManagedVariables();
        }

        public void onSynchronize(List<String> list) {
            Log.i(UnitySessionCallbacks.TAG, "onSynchronize");
            JSONArray jSONArray = new JSONArray();
            for (String put : list) {
                jSONArray.put(put);
            }
            UpsightPlugin.instance().UnitySendMessage("managedVariablesDidSynchronize", jSONArray.toString());
        }
    }

    public void onStart(UpsightContext upsightContext) {
        UpsightUserExperience.registerHandler(upsightContext, new C09841());
    }
}
