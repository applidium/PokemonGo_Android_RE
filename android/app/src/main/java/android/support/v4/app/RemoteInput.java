package android.support.v4.app;

import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.RemoteInputCompatBase.RemoteInput.Factory;
import android.util.Log;

public class RemoteInput extends android.support.v4.app.RemoteInputCompatBase.RemoteInput {
    public static final String EXTRA_RESULTS_DATA = "android.remoteinput.resultsData";
    public static final Factory FACTORY;
    private static final Impl IMPL;
    public static final String RESULTS_CLIP_LABEL = "android.remoteinput.results";
    private static final String TAG = "RemoteInput";
    private final boolean mAllowFreeFormInput;
    private final CharSequence[] mChoices;
    private final Bundle mExtras;
    private final CharSequence mLabel;
    private final String mResultKey;

    /* renamed from: android.support.v4.app.RemoteInput.1 */
    static final class C00341 implements Factory {
        C00341() {
        }

        public RemoteInput build(String str, CharSequence charSequence, CharSequence[] charSequenceArr, boolean z, Bundle bundle) {
            return new RemoteInput(str, charSequence, charSequenceArr, z, bundle);
        }

        public RemoteInput[] newArray(int i) {
            return new RemoteInput[i];
        }
    }

    public static final class Builder {
        private boolean mAllowFreeFormInput;
        private CharSequence[] mChoices;
        private Bundle mExtras;
        private CharSequence mLabel;
        private final String mResultKey;

        public Builder(String str) {
            this.mAllowFreeFormInput = true;
            this.mExtras = new Bundle();
            if (str == null) {
                throw new IllegalArgumentException("Result key can't be null");
            }
            this.mResultKey = str;
        }

        public Builder addExtras(Bundle bundle) {
            if (bundle != null) {
                this.mExtras.putAll(bundle);
            }
            return this;
        }

        public RemoteInput build() {
            return new RemoteInput(this.mResultKey, this.mLabel, this.mChoices, this.mAllowFreeFormInput, this.mExtras);
        }

        public Bundle getExtras() {
            return this.mExtras;
        }

        public Builder setAllowFreeFormInput(boolean z) {
            this.mAllowFreeFormInput = z;
            return this;
        }

        public Builder setChoices(CharSequence[] charSequenceArr) {
            this.mChoices = charSequenceArr;
            return this;
        }

        public Builder setLabel(CharSequence charSequence) {
            this.mLabel = charSequence;
            return this;
        }
    }

    interface Impl {
        void addResultsToIntent(RemoteInput[] remoteInputArr, Intent intent, Bundle bundle);

        Bundle getResultsFromIntent(Intent intent);
    }

    static class ImplApi20 implements Impl {
        ImplApi20() {
        }

        public void addResultsToIntent(RemoteInput[] remoteInputArr, Intent intent, Bundle bundle) {
            RemoteInputCompatApi20.addResultsToIntent(remoteInputArr, intent, bundle);
        }

        public Bundle getResultsFromIntent(Intent intent) {
            return RemoteInputCompatApi20.getResultsFromIntent(intent);
        }
    }

    static class ImplBase implements Impl {
        ImplBase() {
        }

        public void addResultsToIntent(RemoteInput[] remoteInputArr, Intent intent, Bundle bundle) {
            Log.w(RemoteInput.TAG, "RemoteInput is only supported from API Level 16");
        }

        public Bundle getResultsFromIntent(Intent intent) {
            Log.w(RemoteInput.TAG, "RemoteInput is only supported from API Level 16");
            return null;
        }
    }

    static class ImplJellybean implements Impl {
        ImplJellybean() {
        }

        public void addResultsToIntent(RemoteInput[] remoteInputArr, Intent intent, Bundle bundle) {
            RemoteInputCompatJellybean.addResultsToIntent(remoteInputArr, intent, bundle);
        }

        public Bundle getResultsFromIntent(Intent intent) {
            return RemoteInputCompatJellybean.getResultsFromIntent(intent);
        }
    }

    static {
        if (VERSION.SDK_INT >= 20) {
            IMPL = new ImplApi20();
        } else if (VERSION.SDK_INT >= 16) {
            IMPL = new ImplJellybean();
        } else {
            IMPL = new ImplBase();
        }
        FACTORY = new C00341();
    }

    RemoteInput(String str, CharSequence charSequence, CharSequence[] charSequenceArr, boolean z, Bundle bundle) {
        this.mResultKey = str;
        this.mLabel = charSequence;
        this.mChoices = charSequenceArr;
        this.mAllowFreeFormInput = z;
        this.mExtras = bundle;
    }

    public static void addResultsToIntent(RemoteInput[] remoteInputArr, Intent intent, Bundle bundle) {
        IMPL.addResultsToIntent(remoteInputArr, intent, bundle);
    }

    public static Bundle getResultsFromIntent(Intent intent) {
        return IMPL.getResultsFromIntent(intent);
    }

    public boolean getAllowFreeFormInput() {
        return this.mAllowFreeFormInput;
    }

    public CharSequence[] getChoices() {
        return this.mChoices;
    }

    public Bundle getExtras() {
        return this.mExtras;
    }

    public CharSequence getLabel() {
        return this.mLabel;
    }

    public String getResultKey() {
        return this.mResultKey;
    }
}
