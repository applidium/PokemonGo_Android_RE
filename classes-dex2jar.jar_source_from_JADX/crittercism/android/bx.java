package crittercism.android;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Debug;
import android.os.Debug.MemoryInfo;
import android.os.Environment;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.location.places.Place;
import com.voxelbusters.nativeplugins.defines.Keys.Twitter;
import java.math.BigInteger;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import spacemadness.com.lunarconsole.BuildConfig;

public final class bx {
    private static at f558a;
    private static Context f559b;
    private static bf f560c;
    private static cb f561d;

    /* renamed from: crittercism.android.bx.a */
    public static final class C1032a implements bw {
        private String f538a;

        public C1032a() {
            String str = null;
            this.f538a = null;
            bx.f560c;
            bx.f559b;
            if (bx.f560c.f410b) {
                str = ((RunningTaskInfo) ((ActivityManager) bx.f559b.getSystemService("activity")).getRunningTasks(1).get(0)).topActivity.flattenToShortString().replace("/", BuildConfig.FLAVOR);
            }
            this.f538a = str;
        }

        public final String m561a() {
            return "activity";
        }

        public final /* bridge */ /* synthetic */ Object m562b() {
            return this.f538a;
        }
    }

    public static final class aa implements bw {
        private Float f539a;

        public aa() {
            this.f539a = null;
            bx.f559b;
            this.f539a = Float.valueOf(bx.f559b.getResources().getDisplayMetrics().ydpi);
        }

        public final String m563a() {
            return "ydpi";
        }

        public final /* bridge */ /* synthetic */ Object m564b() {
            return this.f539a;
        }
    }

    /* renamed from: crittercism.android.bx.b */
    public static final class C1033b implements bw {
        private Integer f540a;

        public C1033b() {
            this.f540a = null;
            bx.f558a;
            this.f540a = Integer.valueOf(bx.f558a.f324b);
        }

        public final String m565a() {
            return "app_version_code";
        }

        public final /* bridge */ /* synthetic */ Object m566b() {
            return this.f540a;
        }
    }

    /* renamed from: crittercism.android.bx.c */
    public static final class C1034c implements bw {
        private String f541a;

        public C1034c() {
            this.f541a = null;
            bx.f558a;
            this.f541a = bx.f558a.f323a;
        }

        public final String m567a() {
            return "app_version";
        }

        public final /* bridge */ /* synthetic */ Object m568b() {
            return this.f541a;
        }
    }

    /* renamed from: crittercism.android.bx.d */
    public static final class C1035d implements bw {
        public final String m569a() {
            return "arch";
        }

        public final /* synthetic */ Object m570b() {
            return System.getProperty("os.arch");
        }
    }

    /* renamed from: crittercism.android.bx.e */
    public static final class C1036e implements bw {
        private Double f542a;

        public C1036e() {
            this.f542a = null;
            bx.f559b;
            double d = 1.0d;
            Intent registerReceiver = bx.f559b.getApplicationContext().registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            int intExtra = registerReceiver.getIntExtra("level", -1);
            double intExtra2 = (double) registerReceiver.getIntExtra("scale", -1);
            if (intExtra >= 0 && intExtra2 > 0.0d) {
                d = ((double) intExtra) / intExtra2;
            }
            this.f542a = Double.valueOf(d);
        }

        public final String m571a() {
            return "battery_level";
        }

        public final /* bridge */ /* synthetic */ Object m572b() {
            return this.f542a;
        }
    }

    /* renamed from: crittercism.android.bx.f */
    public static final class C1037f implements bw {
        public String f543a;

        public C1037f() {
            String networkOperatorName;
            this.f543a = null;
            bx.f559b;
            try {
                networkOperatorName = ((TelephonyManager) bx.f559b.getSystemService("phone")).getNetworkOperatorName();
            } catch (Exception e) {
                networkOperatorName = Build.BRAND;
            }
            this.f543a = networkOperatorName;
            new StringBuilder("carrier == ").append(this.f543a);
            dx.m753b();
        }

        public final String m573a() {
            return "carrier";
        }

        public final /* bridge */ /* synthetic */ Object m574b() {
            return this.f543a;
        }
    }

    /* renamed from: crittercism.android.bx.g */
    static class C1038g implements bw {
        private JSONObject f544a;

        public C1038g(int i) {
            this.f544a = null;
            bx.f559b;
            bx.f560c;
            this.f544a = C1038g.m575a(i);
        }

        private static JSONObject m575a(int i) {
            Object obj = 1;
            if (!bx.f560c.f411c) {
                return null;
            }
            if (!ConnectivityManager.isNetworkTypeValid(i)) {
                return null;
            }
            NetworkInfo networkInfo = ((ConnectivityManager) bx.f559b.getSystemService("connectivity")).getNetworkInfo(i);
            JSONObject jSONObject = new JSONObject();
            if (networkInfo != null) {
                try {
                    jSONObject.put("available", networkInfo.isAvailable());
                    jSONObject.put("connected", networkInfo.isConnected());
                    if (!networkInfo.isConnected()) {
                        jSONObject.put("connecting", networkInfo.isConnectedOrConnecting());
                    }
                    jSONObject.put("failover", networkInfo.isFailover());
                    if (i != 0) {
                        obj = null;
                    }
                    if (obj == null) {
                        return jSONObject;
                    }
                    jSONObject.put("roaming", networkInfo.isRoaming());
                    return jSONObject;
                } catch (JSONException e) {
                    dx.m756c();
                    return null;
                }
            }
            jSONObject.put("available", false);
            jSONObject.put("connected", false);
            jSONObject.put("connecting", false);
            jSONObject.put("failover", false);
            if (i != 0) {
                obj = null;
            }
            if (obj == null) {
                return jSONObject;
            }
            jSONObject.put("roaming", false);
            return jSONObject;
        }

        public String m576a() {
            return null;
        }

        public final /* synthetic */ Object m577b() {
            return m578c();
        }

        public JSONObject m578c() {
            return this.f544a;
        }
    }

    /* renamed from: crittercism.android.bx.h */
    public static final class C1039h implements bw {
        private Float f545a;

        public C1039h() {
            this.f545a = null;
            bx.f559b;
            this.f545a = Float.valueOf(bx.f559b.getResources().getDisplayMetrics().density);
        }

        public final String m579a() {
            return "dpi";
        }

        public final /* bridge */ /* synthetic */ Object m580b() {
            return this.f545a;
        }
    }

    /* renamed from: crittercism.android.bx.i */
    public static final class C1040i implements bw {
        private String f546a;

        public C1040i() {
            this.f546a = null;
            try {
                BigInteger.valueOf(-1);
                StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
                this.f546a = BigInteger.valueOf((long) statFs.getAvailableBlocks()).multiply(BigInteger.valueOf((long) statFs.getBlockSize())).toString();
            } catch (ThreadDeath e) {
                throw e;
            } catch (Throwable th) {
                this.f546a = null;
            }
        }

        public final String m581a() {
            return "disk_space_free";
        }

        public final /* bridge */ /* synthetic */ Object m582b() {
            return this.f546a;
        }
    }

    /* renamed from: crittercism.android.bx.j */
    public static final class C1041j implements bw {
        private String f547a;

        public C1041j() {
            this.f547a = null;
            try {
                BigInteger.valueOf(-1);
                StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
                this.f547a = BigInteger.valueOf((long) statFs.getBlockCount()).multiply(BigInteger.valueOf((long) statFs.getBlockSize())).toString();
            } catch (ThreadDeath e) {
                throw e;
            } catch (Throwable th) {
                this.f547a = null;
            }
        }

        public final String m583a() {
            return "disk_space_total";
        }

        public final /* bridge */ /* synthetic */ Object m584b() {
            return this.f547a;
        }
    }

    /* renamed from: crittercism.android.bx.k */
    public static final class C1042k implements bw {
        public String f548a;

        public C1042k() {
            this.f548a = null;
            bx.f559b;
            this.f548a = bx.f559b.getResources().getConfiguration().locale.getLanguage();
            if (this.f548a == null || this.f548a.length() == 0) {
                this.f548a = "en";
            }
        }

        public final String m585a() {
            return "locale";
        }

        public final /* bridge */ /* synthetic */ Object m586b() {
            return this.f548a;
        }
    }

    /* renamed from: crittercism.android.bx.l */
    public static final class C1043l implements bw {
        private JSONArray f549a;

        public C1043l() {
            this.f549a = null;
            bx.f560c;
            bx.f561d;
            if (bx.f560c.f409a) {
                this.f549a = bx.f561d.m653a();
            }
        }

        public final String m587a() {
            return "logcat";
        }

        public final /* bridge */ /* synthetic */ Object m588b() {
            return this.f549a;
        }
    }

    /* renamed from: crittercism.android.bx.m */
    public static final class C1044m implements bw {
        private Long f550a;

        public C1044m() {
            this.f550a = null;
            this.f550a = Long.valueOf(Runtime.getRuntime().maxMemory());
        }

        public final String m589a() {
            return "memory_total";
        }

        public final /* bridge */ /* synthetic */ Object m590b() {
            return this.f550a;
        }
    }

    /* renamed from: crittercism.android.bx.n */
    public static final class C1045n implements bw {
        private Integer f551a;

        public C1045n() {
            this.f551a = null;
            MemoryInfo memoryInfo = new MemoryInfo();
            Debug.getMemoryInfo(memoryInfo);
            this.f551a = Integer.valueOf((memoryInfo.otherPss + (memoryInfo.dalvikPss + memoryInfo.nativePss)) * Place.TYPE_SUBLOCALITY_LEVEL_2);
        }

        public final String m591a() {
            return "memory_usage";
        }

        public final /* bridge */ /* synthetic */ Object m592b() {
            return this.f551a;
        }
    }

    /* renamed from: crittercism.android.bx.o */
    public static final class C1046o implements bw {
        public Integer f552a;

        public C1046o() {
            this.f552a = Integer.valueOf(0);
            bx.f559b;
            try {
                String networkOperator = ((TelephonyManager) bx.f559b.getSystemService("phone")).getNetworkOperator();
                if (networkOperator != null) {
                    this.f552a = Integer.valueOf(Integer.parseInt(networkOperator.substring(0, 3)));
                }
                new StringBuilder("mobileCountryCode == ").append(this.f552a);
                dx.m753b();
            } catch (Exception e) {
            }
        }

        public final String m593a() {
            return "mobile_country_code";
        }

        public final /* bridge */ /* synthetic */ Object m594b() {
            return this.f552a;
        }
    }

    /* renamed from: crittercism.android.bx.p */
    public static final class C1047p implements bw {
        public Integer f553a;

        public C1047p() {
            this.f553a = Integer.valueOf(0);
            bx.f559b;
            try {
                String networkOperator = ((TelephonyManager) bx.f559b.getSystemService("phone")).getNetworkOperator();
                if (networkOperator != null) {
                    this.f553a = Integer.valueOf(Integer.parseInt(networkOperator.substring(3)));
                }
                new StringBuilder("mobileNetworkCode == ").append(this.f553a);
                dx.m753b();
            } catch (Exception e) {
            }
        }

        public final String m595a() {
            return "mobile_network_code";
        }

        public final /* bridge */ /* synthetic */ Object m596b() {
            return this.f553a;
        }
    }

    /* renamed from: crittercism.android.bx.q */
    public static final class C1048q extends C1038g {
        public C1048q() {
            super(0);
        }

        public final String m597a() {
            return "mobile_network";
        }

        public final /* bridge */ /* synthetic */ JSONObject m598c() {
            return super.m578c();
        }
    }

    /* renamed from: crittercism.android.bx.r */
    public static final class C1049r implements bw {
        public final String m599a() {
            return Models.CONTENT_DIRECTORY;
        }

        public final /* bridge */ /* synthetic */ Object m600b() {
            return Build.MODEL;
        }
    }

    /* renamed from: crittercism.android.bx.s */
    public static final class C1050s implements bw {
        public final String m601a() {
            return Twitter.NAME;
        }

        public final /* synthetic */ Object m602b() {
            return new String();
        }
    }

    /* renamed from: crittercism.android.bx.t */
    public static final class C1051t implements bw {
        private Integer f554a;

        public C1051t() {
            this.f554a = null;
            bx.f559b;
            int i = bx.f559b.getResources().getConfiguration().orientation;
            if (i == 0) {
                Display defaultDisplay = ((WindowManager) bx.f559b.getSystemService("window")).getDefaultDisplay();
                i = defaultDisplay.getWidth() == defaultDisplay.getHeight() ? 3 : defaultDisplay.getWidth() > defaultDisplay.getHeight() ? 2 : 1;
            }
            this.f554a = Integer.valueOf(i);
        }

        public final String m603a() {
            return "orientation";
        }

        public final /* bridge */ /* synthetic */ Object m604b() {
            return this.f554a;
        }
    }

    /* renamed from: crittercism.android.bx.u */
    public static final class C1052u implements bw {
        private String f555a;

        public C1052u() {
            this.f555a = null;
            try {
                BigInteger.valueOf(-1);
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                this.f555a = BigInteger.valueOf((long) statFs.getAvailableBlocks()).multiply(BigInteger.valueOf((long) statFs.getBlockSize())).toString();
            } catch (ThreadDeath e) {
                throw e;
            } catch (Throwable th) {
                this.f555a = null;
            }
        }

        public final String m605a() {
            return "sd_space_free";
        }

        public final /* bridge */ /* synthetic */ Object m606b() {
            return this.f555a;
        }
    }

    /* renamed from: crittercism.android.bx.v */
    public static final class C1053v implements bw {
        private String f556a;

        public C1053v() {
            this.f556a = null;
            try {
                BigInteger.valueOf(-1);
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                this.f556a = BigInteger.valueOf((long) statFs.getBlockCount()).multiply(BigInteger.valueOf((long) statFs.getBlockSize())).toString();
            } catch (ThreadDeath e) {
                throw e;
            } catch (Throwable th) {
                this.f556a = null;
            }
        }

        public final String m607a() {
            return "sd_space_total";
        }

        public final /* bridge */ /* synthetic */ Object m608b() {
            return this.f556a;
        }
    }

    /* renamed from: crittercism.android.bx.w */
    public static final class C1054w implements bw {
        public final String m609a() {
            return "system";
        }

        public final /* bridge */ /* synthetic */ Object m610b() {
            return "android";
        }
    }

    /* renamed from: crittercism.android.bx.x */
    public static final class C1055x implements bw {
        public final String m611a() {
            return "system_version";
        }

        public final /* bridge */ /* synthetic */ Object m612b() {
            return VERSION.RELEASE;
        }
    }

    /* renamed from: crittercism.android.bx.y */
    public static final class C1056y extends C1038g {
        public C1056y() {
            super(1);
        }

        public final String m613a() {
            return "wifi";
        }

        public final /* bridge */ /* synthetic */ JSONObject m614c() {
            return super.m578c();
        }
    }

    /* renamed from: crittercism.android.bx.z */
    public static final class C1057z implements bw {
        private Float f557a;

        public C1057z() {
            this.f557a = null;
            bx.f559b;
            this.f557a = Float.valueOf(bx.f559b.getResources().getDisplayMetrics().xdpi);
        }

        public final String m615a() {
            return "xdpi";
        }

        public final /* bridge */ /* synthetic */ Object m616b() {
            return this.f557a;
        }
    }

    static {
        f558a = null;
        f559b = null;
        f560c = null;
        f561d = null;
    }

    public static void m618a(Context context) {
        f559b = context;
    }

    public static void m619a(at atVar) {
        f558a = atVar;
    }

    public static void m620a(bf bfVar) {
        f560c = bfVar;
    }

    public static void m621a(cb cbVar) {
        f561d = cbVar;
    }
}
