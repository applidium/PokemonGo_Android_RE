package android.support.v4.content;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.OperationCanceledException;

class ContentResolverCompatJellybean {
    ContentResolverCompatJellybean() {
    }

    static boolean isFrameworkOperationCanceledException(Exception exception) {
        return exception instanceof OperationCanceledException;
    }

    public static Cursor query(ContentResolver contentResolver, Uri uri, String[] strArr, String str, String[] strArr2, String str2, Object obj) {
        return contentResolver.query(uri, strArr, str, strArr2, str2, (CancellationSignal) obj);
    }
}
