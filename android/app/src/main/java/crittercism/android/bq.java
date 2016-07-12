package crittercism.android;

import java.io.File;
import java.io.IOException;
import spacemadness.com.lunarconsole.BuildConfig;

public class bq {
    protected File f508a;

    public bq(File file) {
        this.f508a = file;
    }

    public Object m534a() {
        Object obj = BuildConfig.FLAVOR;
        try {
            obj = eb.m766b(this.f508a);
        } catch (IOException e) {
        }
        return obj;
    }
}
