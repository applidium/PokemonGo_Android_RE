package crittercism.android;

import java.io.File;
import org.json.JSONArray;
import org.json.JSONException;

public final class bz extends bq {

    /* renamed from: crittercism.android.bz.a */
    public static final class C1058a extends cj {
        public final bq m628a(File file) {
            return new bz((byte) 0);
        }
    }

    private bz(File file) {
        super(file);
    }

    public final Object m629a() {
        try {
            return new JSONArray((String) super.m534a());
        } catch (JSONException e) {
            return null;
        }
    }
}
