package crittercism.android;

import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import crittercism.android.bx.C1033b;
import crittercism.android.bx.C1034c;
import crittercism.android.bx.C1035d;
import crittercism.android.bx.C1037f;
import crittercism.android.bx.C1039h;
import crittercism.android.bx.C1041j;
import crittercism.android.bx.C1042k;
import crittercism.android.bx.C1044m;
import crittercism.android.bx.C1046o;
import crittercism.android.bx.C1047p;
import crittercism.android.bx.C1049r;
import crittercism.android.bx.C1050s;
import crittercism.android.bx.C1054w;
import crittercism.android.bx.C1055x;
import crittercism.android.bx.C1057z;
import crittercism.android.bx.aa;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public final class cd implements ch {
    private JSONObject f598a;
    private JSONObject f599b;
    private JSONArray f600c;
    private JSONArray f601d;
    private File f602e;
    private String f603f;

    public cd(File file, bs bsVar, bs bsVar2, bs bsVar3, bs bsVar4) {
        file.exists();
        this.f603f = cg.f624a.m663a();
        this.f602e = file;
        this.f598a = new bu().m557a(new C1034c()).m557a(new C1033b()).m557a(new C1035d()).m557a(new C1037f()).m557a(new C1046o()).m557a(new C1047p()).m557a(new C1041j()).m557a(new C1039h()).m557a(new C1057z()).m557a(new aa()).m557a(new C1042k()).m557a(new C1049r()).m557a(new C1044m()).m557a(new C1050s()).m557a(new C1054w()).m557a(new C1055x()).m558a();
        Map hashMap = new HashMap();
        hashMap.put("crashed_session", new bo(bsVar).f507a);
        if (bsVar2.m553b() > 0) {
            hashMap.put("previous_session", new bo(bsVar2).f507a);
        }
        this.f599b = new JSONObject(hashMap);
        this.f600c = new bo(bsVar3).f507a;
        this.f601d = new bo(bsVar4).f507a;
    }

    public final void m656a(OutputStream outputStream) {
        Map hashMap = new HashMap();
        hashMap.put("app_state", this.f598a);
        hashMap.put("breadcrumbs", this.f599b);
        hashMap.put("endpoints", this.f600c);
        hashMap.put("systemBreadcrumbs", this.f601d);
        Object obj = new byte[0];
        Object obj2 = new byte[AccessibilityNodeInfoCompat.ACTION_SCROLL_BACKWARD];
        InputStream fileInputStream = new FileInputStream(this.f602e);
        while (true) {
            int read = fileInputStream.read(obj2);
            if (read != -1) {
                Object obj3 = new byte[(obj.length + read)];
                System.arraycopy(obj, 0, obj3, 0, obj.length);
                System.arraycopy(obj2, 0, obj3, obj.length, read);
                obj = obj3;
            } else {
                fileInputStream.close();
                Map hashMap2 = new HashMap();
                hashMap2.put("dmp_name", this.f602e.getName());
                hashMap2.put("dmp_file", cr.m670a(obj));
                hashMap.put("ndk_dmp_info", new JSONObject(hashMap2));
                outputStream.write(new JSONObject(hashMap).toString().getBytes());
                return;
            }
        }
    }

    public final String m657e() {
        return this.f603f;
    }
}
