package spacemadness.com.lunarconsole.utils;

import org.apache.commons.io.IOUtils;
import spacemadness.com.lunarconsole.debug.Log;

public class StackTrace {
    public static final String MARKER_ASSETS = "/Assets/";
    public static final String MARKER_AT = " (at ";

    public static String optimize(String str) {
        if (str != null) {
            try {
                if (str.length() > 0) {
                    String[] split = str.split(IOUtils.LINE_SEPARATOR_UNIX);
                    Object[] objArr = new String[split.length];
                    for (int i = 0; i < split.length; i++) {
                        objArr[i] = optimizeLine(split[i]);
                    }
                    str = StringUtils.Join(objArr, IOUtils.LINE_SEPARATOR_UNIX);
                }
            } catch (Throwable e) {
                Log.m862e(e, "Error while optimizing stacktrace: %s", str);
            }
        }
        return str;
    }

    private static String optimizeLine(String str) {
        int indexOf = str.indexOf(MARKER_AT);
        if (indexOf == -1) {
            return str;
        }
        int lastIndexOf = str.lastIndexOf(MARKER_ASSETS);
        return lastIndexOf != -1 ? str.substring(0, indexOf + MARKER_AT.length()) + str.substring(lastIndexOf + 1) : str;
    }
}
