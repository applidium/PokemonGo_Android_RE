package android.support.v4.widget;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import spacemadness.com.lunarconsole.BuildConfig;

public class SimpleCursorAdapter extends ResourceCursorAdapter {
    private CursorToStringConverter mCursorToStringConverter;
    protected int[] mFrom;
    String[] mOriginalFrom;
    private int mStringConversionColumn;
    protected int[] mTo;
    private ViewBinder mViewBinder;

    public interface CursorToStringConverter {
        CharSequence convertToString(Cursor cursor);
    }

    public interface ViewBinder {
        boolean setViewValue(View view, Cursor cursor, int i);
    }

    @Deprecated
    public SimpleCursorAdapter(Context context, int i, Cursor cursor, String[] strArr, int[] iArr) {
        super(context, i, cursor);
        this.mStringConversionColumn = -1;
        this.mTo = iArr;
        this.mOriginalFrom = strArr;
        findColumns(strArr);
    }

    public SimpleCursorAdapter(Context context, int i, Cursor cursor, String[] strArr, int[] iArr, int i2) {
        super(context, i, cursor, i2);
        this.mStringConversionColumn = -1;
        this.mTo = iArr;
        this.mOriginalFrom = strArr;
        findColumns(strArr);
    }

    private void findColumns(String[] strArr) {
        if (this.mCursor != null) {
            int length = strArr.length;
            if (this.mFrom == null || this.mFrom.length != length) {
                this.mFrom = new int[length];
            }
            for (int i = 0; i < length; i++) {
                this.mFrom[i] = this.mCursor.getColumnIndexOrThrow(strArr[i]);
            }
            return;
        }
        this.mFrom = null;
    }

    public void bindView(View view, Context context, Cursor cursor) {
        ViewBinder viewBinder = this.mViewBinder;
        int length = this.mTo.length;
        int[] iArr = this.mFrom;
        int[] iArr2 = this.mTo;
        for (int i = 0; i < length; i++) {
            View findViewById = view.findViewById(iArr2[i]);
            if (findViewById != null) {
                if (viewBinder != null ? viewBinder.setViewValue(findViewById, cursor, iArr[i]) : false) {
                    continue;
                } else {
                    String string = cursor.getString(iArr[i]);
                    if (string == null) {
                        string = BuildConfig.FLAVOR;
                    }
                    if (findViewById instanceof TextView) {
                        setViewText((TextView) findViewById, string);
                    } else if (findViewById instanceof ImageView) {
                        setViewImage((ImageView) findViewById, string);
                    } else {
                        throw new IllegalStateException(findViewById.getClass().getName() + " is not a " + " view that can be bounds by this SimpleCursorAdapter");
                    }
                }
            }
        }
    }

    public void changeCursorAndColumns(Cursor cursor, String[] strArr, int[] iArr) {
        this.mOriginalFrom = strArr;
        this.mTo = iArr;
        super.changeCursor(cursor);
        findColumns(this.mOriginalFrom);
    }

    public CharSequence convertToString(Cursor cursor) {
        return this.mCursorToStringConverter != null ? this.mCursorToStringConverter.convertToString(cursor) : this.mStringConversionColumn > -1 ? cursor.getString(this.mStringConversionColumn) : super.convertToString(cursor);
    }

    public CursorToStringConverter getCursorToStringConverter() {
        return this.mCursorToStringConverter;
    }

    public int getStringConversionColumn() {
        return this.mStringConversionColumn;
    }

    public ViewBinder getViewBinder() {
        return this.mViewBinder;
    }

    public void setCursorToStringConverter(CursorToStringConverter cursorToStringConverter) {
        this.mCursorToStringConverter = cursorToStringConverter;
    }

    public void setStringConversionColumn(int i) {
        this.mStringConversionColumn = i;
    }

    public void setViewBinder(ViewBinder viewBinder) {
        this.mViewBinder = viewBinder;
    }

    public void setViewImage(ImageView imageView, String str) {
        try {
            imageView.setImageResource(Integer.parseInt(str));
        } catch (NumberFormatException e) {
            imageView.setImageURI(Uri.parse(str));
        }
    }

    public void setViewText(TextView textView, String str) {
        textView.setText(str);
    }

    public Cursor swapCursor(Cursor cursor) {
        Cursor swapCursor = super.swapCursor(cursor);
        findColumns(this.mOriginalFrom);
        return swapCursor;
    }
}
