package crittercism.android;

import java.io.OutputStream;
import org.json.JSONArray;

public abstract class ci extends bp {
    public abstract JSONArray m511a();

    public final void m512a(OutputStream outputStream) {
        String jSONArray = m511a().toString();
        new StringBuilder("BREADCRUMB WRITING ").append(jSONArray);
        dx.m753b();
        outputStream.write(jSONArray.getBytes());
    }
}
