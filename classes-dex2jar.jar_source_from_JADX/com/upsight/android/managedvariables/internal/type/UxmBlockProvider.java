package com.upsight.android.managedvariables.internal.type;

import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.support.v4.view.MotionEventCompat;
import android.text.TextUtils;
import com.upsight.android.Upsight;
import com.upsight.android.UpsightContext;
import com.upsight.android.analytics.internal.dispatcher.schema.AbstractUxmBlockProvider;
import com.upsight.android.internal.util.PreferencesHelper;
import com.upsight.android.managedvariables.internal.type.UxmSchema.BaseSchema;
import com.upsight.android.managedvariables.type.UpsightManagedBoolean;
import com.upsight.android.managedvariables.type.UpsightManagedFloat;
import com.upsight.android.managedvariables.type.UpsightManagedInt;
import com.upsight.android.managedvariables.type.UpsightManagedString;
import java.security.MessageDigest;
import java.util.Observable;
import java.util.Observer;
import javax.inject.Named;

public class UxmBlockProvider extends AbstractUxmBlockProvider implements OnSharedPreferenceChangeListener {
    private static final String HASH_ALGORITHM = "SHA-1";
    private static final char[] HEX_ARRAY;
    private Observer mBundleHashObserver;
    private MessageDigest mDigest;
    private UpsightContext mUpsight;
    private UxmSchema mUxmSchema;
    private String mUxmSchemaRawString;

    /* renamed from: com.upsight.android.managedvariables.internal.type.UxmBlockProvider.1 */
    class C09441 implements Observer {
        C09441() {
        }

        public void update(Observable observable, Object obj) {
            UxmBlockProvider.this.put(AbstractUxmBlockProvider.BUNDLE_HASH, UxmBlockProvider.this.getBundleHash());
        }
    }

    static {
        HEX_ARRAY = "0123456789abcdef".toCharArray();
    }

    UxmBlockProvider(UpsightContext upsightContext, @Named("stringRawUxmSchema") String str, UxmSchema uxmSchema) {
        this.mBundleHashObserver = new C09441();
        this.mUpsight = upsightContext;
        this.mUxmSchemaRawString = str;
        this.mUxmSchema = uxmSchema;
        try {
            this.mDigest = MessageDigest.getInstance(HASH_ALGORITHM);
        } catch (Throwable e) {
            upsightContext.getLogger().m200e(Upsight.LOG_TAG, e, "Failed to generate UXM hashes because SHA-1 is unavailable on this device", new Object[0]);
        }
        PreferencesHelper.registerListener(upsightContext, this);
        subscribeManagedVariables();
        put(AbstractUxmBlockProvider.BUNDLE_SCHEMA_HASH, getBundleSchemaHash());
        put(AbstractUxmBlockProvider.BUNDLE_ID, getBundleId());
        put(AbstractUxmBlockProvider.BUNDLE_HASH, getBundleHash());
    }

    private static String bytesToHex(byte[] bArr) {
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        char[] cArr = new char[(bArr.length * 2)];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = bArr[i] & MotionEventCompat.ACTION_MASK;
            cArr[i * 2] = HEX_ARRAY[i2 >>> 4];
            cArr[(i * 2) + 1] = HEX_ARRAY[i2 & 15];
        }
        return new String(cArr);
    }

    private String generateHash(String str) {
        String str2;
        synchronized (this) {
            str2 = null;
            if (!(this.mDigest == null || TextUtils.isEmpty(str))) {
                byte[] bytes = str.getBytes();
                this.mDigest.update(bytes, 0, bytes.length);
                str2 = bytesToHex(this.mDigest.digest());
            }
        }
        return str2;
    }

    private void subscribeManagedVariables() {
        for (BaseSchema baseSchema : this.mUxmSchema.getAllOrdered()) {
            if ("com.upsight.uxm.string".equals(baseSchema.type)) {
                UpsightManagedString.fetch(this.mUpsight, baseSchema.tag).addObserver(this.mBundleHashObserver);
            } else if ("com.upsight.uxm.boolean".equals(baseSchema.type)) {
                UpsightManagedBoolean.fetch(this.mUpsight, baseSchema.tag).addObserver(this.mBundleHashObserver);
            } else if ("com.upsight.uxm.integer".equals(baseSchema.type)) {
                UpsightManagedInt.fetch(this.mUpsight, baseSchema.tag).addObserver(this.mBundleHashObserver);
            } else if ("com.upsight.uxm.float".equals(baseSchema.type)) {
                UpsightManagedFloat.fetch(this.mUpsight, baseSchema.tag).addObserver(this.mBundleHashObserver);
            }
        }
    }

    public String getBundleHash() {
        StringBuilder stringBuilder = new StringBuilder();
        for (BaseSchema baseSchema : this.mUxmSchema.getAllOrdered()) {
            Object obj = null;
            if ("com.upsight.uxm.string".equals(baseSchema.type)) {
                obj = UpsightManagedString.fetch(this.mUpsight, baseSchema.tag).get();
            } else if ("com.upsight.uxm.boolean".equals(baseSchema.type)) {
                obj = UpsightManagedBoolean.fetch(this.mUpsight, baseSchema.tag).get();
            } else if ("com.upsight.uxm.integer".equals(baseSchema.type)) {
                obj = UpsightManagedInt.fetch(this.mUpsight, baseSchema.tag).get();
            } else if ("com.upsight.uxm.float".equals(baseSchema.type)) {
                obj = UpsightManagedFloat.fetch(this.mUpsight, baseSchema.tag).get();
            }
            stringBuilder.append(baseSchema.tag).append(obj).append(baseSchema.type);
        }
        return generateHash(stringBuilder.toString());
    }

    public String getBundleId() {
        return PreferencesHelper.getString(this.mUpsight, UxmContent.PREFERENCES_KEY_UXM_BUNDLE_ID, null);
    }

    public String getBundleSchemaHash() {
        return generateHash(this.mUxmSchemaRawString);
    }

    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if (UxmContent.PREFERENCES_KEY_UXM_BUNDLE_ID.equals(str)) {
            put(AbstractUxmBlockProvider.BUNDLE_ID, getBundleId());
        }
    }
}
