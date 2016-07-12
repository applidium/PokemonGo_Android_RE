package com.fasterxml.jackson.databind.jsonFormatVisitors;

import com.google.android.gms.common.Scopes;
import com.voxelbusters.nativeplugins.defines.Keys.GameServices;

public enum JsonValueFormat {
    DATE_TIME("date-time"),
    DATE(GameServices.SCORE_DATE),
    TIME("time"),
    UTC_MILLISEC("utc-millisec"),
    REGEX("regex"),
    COLOR("color"),
    STYLE("style"),
    PHONE("phone"),
    URI("uri"),
    EMAIL(Scopes.EMAIL),
    IP_ADDRESS("ip-address"),
    IPV6("ipv6"),
    HOST_NAME("host-name");
    
    private final String _desc;

    private JsonValueFormat(String str) {
        this._desc = str;
    }

    public String toString() {
        return this._desc;
    }
}
