package android.support.v4.app;

import android.app.Activity;
import android.app.SharedElementCallback;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Parcelable;
import android.view.View;
import java.util.List;
import java.util.Map;

class ActivityCompat21 {

    public static abstract class SharedElementCallback21 {
        public abstract Parcelable onCaptureSharedElementSnapshot(View view, Matrix matrix, RectF rectF);

        public abstract View onCreateSnapshotView(Context context, Parcelable parcelable);

        public abstract void onMapSharedElements(List<String> list, Map<String, View> map);

        public abstract void onRejectSharedElements(List<View> list);

        public abstract void onSharedElementEnd(List<String> list, List<View> list2, List<View> list3);

        public abstract void onSharedElementStart(List<String> list, List<View> list2, List<View> list3);
    }

    private static class SharedElementCallbackImpl extends SharedElementCallback {
        private SharedElementCallback21 mCallback;

        public SharedElementCallbackImpl(SharedElementCallback21 sharedElementCallback21) {
            this.mCallback = sharedElementCallback21;
        }

        public Parcelable onCaptureSharedElementSnapshot(View view, Matrix matrix, RectF rectF) {
            return this.mCallback.onCaptureSharedElementSnapshot(view, matrix, rectF);
        }

        public View onCreateSnapshotView(Context context, Parcelable parcelable) {
            return this.mCallback.onCreateSnapshotView(context, parcelable);
        }

        public void onMapSharedElements(List<String> list, Map<String, View> map) {
            this.mCallback.onMapSharedElements(list, map);
        }

        public void onRejectSharedElements(List<View> list) {
            this.mCallback.onRejectSharedElements(list);
        }

        public void onSharedElementEnd(List<String> list, List<View> list2, List<View> list3) {
            this.mCallback.onSharedElementEnd(list, list2, list3);
        }

        public void onSharedElementStart(List<String> list, List<View> list2, List<View> list3) {
            this.mCallback.onSharedElementStart(list, list2, list3);
        }
    }

    ActivityCompat21() {
    }

    private static SharedElementCallback createCallback(SharedElementCallback21 sharedElementCallback21) {
        return sharedElementCallback21 != null ? new SharedElementCallbackImpl(sharedElementCallback21) : null;
    }

    public static void finishAfterTransition(Activity activity) {
        activity.finishAfterTransition();
    }

    public static void postponeEnterTransition(Activity activity) {
        activity.postponeEnterTransition();
    }

    public static void setEnterSharedElementCallback(Activity activity, SharedElementCallback21 sharedElementCallback21) {
        activity.setEnterSharedElementCallback(createCallback(sharedElementCallback21));
    }

    public static void setExitSharedElementCallback(Activity activity, SharedElementCallback21 sharedElementCallback21) {
        activity.setExitSharedElementCallback(createCallback(sharedElementCallback21));
    }

    public static void startPostponedEnterTransition(Activity activity) {
        activity.startPostponedEnterTransition();
    }
}
