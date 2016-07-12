package com.google.android.gms.internal;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.text.TextUtils;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.google.android.gms.ads.internal.overlay.AdLauncherIntentInfoParcel;
import com.google.android.gms.ads.internal.zze;
import com.google.android.gms.ads.internal.zzp;
import com.voxelbusters.nativeplugins.defines.Keys;
import com.voxelbusters.nativeplugins.defines.Keys.Scheme;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@zzgr
public final class zzdr implements zzdk {
    private final zze zzxQ;
    private final zzfc zzxR;
    private final zzdm zzxT;

    public static class zza extends zzhz {
        private final String zzF;
        private final zziz zzoM;
        private final String zzxU;
        private final String zzxV;
        private final int zzxW;

        public zza(zziz com_google_android_gms_internal_zziz, String str) {
            this.zzxU = "play.google.com";
            this.zzxV = "market";
            this.zzxW = 10;
            this.zzoM = com_google_android_gms_internal_zziz;
            this.zzF = str;
        }

        public void onStop() {
        }

        public Intent zzaa(String str) {
            Uri parse = Uri.parse(str);
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addFlags(268435456);
            intent.setData(parse);
            return intent;
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void zzbn() {
            /*
            r7 = this;
            r0 = 0;
            r2 = r7.zzF;
            r3 = r0;
        L_0x0004:
            r0 = 10;
            if (r3 >= r0) goto L_0x0019;
        L_0x0008:
            r0 = new java.net.URL;	 Catch:{ IndexOutOfBoundsException -> 0x0092, IOException -> 0x00cc, RuntimeException -> 0x00e7 }
            r0.<init>(r2);	 Catch:{ IndexOutOfBoundsException -> 0x0092, IOException -> 0x00cc, RuntimeException -> 0x00e7 }
            r1 = "play.google.com";
            r4 = r0.getHost();	 Catch:{ IndexOutOfBoundsException -> 0x0092, IOException -> 0x00cc, RuntimeException -> 0x00e7 }
            r1 = r1.equalsIgnoreCase(r4);	 Catch:{ IndexOutOfBoundsException -> 0x0092, IOException -> 0x00cc, RuntimeException -> 0x00e7 }
            if (r1 == 0) goto L_0x002b;
        L_0x0019:
            r0 = r7.zzaa(r2);
            r1 = com.google.android.gms.ads.internal.zzp.zzbv();
            r2 = r7.zzoM;
            r2 = r2.getContext();
            r1.zzb(r2, r0);
            return;
        L_0x002b:
            r1 = "market";
            r4 = r0.getProtocol();	 Catch:{ IndexOutOfBoundsException -> 0x0092, IOException -> 0x00cc, RuntimeException -> 0x00e7 }
            r1 = r1.equalsIgnoreCase(r4);	 Catch:{ IndexOutOfBoundsException -> 0x0092, IOException -> 0x00cc, RuntimeException -> 0x00e7 }
            if (r1 != 0) goto L_0x0019;
        L_0x0037:
            r0 = r0.openConnection();	 Catch:{ IndexOutOfBoundsException -> 0x0092, IOException -> 0x00cc, RuntimeException -> 0x00e7 }
            r0 = (java.net.HttpURLConnection) r0;	 Catch:{ IndexOutOfBoundsException -> 0x0092, IOException -> 0x00cc, RuntimeException -> 0x00e7 }
            r1 = com.google.android.gms.ads.internal.zzp.zzbv();	 Catch:{ all -> 0x00c7 }
            r4 = r7.zzoM;	 Catch:{ all -> 0x00c7 }
            r4 = r4.getContext();	 Catch:{ all -> 0x00c7 }
            r5 = r7.zzoM;	 Catch:{ all -> 0x00c7 }
            r5 = r5.zzhh();	 Catch:{ all -> 0x00c7 }
            r5 = r5.zzJu;	 Catch:{ all -> 0x00c7 }
            r6 = 0;
            r1.zza(r4, r5, r6, r0);	 Catch:{ all -> 0x00c7 }
            r1 = r0.getResponseCode();	 Catch:{ all -> 0x00c7 }
            r4 = r0.getHeaderFields();	 Catch:{ all -> 0x00c7 }
            r5 = 300; // 0x12c float:4.2E-43 double:1.48E-321;
            if (r1 < r5) goto L_0x0102;
        L_0x005f:
            r5 = 399; // 0x18f float:5.59E-43 double:1.97E-321;
            if (r1 > r5) goto L_0x0102;
        L_0x0063:
            r1 = 0;
            r5 = "Location";
            r5 = r4.containsKey(r5);	 Catch:{ all -> 0x00c7 }
            if (r5 == 0) goto L_0x00ad;
        L_0x006c:
            r1 = "Location";
            r1 = r4.get(r1);	 Catch:{ all -> 0x00c7 }
            r1 = (java.util.List) r1;	 Catch:{ all -> 0x00c7 }
        L_0x0074:
            if (r1 == 0) goto L_0x0102;
        L_0x0076:
            r4 = r1.size();	 Catch:{ all -> 0x00c7 }
            if (r4 <= 0) goto L_0x0102;
        L_0x007c:
            r4 = 0;
            r1 = r1.get(r4);	 Catch:{ all -> 0x00c7 }
            r1 = (java.lang.String) r1;	 Catch:{ all -> 0x00c7 }
        L_0x0083:
            r4 = android.text.TextUtils.isEmpty(r1);	 Catch:{ all -> 0x00c7 }
            if (r4 == 0) goto L_0x00be;
        L_0x0089:
            r1 = "Arrived at landing page, this ideally should not happen. Will open it in browser.";
            com.google.android.gms.ads.internal.util.client.zzb.zzaH(r1);	 Catch:{ all -> 0x00c7 }
            r0.disconnect();	 Catch:{ IndexOutOfBoundsException -> 0x0092, IOException -> 0x00cc, RuntimeException -> 0x00e7 }
            goto L_0x0019;
        L_0x0092:
            r0 = move-exception;
            r1 = r2;
        L_0x0094:
            r2 = new java.lang.StringBuilder;
            r2.<init>();
            r3 = "Error while parsing ping URL: ";
            r2 = r2.append(r3);
            r2 = r2.append(r1);
            r2 = r2.toString();
            com.google.android.gms.ads.internal.util.client.zzb.zzd(r2, r0);
            r2 = r1;
            goto L_0x0019;
        L_0x00ad:
            r5 = "location";
            r5 = r4.containsKey(r5);	 Catch:{ all -> 0x00c7 }
            if (r5 == 0) goto L_0x0074;
        L_0x00b5:
            r1 = "location";
            r1 = r4.get(r1);	 Catch:{ all -> 0x00c7 }
            r1 = (java.util.List) r1;	 Catch:{ all -> 0x00c7 }
            goto L_0x0074;
        L_0x00be:
            r0.disconnect();	 Catch:{ IndexOutOfBoundsException -> 0x0106, IOException -> 0x0108, RuntimeException -> 0x010a }
            r0 = r3 + 1;
            r2 = r1;
            r3 = r0;
            goto L_0x0004;
        L_0x00c7:
            r1 = move-exception;
            r0.disconnect();	 Catch:{ IndexOutOfBoundsException -> 0x0092, IOException -> 0x00cc, RuntimeException -> 0x00e7 }
            throw r1;	 Catch:{ IndexOutOfBoundsException -> 0x0092, IOException -> 0x00cc, RuntimeException -> 0x00e7 }
        L_0x00cc:
            r0 = move-exception;
            r1 = r2;
        L_0x00ce:
            r2 = new java.lang.StringBuilder;
            r2.<init>();
            r3 = "Error while pinging URL: ";
            r2 = r2.append(r3);
            r2 = r2.append(r1);
            r2 = r2.toString();
            com.google.android.gms.ads.internal.util.client.zzb.zzd(r2, r0);
            r2 = r1;
            goto L_0x0019;
        L_0x00e7:
            r0 = move-exception;
            r1 = r2;
        L_0x00e9:
            r2 = new java.lang.StringBuilder;
            r2.<init>();
            r3 = "Error while pinging URL: ";
            r2 = r2.append(r3);
            r2 = r2.append(r1);
            r2 = r2.toString();
            com.google.android.gms.ads.internal.util.client.zzb.zzd(r2, r0);
            r2 = r1;
            goto L_0x0019;
        L_0x0102:
            r1 = "";
            goto L_0x0083;
        L_0x0106:
            r0 = move-exception;
            goto L_0x0094;
        L_0x0108:
            r0 = move-exception;
            goto L_0x00ce;
        L_0x010a:
            r0 = move-exception;
            goto L_0x00e9;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzdr.zza.zzbn():void");
        }
    }

    public static class zzb {
        public Intent zza(Intent intent, ResolveInfo resolveInfo) {
            Intent intent2 = new Intent(intent);
            intent2.setClassName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name);
            return intent2;
        }

        public ResolveInfo zza(Context context, Intent intent) {
            return zza(context, intent, new ArrayList());
        }

        public ResolveInfo zza(Context context, Intent intent, ArrayList<ResolveInfo> arrayList) {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                return null;
            }
            ResolveInfo resolveInfo;
            Collection queryIntentActivities = packageManager.queryIntentActivities(intent, AccessibilityNodeInfoCompat.ACTION_CUT);
            ResolveInfo resolveActivity = packageManager.resolveActivity(intent, AccessibilityNodeInfoCompat.ACTION_CUT);
            if (!(queryIntentActivities == null || resolveActivity == null)) {
                for (int i = 0; i < queryIntentActivities.size(); i++) {
                    resolveInfo = (ResolveInfo) queryIntentActivities.get(i);
                    if (resolveActivity != null && resolveActivity.activityInfo.name.equals(resolveInfo.activityInfo.name)) {
                        resolveInfo = resolveActivity;
                        break;
                    }
                }
            }
            resolveInfo = null;
            arrayList.addAll(queryIntentActivities);
            return resolveInfo;
        }

        public Intent zzb(Context context, Map<String, String> map) {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            String str = (String) map.get("u");
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            Uri parse = Uri.parse(str);
            boolean parseBoolean = Boolean.parseBoolean((String) map.get("use_first_package"));
            boolean parseBoolean2 = Boolean.parseBoolean((String) map.get("use_running_process"));
            Uri build = Scheme.HTTP.equalsIgnoreCase(parse.getScheme()) ? parse.buildUpon().scheme(Scheme.HTTPS).build() : Scheme.HTTPS.equalsIgnoreCase(parse.getScheme()) ? parse.buildUpon().scheme(Scheme.HTTP).build() : null;
            ArrayList arrayList = new ArrayList();
            Intent zzd = zzd(parse);
            Intent zzd2 = zzd(build);
            ResolveInfo zza = zza(context, zzd, arrayList);
            if (zza != null) {
                return zza(zzd, zza);
            }
            if (zzd2 != null) {
                ResolveInfo zza2 = zza(context, zzd2);
                if (zza2 != null) {
                    Intent zza3 = zza(zzd, zza2);
                    if (zza(context, zza3) != null) {
                        return zza3;
                    }
                }
            }
            if (arrayList.size() == 0) {
                return zzd;
            }
            if (parseBoolean2 && activityManager != null) {
                List<RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
                if (runningAppProcesses != null) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ResolveInfo resolveInfo = (ResolveInfo) it.next();
                        for (RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                            if (runningAppProcessInfo.processName.equals(resolveInfo.activityInfo.packageName)) {
                                return zza(zzd, resolveInfo);
                            }
                        }
                    }
                }
            }
            return parseBoolean ? zza(zzd, (ResolveInfo) arrayList.get(0)) : zzd;
        }

        public Intent zzd(Uri uri) {
            if (uri == null) {
                return null;
            }
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addFlags(268435456);
            intent.setData(uri);
            intent.setAction("android.intent.action.VIEW");
            return intent;
        }
    }

    public zzdr(zzdm com_google_android_gms_internal_zzdm, zze com_google_android_gms_ads_internal_zze, zzfc com_google_android_gms_internal_zzfc) {
        this.zzxT = com_google_android_gms_internal_zzdm;
        this.zzxQ = com_google_android_gms_ads_internal_zze;
        this.zzxR = com_google_android_gms_internal_zzfc;
    }

    private static void zza(Context context, Map<String, String> map) {
        if (TextUtils.isEmpty((String) map.get("u"))) {
            com.google.android.gms.ads.internal.util.client.zzb.zzaH("Destination url cannot be empty.");
            return;
        }
        try {
            zzp.zzbv().zzb(context, new zzb().zzb(context, map));
        } catch (ActivityNotFoundException e) {
            com.google.android.gms.ads.internal.util.client.zzb.zzaH(e.getMessage());
        }
    }

    private static boolean zzc(Map<String, String> map) {
        return "1".equals(map.get("custom_close"));
    }

    private static int zzd(Map<String, String> map) {
        String str = (String) map.get("o");
        if (str != null) {
            if ("p".equalsIgnoreCase(str)) {
                return zzp.zzbx().zzgH();
            }
            if ("l".equalsIgnoreCase(str)) {
                return zzp.zzbx().zzgG();
            }
            if ("c".equalsIgnoreCase(str)) {
                return zzp.zzbx().zzgI();
            }
        }
        return -1;
    }

    private static void zze(zziz com_google_android_gms_internal_zziz, Map<String, String> map) {
        String str = (String) map.get("u");
        if (TextUtils.isEmpty(str)) {
            com.google.android.gms.ads.internal.util.client.zzb.zzaH("Destination url cannot be empty.");
        } else {
            new zza(com_google_android_gms_internal_zziz, str).zzgz();
        }
    }

    private void zzm(boolean z) {
        if (this.zzxR != null) {
            this.zzxR.zzn(z);
        }
    }

    public void zza(zziz com_google_android_gms_internal_zziz, Map<String, String> map) {
        String str = (String) map.get("a");
        if (str == null) {
            com.google.android.gms.ads.internal.util.client.zzb.zzaH("Action missing from an open GMSG.");
        } else if (this.zzxQ == null || this.zzxQ.zzbe()) {
            zzja zzhe = com_google_android_gms_internal_zziz.zzhe();
            if ("expand".equalsIgnoreCase(str)) {
                if (com_google_android_gms_internal_zziz.zzhi()) {
                    com.google.android.gms.ads.internal.util.client.zzb.zzaH("Cannot expand WebView that is already expanded.");
                    return;
                }
                zzm(false);
                zzhe.zza(zzc(map), zzd(map));
            } else if ("webapp".equalsIgnoreCase(str)) {
                str = (String) map.get("u");
                zzm(false);
                if (str != null) {
                    zzhe.zza(zzc(map), zzd(map), str);
                } else {
                    zzhe.zza(zzc(map), zzd(map), (String) map.get(Keys.HTML), (String) map.get("baseurl"));
                }
            } else if ("in_app_purchase".equalsIgnoreCase(str)) {
                str = (String) map.get("product_id");
                String str2 = (String) map.get("report_urls");
                if (this.zzxT == null) {
                    return;
                }
                if (str2 == null || str2.isEmpty()) {
                    this.zzxT.zza(str, new ArrayList());
                } else {
                    this.zzxT.zza(str, new ArrayList(Arrays.asList(str2.split(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR))));
                }
            } else if ("app".equalsIgnoreCase(str) && "true".equalsIgnoreCase((String) map.get("play_store"))) {
                zze(com_google_android_gms_internal_zziz, map);
            } else if ("app".equalsIgnoreCase(str) && "true".equalsIgnoreCase((String) map.get("system_browser"))) {
                zza(com_google_android_gms_internal_zziz.getContext(), (Map) map);
            } else {
                zzm(true);
                com_google_android_gms_internal_zziz.zzhg();
                str = (String) map.get("u");
                zzhe.zza(new AdLauncherIntentInfoParcel((String) map.get("i"), !TextUtils.isEmpty(str) ? zzp.zzbv().zza(com_google_android_gms_internal_zziz, str) : str, (String) map.get("m"), (String) map.get("p"), (String) map.get("c"), (String) map.get("f"), (String) map.get("e")));
            }
        } else {
            this.zzxQ.zzp((String) map.get("u"));
        }
    }
}
