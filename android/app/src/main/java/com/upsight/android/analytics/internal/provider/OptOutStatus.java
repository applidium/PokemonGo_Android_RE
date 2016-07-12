package com.upsight.android.analytics.internal.provider;

import com.upsight.android.UpsightContext;
import com.upsight.android.analytics.provider.UpsightOptOutStatus;
import com.upsight.android.internal.util.PreferencesHelper;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
final class OptOutStatus extends UpsightOptOutStatus {
    private static final String PREFERENCES_KEY_OPT_OUT = "optOut";
    UpsightContext mUpsight;

    @Inject
    OptOutStatus(UpsightContext upsightContext) {
        this.mUpsight = upsightContext;
    }

    public boolean get() {
        return PreferencesHelper.getBoolean(this.mUpsight, PREFERENCES_KEY_OPT_OUT, false);
    }

    public void set(boolean z) {
        PreferencesHelper.putBoolean(this.mUpsight, PREFERENCES_KEY_OPT_OUT, z);
    }
}
