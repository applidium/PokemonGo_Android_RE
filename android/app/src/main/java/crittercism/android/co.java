package crittercism.android;

import com.crittercism.error.CRXMLHttpRequestException;

public enum co {
    Generic,
    NSURLConnection,
    ASI,
    Android,
    XMLHttpRequest;

    public static int m667a(Throwable th) {
        return th instanceof CRXMLHttpRequestException ? XMLHttpRequest.ordinal() : Android.ordinal();
    }
}
