package com.google.android.gms.location;

import android.content.Intent;
import android.location.Location;
import com.google.android.gms.location.internal.ParcelableGeofence;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class GeofencingEvent {
    private final int zzDv;
    private final int zzaEq;
    private final List<Geofence> zzaEr;
    private final Location zzaEs;

    private GeofencingEvent(int i, int i2, List<Geofence> list, Location location) {
        this.zzDv = i;
        this.zzaEq = i2;
        this.zzaEr = list;
        this.zzaEs = location;
    }

    public static GeofencingEvent fromIntent(Intent intent) {
        return intent == null ? null : new GeofencingEvent(intent.getIntExtra("gms_error_code", -1), zzs(intent), zzt(intent), (Location) intent.getParcelableExtra("com.google.android.location.intent.extra.triggering_location"));
    }

    private static int zzs(Intent intent) {
        int intExtra = intent.getIntExtra("com.google.android.location.intent.extra.transition", -1);
        return intExtra == -1 ? -1 : (intExtra == 1 || intExtra == 2 || intExtra == 4) ? intExtra : -1;
    }

    private static List<Geofence> zzt(Intent intent) {
        ArrayList arrayList = (ArrayList) intent.getSerializableExtra("com.google.android.location.intent.extra.geofence_list");
        if (arrayList == null) {
            return null;
        }
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(ParcelableGeofence.zzn((byte[]) it.next()));
        }
        return arrayList2;
    }

    public int getErrorCode() {
        return this.zzDv;
    }

    public int getGeofenceTransition() {
        return this.zzaEq;
    }

    public List<Geofence> getTriggeringGeofences() {
        return this.zzaEr;
    }

    public Location getTriggeringLocation() {
        return this.zzaEs;
    }

    public boolean hasError() {
        return this.zzDv != -1;
    }
}
