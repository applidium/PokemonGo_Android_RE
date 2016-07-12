package android.support.v4.provider;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.provider.DocumentsContract;
import android.util.Log;
import java.util.ArrayList;

class DocumentsContractApi21 {
    private static final String TAG = "DocumentFile";

    DocumentsContractApi21() {
    }

    private static void closeQuietly(AutoCloseable autoCloseable) {
        if (autoCloseable != null) {
            try {
                autoCloseable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
            }
        }
    }

    public static Uri createDirectory(Context context, Uri uri, String str) {
        return createFile(context, uri, "vnd.android.document/directory", str);
    }

    public static Uri createFile(Context context, Uri uri, String str, String str2) {
        return DocumentsContract.createDocument(context.getContentResolver(), uri, str, str2);
    }

    public static Uri[] listFiles(Context context, Uri uri) {
        Object e;
        Throwable th;
        ContentResolver contentResolver = context.getContentResolver();
        Uri buildChildDocumentsUriUsingTree = DocumentsContract.buildChildDocumentsUriUsingTree(uri, DocumentsContract.getDocumentId(uri));
        ArrayList arrayList = new ArrayList();
        AutoCloseable query;
        try {
            query = contentResolver.query(buildChildDocumentsUriUsingTree, new String[]{"document_id"}, null, null, null);
            while (query.moveToNext()) {
                try {
                    arrayList.add(DocumentsContract.buildDocumentUriUsingTree(uri, query.getString(0)));
                } catch (Exception e2) {
                    e = e2;
                }
            }
            closeQuietly(query);
        } catch (Exception e3) {
            e = e3;
            query = null;
            try {
                Log.w(TAG, "Failed query: " + e);
                closeQuietly(query);
                return (Uri[]) arrayList.toArray(new Uri[arrayList.size()]);
            } catch (Throwable th2) {
                th = th2;
                closeQuietly(query);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            query = null;
            closeQuietly(query);
            throw th;
        }
        return (Uri[]) arrayList.toArray(new Uri[arrayList.size()]);
    }

    public static Uri prepareTreeUri(Uri uri) {
        return DocumentsContract.buildDocumentUriUsingTree(uri, DocumentsContract.getTreeDocumentId(uri));
    }

    public static Uri renameTo(Context context, Uri uri, String str) {
        return DocumentsContract.renameDocument(context.getContentResolver(), uri, str);
    }
}
