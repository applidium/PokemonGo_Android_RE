package com.google.android.gms.location.places;

import com.google.android.gms.common.api.CommonStatusCodes;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzx;

public class PlacesStatusCodes extends CommonStatusCodes {
    public static final int ACCESS_NOT_CONFIGURED = 9003;
    public static final int DEVICE_RATE_LIMIT_EXCEEDED = 9006;
    public static final int INVALID_APP = 9008;
    public static final int INVALID_ARGUMENT = 9004;
    public static final int KEY_EXPIRED = 9007;
    public static final int KEY_INVALID = 9002;
    public static final int RATE_LIMIT_EXCEEDED = 9005;
    public static final int USAGE_LIMIT_EXCEEDED = 9001;

    private PlacesStatusCodes() {
    }

    public static String getStatusCodeString(int i) {
        switch (i) {
            case 9000:
                return "PLACES_API_QUOTA_FAILED";
            case USAGE_LIMIT_EXCEEDED /*9001*/:
                return "PLACES_API_USAGE_LIMIT_EXCEEDED";
            case KEY_INVALID /*9002*/:
                return "PLACES_API_KEY_INVALID";
            case ACCESS_NOT_CONFIGURED /*9003*/:
                return "PLACES_API_ACCESS_NOT_CONFIGURED";
            case INVALID_ARGUMENT /*9004*/:
                return "PLACES_API_INVALID_ARGUMENT";
            case RATE_LIMIT_EXCEEDED /*9005*/:
                return "PLACES_API_RATE_LIMIT_EXCEEDED";
            case DEVICE_RATE_LIMIT_EXCEEDED /*9006*/:
                return "PLACES_API_DEVICE_RATE_LIMIT_EXCEEDED";
            case KEY_EXPIRED /*9007*/:
                return "PLACES_API_KEY_EXPIRED";
            case INVALID_APP /*9008*/:
                return "PLACES_API_INVALID_APP";
            case 9101:
                return "PLACE_PROXIMITY_UNKNOWN";
            case 9102:
                return "NEARBY_ALERTS_NOT_AVAILABLE";
            default:
                return CommonStatusCodes.getStatusCodeString(i);
        }
    }

    public static Status zzhp(int i) {
        return zzk(i, getStatusCodeString(i));
    }

    public static Status zzk(int i, String str) {
        zzx.zzw(str);
        return new Status(i, str);
    }
}
