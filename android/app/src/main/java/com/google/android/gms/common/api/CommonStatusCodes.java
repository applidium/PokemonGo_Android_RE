package com.google.android.gms.common.api;

import com.google.android.gms.iid.InstanceID;

public class CommonStatusCodes {
    @Deprecated
    public static final int API_NOT_AVAILABLE = 17;
    public static final int API_NOT_CONNECTED = 17;
    public static final int AUTH_API_ACCESS_FORBIDDEN = 3001;
    public static final int AUTH_API_CLIENT_ERROR = 3002;
    public static final int AUTH_API_INVALID_CREDENTIALS = 3000;
    public static final int AUTH_API_SERVER_ERROR = 3003;
    public static final int AUTH_TOKEN_ERROR = 3004;
    public static final int AUTH_URL_RESOLUTION = 3005;
    public static final int CANCELED = 16;
    public static final int DEVELOPER_ERROR = 10;
    public static final int ERROR = 13;
    public static final int INTERNAL_ERROR = 8;
    public static final int INTERRUPTED = 14;
    public static final int INVALID_ACCOUNT = 5;
    public static final int LICENSE_CHECK_FAILED = 11;
    public static final int NETWORK_ERROR = 7;
    public static final int RESOLUTION_REQUIRED = 6;
    public static final int SERVICE_DISABLED = 3;
    public static final int SERVICE_INVALID = 9;
    public static final int SERVICE_MISSING = 1;
    public static final int SERVICE_VERSION_UPDATE_REQUIRED = 2;
    public static final int SIGN_IN_REQUIRED = 4;
    public static final int SUCCESS = 0;
    public static final int SUCCESS_CACHE = -1;
    public static final int TIMEOUT = 15;

    public static String getStatusCodeString(int i) {
        switch (i) {
            case SUCCESS_CACHE /*-1*/:
                return "SUCCESS_CACHE";
            case SUCCESS /*0*/:
                return "SUCCESS";
            case SERVICE_MISSING /*1*/:
                return "SERVICE_MISSING";
            case SERVICE_VERSION_UPDATE_REQUIRED /*2*/:
                return "SERVICE_VERSION_UPDATE_REQUIRED";
            case SERVICE_DISABLED /*3*/:
                return "SERVICE_DISABLED";
            case SIGN_IN_REQUIRED /*4*/:
                return "SIGN_IN_REQUIRED";
            case INVALID_ACCOUNT /*5*/:
                return "INVALID_ACCOUNT";
            case RESOLUTION_REQUIRED /*6*/:
                return "RESOLUTION_REQUIRED";
            case NETWORK_ERROR /*7*/:
                return "NETWORK_ERROR";
            case INTERNAL_ERROR /*8*/:
                return "INTERNAL_ERROR";
            case SERVICE_INVALID /*9*/:
                return "SERVICE_INVALID";
            case DEVELOPER_ERROR /*10*/:
                return "DEVELOPER_ERROR";
            case LICENSE_CHECK_FAILED /*11*/:
                return "LICENSE_CHECK_FAILED";
            case ERROR /*13*/:
                return "ERROR";
            case INTERRUPTED /*14*/:
                return "INTERRUPTED";
            case TIMEOUT /*15*/:
                return InstanceID.ERROR_TIMEOUT;
            case CANCELED /*16*/:
                return "CANCELED";
            case API_NOT_CONNECTED /*17*/:
                return "API_NOT_CONNECTED";
            case AUTH_API_INVALID_CREDENTIALS /*3000*/:
                return "AUTH_API_INVALID_CREDENTIALS";
            case AUTH_API_ACCESS_FORBIDDEN /*3001*/:
                return "AUTH_API_ACCESS_FORBIDDEN";
            case AUTH_API_CLIENT_ERROR /*3002*/:
                return "AUTH_API_CLIENT_ERROR";
            case AUTH_API_SERVER_ERROR /*3003*/:
                return "AUTH_API_SERVER_ERROR";
            case AUTH_TOKEN_ERROR /*3004*/:
                return "AUTH_TOKEN_ERROR";
            case AUTH_URL_RESOLUTION /*3005*/:
                return "AUTH_URL_RESOLUTION";
            default:
                return "unknown status code: " + i;
        }
    }
}
