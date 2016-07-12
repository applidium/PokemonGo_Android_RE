package com.voxelbusters.nativeplugins.extensions;

import android.database.Cursor;
import android.database.MatrixCursor;
import android.database.MatrixCursor.RowBuilder;
import android.net.Uri;
import android.support.v4.content.FileProvider;
import java.util.Arrays;

public class FileProviderExtended extends FileProvider {
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        Cursor query = super.query(uri, strArr, str, strArr2, str2);
        String[] columnNames = query.getColumnNames();
        String[] strArr3 = null;
        for (Object equals : columnNames) {
            if ("_data".equals(equals)) {
                strArr3 = columnNames;
            }
        }
        if (strArr3 == null) {
            strArr3 = (String[]) Arrays.copyOf(columnNames, columnNames.length + 1);
            strArr3[columnNames.length] = "_data";
        }
        Cursor matrixCursor = new MatrixCursor(strArr3, query.getCount());
        query.moveToPosition(-1);
        while (query.moveToNext()) {
            RowBuilder newRow = matrixCursor.newRow();
            for (int i = 0; i < columnNames.length; i++) {
                newRow.add(query.getString(i));
            }
        }
        return matrixCursor;
    }
}
