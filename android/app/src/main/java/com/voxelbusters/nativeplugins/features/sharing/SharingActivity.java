package com.voxelbusters.nativeplugins.features.sharing;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnKeyListener;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.KeyEvent;
import com.voxelbusters.nativeplugins.NativePluginHelper;
import com.voxelbusters.nativeplugins.defines.CommonDefines;
import com.voxelbusters.nativeplugins.defines.Enums.eShareOptions;
import com.voxelbusters.nativeplugins.defines.Keys;
import com.voxelbusters.nativeplugins.defines.Keys.Mime;
import com.voxelbusters.nativeplugins.defines.Keys.Package;
import com.voxelbusters.nativeplugins.defines.UnityDefines.Sharing;
import com.voxelbusters.nativeplugins.utilities.Debug;
import com.voxelbusters.nativeplugins.utilities.StringUtility;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.io.IOUtils;
import com.nianticlabs.pokemongo.BuildConfig;

public class SharingActivity extends Activity {
    final int SEND_MAIL_REQUEST_CODE;
    final int SEND_SMS_REQUEST_CODE;
    final int SHARE_ON_WHATS_APP_REQUEST_CODE;
    final int SHARING_REQUEST_CODE;
    Bundle bundleInfo;
    File currentImageFileShared;

    /* renamed from: com.voxelbusters.nativeplugins.features.sharing.SharingActivity.1 */
    class C09941 implements OnClickListener {
        C09941() {
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            NativePluginHelper.sendMessage(Sharing.FINISHED, Keys.Sharing.FAILED);
            SharingActivity.this.finish();
        }
    }

    /* renamed from: com.voxelbusters.nativeplugins.features.sharing.SharingActivity.2 */
    class C09952 implements OnKeyListener {
        C09952() {
        }

        public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
            if (i == 4) {
                NativePluginHelper.sendMessage(Sharing.FINISHED, Keys.Sharing.FAILED);
                SharingActivity.this.finish();
            }
            return true;
        }
    }

    public SharingActivity() {
        this.SHARING_REQUEST_CODE = 1;
        this.SEND_MAIL_REQUEST_CODE = 2;
        this.SEND_SMS_REQUEST_CODE = 3;
        this.SHARE_ON_WHATS_APP_REQUEST_CODE = 4;
        this.currentImageFileShared = null;
    }

    private void shareItem(String str, String str2, String str3, String str4, String[] strArr) {
        int i = 1;
        Context currentContext = NativePluginHelper.getCurrentContext();
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType(getMimeType(str4, !StringUtility.isNullOrEmpty(str3)));
        if (StringUtility.isNullOrEmpty(str2)) {
            intent.putExtra("android.intent.extra.TEXT", str);
        } else {
            intent.putExtra("android.intent.extra.TEXT", new StringBuilder(String.valueOf(str)).append(IOUtils.LINE_SEPARATOR_UNIX).append(str2).toString());
        }
        if (!StringUtility.isNullOrEmpty(str3)) {
            intent.putExtra("android.intent.extra.STREAM", Uri.parse(str3));
        }
        intent.addCategory("android.intent.category.DEFAULT");
        int i2 = (strArr != null && StringUtility.contains(eShareOptions.MESSAGE.ordinal(), strArr) && StringUtility.contains(eShareOptions.MAIL.ordinal(), strArr) && StringUtility.contains(eShareOptions.WHATSAPP.ordinal(), strArr)) ? 1 : 0;
        List<ResolveInfo> queryIntentActivities = currentContext.getPackageManager().queryIntentActivities(intent, 0);
        if (!queryIntentActivities.isEmpty()) {
            List arrayList = new ArrayList();
            for (ResolveInfo resolveInfo : queryIntentActivities) {
                String str5 = resolveInfo.activityInfo != null ? resolveInfo.activityInfo.packageName : null;
                if (!(str5 == null || SharingHelper.checkIfPackageMatchesShareOptions(str5, strArr))) {
                    if (i2 == 0 || SharingHelper.isSocialNetwork(str5)) {
                        Intent intent2 = new Intent(intent);
                        intent2.setComponent(new ComponentName(str5, resolveInfo.activityInfo.name));
                        intent2.setPackage(str5);
                        arrayList.add(intent2);
                    }
                }
            }
            if (!arrayList.isEmpty()) {
                Intent createChooser = Intent.createChooser((Intent) arrayList.remove(0), "Share via");
                createChooser.putExtra("android.intent.extra.INITIAL_INTENTS", (Parcelable[]) arrayList.toArray(new Parcelable[0]));
                createChooser.addFlags(1);
                startActivityForResult(createChooser, 1);
                i = 0;
            }
        }
        if (i != 0) {
            Builder positiveButton = new Builder(this).setTitle("Share").setMessage("No services found!").setPositiveButton(17039370, new C09941());
            positiveButton.setOnKeyListener(new C09952());
            positiveButton.create().show();
        }
    }

    String getMimeType(String str, boolean z) {
        String str2 = Mime.PLAIN_TEXT;
        if (z) {
            str2 = Mime.IMAGE_ALL;
        }
        return Keys.Sharing.MAIL.equals(str) ? Mime.EMAIL : str2;
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1) {
            NativePluginHelper.sendMessage(Sharing.FINISHED, Keys.Sharing.CLOSED);
        } else if (i == 2) {
            NativePluginHelper.sendMessage(Sharing.SENT_MAIL, Keys.Sharing.CLOSED);
        } else if (i == 3) {
            NativePluginHelper.sendMessage(Sharing.SENT_SMS, Keys.Sharing.CLOSED);
        } else if (i == 4) {
            NativePluginHelper.sendMessage(Sharing.WHATSAPP_SHARE_FINISHED, Keys.Sharing.CLOSED);
        }
        finish();
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (this.bundleInfo == null) {
            this.bundleInfo = getIntent().getExtras();
        }
        String string = this.bundleInfo.getString(Keys.TYPE);
        if (StringUtility.isNullOrEmpty(string)) {
            shareItem(this.bundleInfo.getString(Keys.MESSAGE), this.bundleInfo.getString(Keys.URL), this.bundleInfo.getString(Keys.IMAGE_PATH), string, this.bundleInfo.getStringArray(Keys.EXCLUDE_LIST));
        } else if (string.equals(Keys.Sharing.SMS)) {
            shareWithSMS(this.bundleInfo);
        } else if (string.equals(Keys.Sharing.MAIL)) {
            shareWithEmail(this.bundleInfo);
        } else if (string.equals(Keys.Sharing.WHATS_APP)) {
            shareOnWhatsApp(this.bundleInfo);
        } else {
            Debug.log(CommonDefines.SHARING_TAG, "Sharing not implemented for this type " + string);
        }
    }

    void shareOnWhatsApp(Bundle bundle) {
        String string = bundle.getString(Keys.MESSAGE);
        String string2 = bundle.getString(Keys.IMAGE_PATH);
        String mimeType = getMimeType(Keys.Sharing.WHATS_APP, !StringUtility.isNullOrEmpty(string2));
        Intent intent = new Intent("android.intent.action.SEND");
        if (string != null) {
            intent.putExtra("android.intent.extra.TEXT", string);
        }
        if (string2 != null) {
            intent.putExtra("android.intent.extra.STREAM", Uri.parse(string2));
        }
        intent.setType(mimeType);
        intent.setPackage(Package.WHATS_APP);
        startActivityForResult(intent, 4);
    }

    void shareWithEmail(Bundle bundle) {
        int i = 0;
        CharSequence charSequence = bundle.getCharSequence(Keys.BODY);
        String string = bundle.getString(Keys.SUBJECT);
        String[] stringArray = bundle.getStringArray(Keys.Sharing.TO_RECIPIENT_LIST);
        String[] stringArray2 = bundle.getStringArray(Keys.Sharing.CC_RECIPIENT_LIST);
        String[] stringArray3 = bundle.getStringArray(Keys.Sharing.BCC_RECIPIENT_LIST);
        String[] stringArray4 = bundle.getStringArray(Keys.ATTACHMENT);
        String mimeType = getMimeType(Keys.Sharing.MAIL, false);
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType(mimeType);
        intent.putExtra("android.intent.extra.TEXT", charSequence);
        intent.putExtra("android.intent.extra.SUBJECT", string);
        intent.putExtra("android.intent.extra.EMAIL", stringArray);
        intent.putExtra("android.intent.extra.CC", stringArray2);
        intent.putExtra("android.intent.extra.BCC", stringArray3);
        if (stringArray4 != null) {
            intent.setAction("android.intent.action.SEND_MULTIPLE");
            ArrayList arrayList = new ArrayList();
            int length = stringArray4.length;
            while (i < length) {
                arrayList.add(Uri.parse(stringArray4[i]));
                i++;
            }
            intent.putParcelableArrayListExtra("android.intent.extra.STREAM", arrayList);
        }
        startActivityForResult(intent, 2);
    }

    void shareWithSMS(Bundle bundle) {
        String string = bundle.getString(Keys.MESSAGE);
        String[] stringArray = bundle.getStringArray(Keys.Sharing.TO_RECIPIENT_LIST);
        String str = BuildConfig.FLAVOR;
        if (stringArray != null) {
            int length = stringArray.length;
            int i = 0;
            while (i < length) {
                i++;
                str = new StringBuilder(String.valueOf(str)).append(stringArray[i]).append(";").toString();
            }
        }
        Intent intent = new Intent("android.intent.action.SENDTO", Uri.parse(new StringBuilder(Keys.Intent.SCHEME_SEND_TO).append(str).toString()));
        intent.putExtra(Keys.Intent.SMS_BODY, string);
        startActivityForResult(intent, 3);
    }
}
