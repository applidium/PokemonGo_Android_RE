package com.nianticproject.holoholo.sfida;

import android.app.Notification;
import android.app.Notification.Builder;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

public class SfidaNotification {
    public static final String ACTION_NOTIFICATION_DISMISS = "com.nianticproject.holoholo.sfida.dismiss";
    public static final String ACTION_NOTIFICATION_VIBRATE = "com.nianticproject.holoholo.sfida.vibrate";
    public static final int NOTIFICATION_ID = 1;
    private static final String TAG;
    private static Notification notification;

    static {
        TAG = SfidaNotification.class.getSimpleName();
    }

    private static void addDismissAction(Context context, Builder builder) {
        Intent intent = new Intent();
        intent.setAction(ACTION_NOTIFICATION_DISMISS);
        builder.addAction(context.getResources().getIdentifier("ic_eject_black_48dp", "drawable", context.getPackageName()), "Disconnect", PendingIntent.getBroadcast(context, 0, intent, 134217728));
    }

    private static void addVibrateAction(Context context, Builder builder) {
        Intent intent = new Intent();
        intent.setAction(ACTION_NOTIFICATION_VIBRATE);
        builder.addAction(context.getResources().getIdentifier("ic_eject_black_48dp", "drawable", context.getPackageName()), "VibrateTest", PendingIntent.getBroadcast(context, 0, intent, 134217728));
    }

    public static void dissmiss(Context context) {
        if (notification != null) {
            ((NotificationManager) context.getSystemService("notification")).cancel(NOTIFICATION_ID);
        }
    }

    public static Notification getNotification() {
        return notification;
    }

    public static Notification showSfidaNotification(Context context) {
        Log.d(TAG, "showSfidaNotification()");
        Builder builder = new Builder(context);
        builder.setContentTitle("PokemonGoPlus");
        builder.setContentText("Connecting");
        builder.setTicker("ticker");
        builder.setContentIntent(PendingIntent.getActivity(context, 0, new Intent(), 0));
        builder.setSmallIcon(context.getResources().getIdentifier("ic_eject_black_48dp", "drawable", context.getPackageName()));
        builder.setAutoCancel(false);
        builder.setOngoing(false);
        addDismissAction(context, builder);
        addVibrateAction(context, builder);
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        notification = builder.build();
        notificationManager.notify(NOTIFICATION_ID, notification);
        return notification;
    }
}
