package com.unity3d.player;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.text.Editable;
import android.text.Selection;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.ViewGroup.LayoutParams;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

/* renamed from: com.unity3d.player.s */
public final class C0864s extends Dialog implements TextWatcher, OnClickListener {
    private static int f224c;
    private static int f225d;
    private Context f226a;
    private UnityPlayer f227b;

    /* renamed from: com.unity3d.player.s.1 */
    final class C08611 implements OnFocusChangeListener {
        final /* synthetic */ C0864s f221a;

        C08611(C0864s c0864s) {
            this.f221a = c0864s;
        }

        public final void onFocusChange(View view, boolean z) {
            if (z) {
                this.f221a.getWindow().setSoftInputMode(5);
            }
        }
    }

    /* renamed from: com.unity3d.player.s.2 */
    final class C08622 extends EditText {
        final /* synthetic */ C0864s f222a;

        C08622(C0864s c0864s, Context context) {
            this.f222a = c0864s;
            super(context);
        }

        public final boolean onKeyPreIme(int i, KeyEvent keyEvent) {
            if (i != 4) {
                return i != 84 ? super.onKeyPreIme(i, keyEvent) : true;
            } else {
                this.f222a.m172a(this.f222a.m168a(), true);
                return true;
            }
        }

        public final void onWindowFocusChanged(boolean z) {
            super.onWindowFocusChanged(z);
            if (z) {
                ((InputMethodManager) this.f222a.f226a.getSystemService("input_method")).showSoftInput(this, 0);
            }
        }
    }

    /* renamed from: com.unity3d.player.s.3 */
    final class C08633 implements OnEditorActionListener {
        final /* synthetic */ C0864s f223a;

        C08633(C0864s c0864s) {
            this.f223a = c0864s;
        }

        public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
            if (i == 6) {
                this.f223a.m172a(this.f223a.m168a(), false);
            }
            return false;
        }
    }

    static {
        f224c = 1627389952;
        f225d = -1;
    }

    public C0864s(Context context, UnityPlayer unityPlayer, String str, int i, boolean z, boolean z2, boolean z3, String str2) {
        super(context);
        this.f226a = null;
        this.f227b = null;
        this.f226a = context;
        this.f227b = unityPlayer;
        getWindow().setGravity(80);
        getWindow().requestFeature(1);
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        setContentView(createSoftInputView());
        getWindow().setLayout(-1, -2);
        getWindow().clearFlags(2);
        EditText editText = (EditText) findViewById(1057292289);
        Button button = (Button) findViewById(1057292290);
        m170a(editText, str, i, z, z2, z3, str2);
        button.setOnClickListener(this);
        editText.setOnFocusChangeListener(new C08611(this));
    }

    private static int m167a(int i, boolean z, boolean z2, boolean z3) {
        int i2 = 0;
        int i3 = z ? AccessibilityNodeInfoCompat.ACTION_PASTE : 0;
        int i4 = z2 ? AccessibilityNodeInfoCompat.ACTION_SET_SELECTION : 0;
        if (z3) {
            i2 = AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS;
        }
        i2 |= i4 | i3;
        return (i < 0 || i > 7) ? i2 : i2 | new int[]{1, 16385, 12290, 17, 2, 3, 97, 33}[i];
    }

    private String m168a() {
        EditText editText = (EditText) findViewById(1057292289);
        return editText == null ? null : editText.getText().toString().trim();
    }

    private void m170a(EditText editText, String str, int i, boolean z, boolean z2, boolean z3, String str2) {
        editText.setImeOptions(6);
        editText.setText(str);
        editText.setHint(str2);
        editText.setHintTextColor(f224c);
        editText.setInputType(C0864s.m167a(i, z, z2, z3));
        editText.addTextChangedListener(this);
        editText.setClickable(true);
        if (!z2) {
            editText.selectAll();
        }
    }

    private void m172a(String str, boolean z) {
        Selection.removeSelection(((EditText) findViewById(1057292289)).getEditableText());
        this.f227b.reportSoftInputStr(str, 1, z);
    }

    public final void m174a(String str) {
        EditText editText = (EditText) findViewById(1057292289);
        if (editText != null) {
            editText.setText(str);
            editText.setSelection(str.length());
        }
    }

    public final void afterTextChanged(Editable editable) {
        this.f227b.reportSoftInputStr(editable.toString(), 0, false);
    }

    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    protected final View createSoftInputView() {
        View relativeLayout = new RelativeLayout(this.f226a);
        relativeLayout.setLayoutParams(new LayoutParams(-1, -1));
        relativeLayout.setBackgroundColor(f225d);
        View c08622 = new C08622(this, this.f226a);
        LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(15);
        layoutParams.addRule(0, 1057292290);
        c08622.setLayoutParams(layoutParams);
        c08622.setId(1057292289);
        relativeLayout.addView(c08622);
        c08622 = new Button(this.f226a);
        c08622.setText(this.f226a.getResources().getIdentifier("ok", "string", "android"));
        layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(15);
        layoutParams.addRule(11);
        c08622.setLayoutParams(layoutParams);
        c08622.setId(1057292290);
        c08622.setBackgroundColor(0);
        relativeLayout.addView(c08622);
        ((EditText) relativeLayout.findViewById(1057292289)).setOnEditorActionListener(new C08633(this));
        relativeLayout.setPadding(16, 16, 16, 16);
        return relativeLayout;
    }

    public final void onBackPressed() {
        m172a(m168a(), true);
    }

    public final void onClick(View view) {
        m172a(m168a(), false);
    }

    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
