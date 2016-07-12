package com.voxelbusters.nativeplugins.features.ui;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Toast;
import com.voxelbusters.nativeplugins.NativePluginHelper;
import com.voxelbusters.nativeplugins.defines.CommonDefines;
import com.voxelbusters.nativeplugins.defines.Keys;
import com.voxelbusters.nativeplugins.utilities.Debug;
import com.voxelbusters.nativeplugins.utilities.StringUtility;
import java.util.ArrayList;
import java.util.HashMap;

public class UiHandler {
    private static UiHandler INSTANCE;
    private String currentDisplayedUiTag;
    private final ArrayList<String> queueList;
    private final HashMap<String, Bundle> uiElementsMap;

    /* renamed from: com.voxelbusters.nativeplugins.features.ui.UiHandler.1 */
    class C10001 implements Runnable {
        private final /* synthetic */ String val$message;
        private final /* synthetic */ int val$toastLength;

        C10001(String str, int i) {
            this.val$message = str;
            this.val$toastLength = i;
        }

        public void run() {
            Toast.makeText(NativePluginHelper.getCurrentContext(), this.val$message, this.val$toastLength).show();
        }
    }

    private UiHandler() {
        this.uiElementsMap = new HashMap();
        this.queueList = new ArrayList();
    }

    public static UiHandler getInstance() {
        if (INSTANCE == null) {
            INSTANCE = new UiHandler();
        }
        return INSTANCE;
    }

    public void onFinish(String str) {
        this.currentDisplayedUiTag = null;
        if (this.queueList.size() > 0) {
            String str2 = (String) this.queueList.remove(this.queueList.size() - 1);
            pushToActivityQueue((Bundle) this.uiElementsMap.get(str2), str2);
        }
    }

    public void pushToActivityQueue(Bundle bundle, String str) {
        if (this.currentDisplayedUiTag != null) {
            Debug.log(CommonDefines.UI_TAG, "Queuing this ui element");
            this.queueList.add(str);
            return;
        }
        startActivity(bundle);
        this.currentDisplayedUiTag = str;
    }

    public void showAlertDialogWithMultipleButtons(String str, String str2, String str3, String str4) {
        Bundle bundle = new Bundle();
        bundle.putString(Keys.TITLE, str);
        bundle.putString(Keys.MESSAGE, str2);
        bundle.putStringArray(Keys.BUTTON_LIST, StringUtility.convertJsonStringToStringArray(str3));
        bundle.putString(Keys.TAG, str4);
        bundle.putInt(Keys.TYPE, eUiType.ALERT_DIALOG.ordinal());
        pushToActivityQueue(bundle, str4);
    }

    public void showLoginPromptDialog(String str, String str2, String str3, String str4, String str5) {
        Bundle bundle = new Bundle();
        bundle.putString(Keys.TITLE, str);
        bundle.putString(Keys.MESSAGE, str2);
        bundle.putStringArray(Keys.BUTTON_LIST, StringUtility.convertJsonStringToStringArray(str5));
        bundle.putString(Keys.PLACE_HOLDER_TEXT_1, str3);
        bundle.putString(Keys.PLACE_HOLDER_TEXT_2, str4);
        bundle.putInt(Keys.TYPE, eUiType.LOGIN_PROMPT.ordinal());
        startActivity(bundle);
    }

    public void showSingleFieldPromptDialog(String str, String str2, String str3, boolean z, String str4) {
        Bundle bundle = new Bundle();
        bundle.putString(Keys.TITLE, str);
        bundle.putString(Keys.MESSAGE, str2);
        bundle.putStringArray(Keys.BUTTON_LIST, StringUtility.convertJsonStringToStringArray(str4));
        bundle.putBoolean(Keys.IS_SECURE, z);
        bundle.putString(Keys.PLACE_HOLDER_TEXT_1, str3);
        bundle.putInt(Keys.TYPE, eUiType.SINGLE_FIELD_PROMPT.ordinal());
        startActivity(bundle);
    }

    public void showToast(String str, String str2) {
        NativePluginHelper.executeOnUIThread(new C10001(str, str2.equals("SHORT") ? 0 : 1));
    }

    void startActivity(Bundle bundle) {
        Intent intent = new Intent(NativePluginHelper.getCurrentContext(), UiActivity.class);
        intent.putExtras(bundle);
        NativePluginHelper.startActivityOnUiThread(intent);
    }
}
