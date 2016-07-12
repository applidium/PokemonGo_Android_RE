package com.crittercism.integrations;

import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import crittercism.android.dx;
import spacemadness.com.lunarconsole.utils.StackTrace;

public class PluginException extends Throwable {
    private static final String EMPTY_STRING = "";
    private static final long serialVersionUID = -1947260712494608235L;
    private String exceptionName;

    private PluginException(String str) {
        super(str);
        this.exceptionName = null;
    }

    public PluginException(String str, String str2) {
        this(EMPTY_STRING, str, str2);
    }

    public PluginException(String str, String str2, String str3) {
        super(str2);
        this.exceptionName = null;
        setExceptionName(checkString(str), checkString(str2));
        setStackTrace(createStackTraceArrayFromStack(checkStringStack(str3)));
    }

    public PluginException(String str, String str2, String[] strArr, String[] strArr2, String[] strArr3, int[] iArr) {
        super(str2);
        this.exceptionName = null;
        setExceptionName(checkString(str), checkString(str2));
        setStackTrace(createStackTraceArrayFromStack(strArr, strArr2, strArr3, iArr));
    }

    private static String checkString(String str) {
        return str == null ? EMPTY_STRING : str;
    }

    private static String[] checkStringStack(String str) {
        return str == null ? new String[0] : str.split("\\r?\\n");
    }

    private StackTraceElement[] createStackTraceArrayFromStack(String[] strArr) {
        StackTraceElement[] stackTraceElementArr;
        int i;
        int i2 = 0;
        if (strArr.length < 2 || strArr[0] == null || strArr[1] == null || !strArr[0].equals(strArr[1])) {
            stackTraceElementArr = null;
            i = 0;
        } else {
            stackTraceElementArr = new StackTraceElement[(strArr.length - 1)];
            i = 1;
        }
        if (i == 0) {
            stackTraceElementArr = new StackTraceElement[strArr.length];
        }
        while (i2 < strArr.length) {
            if (i2 != 0 || i == 0) {
                stackTraceElementArr[i != 0 ? i2 - 1 : i2] = new StackTraceElement(EMPTY_STRING, strArr[i2], EMPTY_STRING, -1);
            }
            i2++;
        }
        return stackTraceElementArr;
    }

    private StackTraceElement[] createStackTraceArrayFromStack(String[] strArr, String[] strArr2, String[] strArr3, int[] iArr) {
        int length = strArr.length;
        StackTraceElement[] stackTraceElementArr = new StackTraceElement[length];
        for (int i = 0; i < length; i++) {
            int i2 = iArr[i];
            if (i2 <= 0) {
                i2 = -1;
            }
            stackTraceElementArr[i] = new StackTraceElement(checkString(strArr[i]), checkString(strArr2[i]), checkString(strArr3[i]), i2);
        }
        return stackTraceElementArr;
    }

    public static PluginException createUnityException(String str, String str2) {
        PluginException pluginException = null;
        try {
            pluginException = unsafeCreateUnityException(str, str2);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            dx.m751a("Unable to log unity exception <" + str + "> " + str2, th);
        }
        return pluginException;
    }

    private static PluginException unsafeCreateUnityException(String str, String str2) {
        String trim;
        String str3 = str == null ? EMPTY_STRING : str;
        if (str2 == null) {
            str2 = EMPTY_STRING;
        }
        int indexOf = str3.indexOf(UpsightEndpoint.SIGNED_MESSAGE_SEPARATOR);
        if (indexOf != -1) {
            trim = str3.substring(0, indexOf).trim();
            if (indexOf + 1 < str3.length()) {
                str3 = str3.substring(indexOf + 1).trim();
            }
        } else {
            trim = str3;
        }
        PluginException pluginException = new PluginException(str3);
        pluginException.exceptionName = trim;
        String trim2 = str2.trim();
        if (trim2.length() == 0) {
            pluginException.setStackTrace(new StackTraceElement[0]);
            return pluginException;
        }
        String[] split = trim2.split("\\r?\\n");
        StackTraceElement[] stackTraceElementArr = new StackTraceElement[split.length];
        for (indexOf = 0; indexOf < split.length; indexOf++) {
            String trim3 = split[indexOf].trim();
            if (trim3.length() != 0) {
                trim = trim3.split(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR)[0];
                int lastIndexOf = trim.lastIndexOf(".");
                if (lastIndexOf == -1) {
                    dx.m754b("Unable to parse unity exception.  No class and method found for frame frame <" + trim3 + ">" + trim2);
                    return null;
                } else if (lastIndexOf == trim.length() - 1) {
                    dx.m754b("Unable to parse unity exception.  Method is zero length for frame <" + trim3 + ">" + trim2);
                    return null;
                } else {
                    String substring = trim.substring(0, lastIndexOf);
                    String substring2 = trim.substring(lastIndexOf + 1);
                    str3 = null;
                    int i = -1;
                    int indexOf2 = trim3.indexOf(StackTrace.MARKER_AT);
                    if (indexOf2 != -1) {
                        trim3 = trim3.substring(indexOf2 + 5, split[indexOf].length() - 1);
                        Object split2 = trim3.split(UpsightEndpoint.SIGNED_MESSAGE_SEPARATOR);
                        if (split2.length >= 2) {
                            str3 = split2[0];
                            try {
                                String str4 = split2[split2.length - 1];
                                i = Integer.parseInt(str4);
                                str3 = trim3.substring(0, (trim3.length() - str4.length()) - 1);
                            } catch (NumberFormatException e) {
                                new StringBuilder("Couldn't parse integer: ").append(split2[1]);
                                dx.m748a();
                            }
                        } else {
                            new StringBuilder("Unable to parse file & line out of Unity stack trace frame: ").append(split2).append(" ::: ").append(split[indexOf]);
                            dx.m753b();
                        }
                    }
                    stackTraceElementArr[indexOf] = new StackTraceElement(substring, substring2, str3, i);
                }
            }
        }
        pluginException.setStackTrace(stackTraceElementArr);
        return pluginException;
    }

    public String getExceptionName() {
        return this.exceptionName;
    }

    public void setExceptionName(String str, String str2) {
        if (str.length() > 0) {
            this.exceptionName = str;
        } else {
            this.exceptionName = "JavaScript Exception";
        }
    }

    public final String toString() {
        String localizedMessage = getLocalizedMessage();
        String exceptionName = getExceptionName();
        return localizedMessage == null ? exceptionName : exceptionName + ": " + localizedMessage;
    }
}
