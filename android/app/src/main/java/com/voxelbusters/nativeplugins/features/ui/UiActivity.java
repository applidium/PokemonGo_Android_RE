package com.voxelbusters.nativeplugins.features.ui;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import com.voxelbusters.nativeplugins.NativePluginHelper;
import com.voxelbusters.nativeplugins.defines.Keys;
import com.voxelbusters.nativeplugins.defines.Keys.Ui;
import com.voxelbusters.nativeplugins.defines.UnityDefines;
import com.voxelbusters.nativeplugins.utilities.StringUtility;
import java.util.HashMap;

public class UiActivity extends Activity {
    AlertDialog alertDialog;
    Bundle bundleInfo;
    boolean paused;

    /* renamed from: com.voxelbusters.nativeplugins.features.ui.UiActivity.1 */
    class C09961 implements Runnable {
        C09961() {
        }

        public void run() {
            UiActivity.this.startActivity(UiActivity.this.getIntent());
        }
    }

    /* renamed from: com.voxelbusters.nativeplugins.features.ui.UiActivity.2 */
    class C09972 implements OnClickListener {
        private final /* synthetic */ int val$index;
        private final /* synthetic */ String val$tag;
        private final /* synthetic */ String[] val$tempButtonList;

        C09972(String[] strArr, int i, String str) {
            this.val$tempButtonList = strArr;
            this.val$index = i;
            this.val$tag = str;
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            Object obj = this.val$tempButtonList[this.val$index];
            String str = this.val$tag;
            HashMap hashMap = new HashMap();
            hashMap.put(Ui.BUTTON_PRESSED, obj);
            hashMap.put(Ui.CALLER, str);
            NativePluginHelper.sendMessage(UnityDefines.Ui.ALERT_DIALOG_CLOSED, hashMap);
            UiHandler.getInstance().onFinish(str);
            UiActivity.this.finish();
        }
    }

    /* renamed from: com.voxelbusters.nativeplugins.features.ui.UiActivity.3 */
    class C09983 implements OnClickListener {
        private final /* synthetic */ int val$index;
        private final /* synthetic */ EditText val$promptField;
        private final /* synthetic */ String[] val$tempButtonList;

        C09983(EditText editText, String[] strArr, int i) {
            this.val$promptField = editText;
            this.val$tempButtonList = strArr;
            this.val$index = i;
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            String editable = this.val$promptField.getText().toString();
            HashMap hashMap = new HashMap();
            hashMap.put(Ui.BUTTON_PRESSED, this.val$tempButtonList[this.val$index]);
            hashMap.put(Ui.INPUT, editable);
            NativePluginHelper.sendMessage(UnityDefines.Ui.SINGLE_FIELD_PROMPT_DIALOG_CLOSED, hashMap);
            UiActivity.this.finish();
        }
    }

    /* renamed from: com.voxelbusters.nativeplugins.features.ui.UiActivity.4 */
    class C09994 implements OnClickListener {
        private final /* synthetic */ String[] val$finalButtonList;
        private final /* synthetic */ int val$index;
        private final /* synthetic */ EditText val$passwordField;
        private final /* synthetic */ EditText val$usernameField;

        C09994(String[] strArr, int i, EditText editText, EditText editText2) {
            this.val$finalButtonList = strArr;
            this.val$index = i;
            this.val$usernameField = editText;
            this.val$passwordField = editText2;
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            HashMap hashMap = new HashMap();
            hashMap.put(Ui.BUTTON_PRESSED, this.val$finalButtonList[this.val$index]);
            hashMap.put(Ui.USER_NAME, this.val$usernameField.getText().toString());
            hashMap.put(Ui.PASSWORD, this.val$passwordField.getText().toString());
            NativePluginHelper.sendMessage(UnityDefines.Ui.LOGIN_PROMPT_DIALOG_CLOSED, hashMap);
            UiActivity.this.finish();
        }
    }

    private void showAlertDialog(Bundle bundle) {
        int i = 3;
        String string = bundle.getString(Keys.TAG);
        String[] stringArray = bundle.getStringArray(Keys.BUTTON_LIST);
        this.alertDialog = getDialogWithDefaultDetails(bundle);
        if (stringArray.length <= 3) {
            i = stringArray.length;
        }
        for (int i2 = 0; i2 < i; i2++) {
            this.alertDialog.setButton(-1 - i2, stringArray[i2], new C09972(stringArray, i2, string));
        }
        this.alertDialog.show();
    }

    private void showLoginPrompt(Bundle bundle) {
        String[] stringArray = bundle.getStringArray(Keys.BUTTON_LIST);
        setContentView(new LinearLayout(this));
        this.alertDialog = getDialogWithDefaultDetails(bundle);
        View editText = new EditText(this);
        View editText2 = new EditText(this);
        View linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.addView(editText);
        linearLayout.addView(editText2);
        this.alertDialog.setView(linearLayout);
        CharSequence string = bundle.getString(Keys.PLACE_HOLDER_TEXT_1);
        CharSequence string2 = bundle.getString(Keys.PLACE_HOLDER_TEXT_2);
        editText2.setTransformationMethod(new PasswordTransformationMethod());
        editText.setHint(string);
        editText2.setHint(string2);
        int length = stringArray.length > 3 ? 3 : stringArray.length;
        for (int i = 0; i < length; i++) {
            this.alertDialog.setButton(-1 - i, stringArray[i], new C09994(stringArray, i, editText, editText2));
        }
        this.alertDialog.show();
    }

    private void showSinglePrompt(Bundle bundle) {
        int i = 3;
        String[] stringArray = bundle.getStringArray(Keys.BUTTON_LIST);
        this.alertDialog = getDialogWithDefaultDetails(bundle);
        View editText = new EditText(this);
        this.alertDialog.setView(editText);
        boolean z = bundle.getBoolean(Keys.IS_SECURE);
        CharSequence string = bundle.getString(Keys.PLACE_HOLDER_TEXT_1);
        if (z) {
            editText.setTransformationMethod(new PasswordTransformationMethod());
        }
        if (string != null) {
            editText.setHint(string);
        }
        if (stringArray.length <= 3) {
            i = stringArray.length;
        }
        for (int i2 = 0; i2 < i; i2++) {
            this.alertDialog.setButton(-1 - i2, stringArray[i2], new C09983(editText, stringArray, i2));
        }
        this.alertDialog.show();
    }

    AlertDialog getDialogWithDefaultDetails(Bundle bundle) {
        CharSequence string = bundle.getString(Keys.TITLE);
        CharSequence string2 = bundle.getString(Keys.MESSAGE);
        Builder builder = new Builder(this);
        if (!StringUtility.isNullOrEmpty(string)) {
            builder.setTitle(string);
        }
        if (!StringUtility.isNullOrEmpty(string2)) {
            builder.setMessage(string2);
        }
        builder.setCancelable(false);
        return builder.create();
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (this.bundleInfo == null) {
            this.bundleInfo = getIntent().getExtras();
        }
        eUiType com_voxelbusters_nativeplugins_features_ui_eUiType = eUiType.values()[this.bundleInfo.getInt(Keys.TYPE)];
        if (com_voxelbusters_nativeplugins_features_ui_eUiType == eUiType.ALERT_DIALOG) {
            showAlertDialog(this.bundleInfo);
        } else if (com_voxelbusters_nativeplugins_features_ui_eUiType == eUiType.SINGLE_FIELD_PROMPT) {
            showSinglePrompt(this.bundleInfo);
        } else if (com_voxelbusters_nativeplugins_features_ui_eUiType == eUiType.LOGIN_PROMPT) {
            showLoginPrompt(this.bundleInfo);
        }
    }

    protected void onDestroy() {
        super.onDestroy();
        if (this.alertDialog != null) {
            this.alertDialog.dismiss();
            this.alertDialog = null;
        }
    }

    protected void onPause() {
        super.onPause();
        this.paused = true;
    }

    @SuppressLint({"NewApi"})
    protected void onResume() {
        super.onResume();
        if (this.paused) {
            finish();
            new Handler().postDelayed(new C09961(), 10);
        }
    }
}
