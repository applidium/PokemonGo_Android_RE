package com.nianticproject.holoholo.sfida.constants;

public class SfidaConstants {
    public static final String ACTION_BOND_CANCELED = "com.nianticproject.holoholo.sfida.ACTION_BOND_CANCELED";
    public static final String ACTION_CERTIFICATE_COMPLETE = "com.nianticproject.holoholo.sfida.ACTION_CERTIFICATE_COMPLETE";
    public static final String ACTION_CREATE_BOND = "com.nianticproject.holoholo.sfida.ACTION_CREATE_BOND";
    public static final String ACTION_DATA_AVAILABLE = "com.nianticproject.holoholo.sfida.ACTION_DATA_AVAILABLE";
    public static final String ACTION_GATT_CONNECTED = "com.nianticproject.holoholo.sfida.ACTION_GATT_CONNECTED";
    public static final String ACTION_GATT_DISCONNECTED = "com.nianticproject.holoholo.sfida.ACTION_GATT_DISCONNECTED";
    public static final String ACTION_GATT_SERVICES_DISCOVERED = "com.nianticproject.holoholo.sfida.ACTION_GATT_SERVICES_DISCOVERED";
    public static SfidaVersion SFIDA_VERSION;

    public enum CertificationState {
        NO_CERTIFICATION,
        ENABLE_SECURITY_SERVICE_NOTIFY,
        DUMMY_CERTIFICATION_CHALLENGE_1,
        DUMMY_CERTIFICATION_CHALLENGE_2,
        DUMMY_CERTIFICATION_CHALLENGE_3,
        CERTIFICATION_COMPLETE
    }

    public enum ConnectionState {
        NO_CONNECTION,
        BONDING,
        CONNECT_GATT,
        DISCOVERING_SERVICE,
        RE_BOND,
        CERTIFICATION,
        CONNECTED
    }

    public enum SfidaVersion {
        ALPHA_NO_SEC,
        ALPHA_SEC,
        BETA1,
        BETA4
    }

    static {
        SFIDA_VERSION = SfidaVersion.BETA4;
    }
}
