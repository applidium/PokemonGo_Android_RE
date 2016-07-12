package com.upsight.android.analytics.internal;

import android.content.ContextWrapper;
import com.upsight.android.UpsightContext;
import com.upsight.android.analytics.C0873R;
import java.io.IOException;
import javax.inject.Inject;
import org.apache.commons.io.IOUtils;

public class AnalyticsContext extends ContextWrapper {
    private static final String LOG_TAG;
    private final UpsightContext mUpsight;

    static {
        LOG_TAG = AnalyticsContext.class.getSimpleName();
    }

    @Inject
    public AnalyticsContext(UpsightContext upsightContext) {
        super(upsightContext);
        this.mUpsight = upsightContext;
    }

    public String getDefaultDispatcherConfiguration() {
        try {
            return IOUtils.toString(getResources().openRawResource(C0873R.raw.dispatcher_config));
        } catch (IOException e) {
            this.mUpsight.getLogger().m199e(LOG_TAG, "Could not read default configuration.", e);
            return null;
        }
    }
}
