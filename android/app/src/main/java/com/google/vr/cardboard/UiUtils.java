package com.google.vr.cardboard;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.List;

public class UiUtils {
    private static final String CARDBOARD_CONFIGURE_ACTION = "com.google.vrtoolkit.cardboard.CONFIGURE";
    private static final String CARDBOARD_WEBSITE = "http://google.com/cardboard/cfg";
    private static final String INTENT_KEY = "intent";

    public static class ConfigureSettingsDialogFragment extends DialogFragment {
        private Intent intent;
        private final OnClickListener listener;

        /* renamed from: com.google.vr.cardboard.UiUtils.ConfigureSettingsDialogFragment.1 */
        class C07451 implements OnClickListener {
            C07451() {
            }

            public void onClick(DialogInterface dialogInterface, int i) {
                try {
                    ConfigureSettingsDialogFragment.this.getActivity().startActivity(ConfigureSettingsDialogFragment.this.intent);
                } catch (ActivityNotFoundException e) {
                    UiUtils.showInstallDialog(ConfigureSettingsDialogFragment.this.getActivity());
                }
            }
        }

        public ConfigureSettingsDialogFragment() {
            this.listener = new C07451();
        }

        public void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            this.intent = (Intent) getArguments().getParcelable(UiUtils.INTENT_KEY);
        }

        public Dialog onCreateDialog(Bundle bundle) {
            Builder builder = new Builder(getActivity());
            builder.setTitle(Strings.getString(Strings.DIALOG_TITLE)).setMessage(Strings.getString(Strings.DIALOG_MESSAGE_SETUP)).setPositiveButton(Strings.getString(Strings.SETUP_BUTTON), this.listener).setNegativeButton(Strings.getString(Strings.CANCEL_BUTTON), null);
            return builder.create();
        }
    }

    public static class InstallSettingsDialogFragment extends DialogFragment {
        private final OnClickListener listener;

        /* renamed from: com.google.vr.cardboard.UiUtils.InstallSettingsDialogFragment.1 */
        class C07461 implements OnClickListener {
            C07461() {
            }

            public void onClick(DialogInterface dialogInterface, int i) {
                try {
                    InstallSettingsDialogFragment.this.getActivity().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(UiUtils.CARDBOARD_WEBSITE)));
                } catch (ActivityNotFoundException e) {
                    Toast.makeText(InstallSettingsDialogFragment.this.getActivity().getApplicationContext(), Strings.getString(Strings.NO_BROWSER_TEXT), 1).show();
                }
            }
        }

        public InstallSettingsDialogFragment() {
            this.listener = new C07461();
        }

        public Dialog onCreateDialog(Bundle bundle) {
            Builder builder = new Builder(getActivity());
            builder.setTitle(Strings.getString(Strings.DIALOG_TITLE)).setMessage(Strings.getString(Strings.DIALOG_MESSAGE_NO_CARDBOARD)).setPositiveButton(Strings.getString(Strings.GO_TO_PLAYSTORE_BUTTON), this.listener).setNegativeButton(Strings.getString(Strings.CANCEL_BUTTON), null);
            return builder.create();
        }
    }

    static void launchOrInstallCardboard(Context context) {
        launchOrInstallCardboard(context, true);
    }

    public static void launchOrInstallCardboard(Context context, boolean z) {
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent();
        intent.setAction(CARDBOARD_CONFIGURE_ACTION);
        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 0);
        List arrayList = new ArrayList();
        for (ResolveInfo resolveInfo : queryIntentActivities) {
            String str = resolveInfo.activityInfo.packageName;
            if (str.startsWith("com.google.")) {
                Intent intent2 = new Intent(intent);
                intent2.setClassName(str, resolveInfo.activityInfo.name);
                arrayList.add(intent2);
            }
        }
        if (arrayList.isEmpty()) {
            showInstallDialog(context);
            return;
        }
        Intent intent3 = arrayList.size() == 1 ? (Intent) arrayList.get(0) : intent;
        if (z) {
            showConfigureDialog(context, intent3);
        } else {
            context.startActivity(intent3);
        }
    }

    private static void showConfigureDialog(Context context, Intent intent) {
        FragmentManager fragmentManager = ((Activity) context).getFragmentManager();
        DialogFragment configureSettingsDialogFragment = new ConfigureSettingsDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable(INTENT_KEY, intent);
        configureSettingsDialogFragment.setArguments(bundle);
        configureSettingsDialogFragment.show(fragmentManager, "ConfigureCardboardDialog");
    }

    private static void showInstallDialog(Context context) {
        new InstallSettingsDialogFragment().show(((Activity) context).getFragmentManager(), "InstallCardboardDialog");
    }
}
