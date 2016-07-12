package com.google.ads.mediation;

import android.location.Location;
import com.google.ads.AdRequest.Gender;
import java.util.Calendar;
import java.util.Date;
import java.util.Set;

@Deprecated
public class MediationAdRequest {
    private final Date zzaT;
    private final Gender zzaU;
    private final Set<String> zzaV;
    private final boolean zzaW;
    private final Location zzaX;

    public MediationAdRequest(Date date, Gender gender, Set<String> set, boolean z, Location location) {
        this.zzaT = date;
        this.zzaU = gender;
        this.zzaV = set;
        this.zzaW = z;
        this.zzaX = location;
    }

    public Integer getAgeInYears() {
        if (this.zzaT == null) {
            return null;
        }
        Calendar instance = Calendar.getInstance();
        Calendar instance2 = Calendar.getInstance();
        instance.setTime(this.zzaT);
        Integer valueOf = Integer.valueOf(instance2.get(1) - instance.get(1));
        return (instance2.get(2) < instance.get(2) || (instance2.get(2) == instance.get(2) && instance2.get(5) < instance.get(5))) ? Integer.valueOf(valueOf.intValue() - 1) : valueOf;
    }

    public Date getBirthday() {
        return this.zzaT;
    }

    public Gender getGender() {
        return this.zzaU;
    }

    public Set<String> getKeywords() {
        return this.zzaV;
    }

    public Location getLocation() {
        return this.zzaX;
    }

    public boolean isTesting() {
        return this.zzaW;
    }
}
