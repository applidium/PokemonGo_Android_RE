package android.support.v4.app;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;

class TaskStackBuilderHoneycomb {
    TaskStackBuilderHoneycomb() {
    }

    public static PendingIntent getActivitiesPendingIntent(Context context, int i, Intent[] intentArr, int i2) {
        return PendingIntent.getActivities(context, i, intentArr, i2);
    }
}
