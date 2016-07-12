package crittercism.android;

import crittercism.android.bx.C1042k;
import java.io.OutputStream;
import org.json.JSONException;
import org.json.JSONObject;

public final class bm implements ch {
    private JSONObject f500a;
    private String f501b;

    public bm(au auVar) {
        this.f501b = cg.f624a.m663a();
        try {
            this.f500a = new JSONObject().put("appID", auVar.m334a()).put("deviceID", auVar.m336c()).put("crPlatform", "android").put("crVersion", auVar.m337d()).put("deviceModel", auVar.m343j()).put("osName", "android").put("osVersion", auVar.m344k()).put("carrier", auVar.m339f()).put("mobileCountryCode", auVar.m340g()).put("mobileNetworkCode", auVar.m341h()).put("appVersion", auVar.m335b()).put("locale", new C1042k().f548a);
        } catch (JSONException e) {
        }
    }

    public final void m528a(OutputStream outputStream) {
        outputStream.write(this.f500a.toString().getBytes());
    }

    public final String m529e() {
        return this.f501b;
    }
}
