package com.nianticproject.holoholo.sfida;

import java.util.UUID;

public class SfidaMessage {
    public static final int ACTIVITY_BYTE_LENGTH = 3;
    public static final String SFIDA_RESPONSE_CERTIFICATION_CHALLENGE_1 = "4010";
    public static final String SFIDA_RESPONSE_CERTIFICATION_CHALLENGE_2 = "5000";
    public static final String SFIDA_RESPONSE_CERTIFICATION_COMPLETE = "4020";
    public static final String SFIDA_RESPONSE_CERTIFICATION_NOTIFY = "3000";
    private static final String TAG;
    public static final UUID UUID_BATTERY_LEVEL_CHAR;
    public static final UUID UUID_BATTERY_SERVICE;
    public static final UUID UUID_BUTTON_NOTIF_CHAR;
    public static final UUID UUID_CENTRAL_TO_SFIDA_CHAR;
    public static final UUID UUID_CERTIFICATE_SERVICE;
    public static final UUID UUID_DEVICE_CONTROL_SERVICE;
    public static final UUID UUID_FW_UPDATE_REQUEST_CHAR;
    public static final UUID UUID_FW_UPDATE_SERVICE;
    public static final UUID UUID_FW_VERSION_CHAR;
    public static final UUID UUID_LED_VIBRATE_CTRL_CHAR;
    public static final UUID UUID_SFIDA_COMMANDS_CHAR;
    public static final UUID UUID_SFIDA_TO_CENTRAL_CHAR;

    static {
        TAG = SfidaMessage.class.getSimpleName();
        UUID_FW_UPDATE_SERVICE = UUID.fromString("0000fef5-0000-1000-8000-00805f9b34fb");
        UUID_DEVICE_CONTROL_SERVICE = UUID.fromString("21c50462-67cb-63a3-5c4c-82b5b9939aeb");
        UUID_LED_VIBRATE_CTRL_CHAR = UUID.fromString("21c50462-67cb-63a3-5c4c-82b5b9939aec");
        UUID_BUTTON_NOTIF_CHAR = UUID.fromString("21c50462-67cb-63a3-5c4c-82b5b9939aed");
        UUID_FW_UPDATE_REQUEST_CHAR = UUID.fromString("21c50462-67cb-63a3-5c4c-82b5b9939aef");
        UUID_FW_VERSION_CHAR = UUID.fromString("21c50462-67cb-63a3-5c4c-82b5b9939af0");
        UUID_CERTIFICATE_SERVICE = UUID.fromString("bbe87709-5b89-4433-ab7f-8b8eef0d8e37");
        UUID_CENTRAL_TO_SFIDA_CHAR = UUID.fromString("bbe87709-5b89-4433-ab7f-8b8eef0d8e38");
        UUID_SFIDA_COMMANDS_CHAR = UUID.fromString("bbe87709-5b89-4433-ab7f-8b8eef0d8e39");
        UUID_SFIDA_TO_CENTRAL_CHAR = UUID.fromString("bbe87709-5b89-4433-ab7f-8b8eef0d8e3a");
        UUID_BATTERY_SERVICE = UUID.fromString("0000180F-0000-1000-8000-00805f9b34fb");
        UUID_BATTERY_LEVEL_CHAR = UUID.fromString("00002A19-0000-1000-8000-00805f9b34fb");
    }

    public static byte[] getBlinkRed() {
        return new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 13, (byte) 1, (byte) 15, (byte) 112, (byte) 1, (byte) 0, (byte) 0, (byte) 1, (byte) 15, (byte) 112, (byte) 1, (byte) 0, (byte) 0, (byte) 1, (byte) 15, (byte) 112, (byte) 1, (byte) 0, (byte) 0, (byte) 1, (byte) 15, (byte) 112, (byte) 1, (byte) 0, (byte) 0, (byte) 1, (byte) 15, (byte) 112, (byte) 1, (byte) 0, (byte) 0, (byte) 1, (byte) 15, (byte) 112, (byte) 1, (byte) 0, (byte) 0, (byte) 1, (byte) 15, (byte) 112};
    }

    public static byte[] getCancelPattern() {
        return new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 0};
    }

    public static byte[] getCaptureSucceed() {
        return new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 24, (byte) 3, (byte) 8, (byte) -16, (byte) 3, (byte) -16, (byte) -16, (byte) 2, (byte) 0, (byte) -1, (byte) 1, (byte) 0, (byte) -113, (byte) 3, (byte) 8, (byte) -16, (byte) 3, (byte) -16, (byte) -16, (byte) 2, (byte) 0, (byte) -1, (byte) 1, (byte) 0, (byte) -113, (byte) 3, (byte) 8, (byte) -16, (byte) 3, (byte) -16, (byte) -16, (byte) 2, (byte) 0, (byte) -1, (byte) 1, (byte) 0, (byte) -113, (byte) 3, (byte) 8, (byte) -16, (byte) 3, (byte) -16, (byte) -16, (byte) 2, (byte) 0, (byte) -1, (byte) 1, (byte) 0, (byte) -113, (byte) 3, (byte) 8, (byte) -16, (byte) 3, (byte) -16, (byte) -16, (byte) 2, (byte) 0, (byte) -1, (byte) 1, (byte) 0, (byte) -113, (byte) 3, (byte) 8, (byte) -16, (byte) 3, (byte) -16, (byte) -16, (byte) 2, (byte) 0, (byte) -1, (byte) 1, (byte) 0, (byte) -113};
    }

    public static byte[] getDonePattern() {
        return new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 4, (byte) 3, (byte) 0, (byte) 0, (byte) 2, (byte) 0, (byte) 112, (byte) 1, (byte) 0, (byte) 0, (byte) 2, (byte) 0, (byte) 112};
    }

    public static byte[] getDowserCancel() {
        return new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 1, (byte) 24, (byte) -1, (byte) -1};
    }

    public static byte[] getDowserProximity1() {
        return new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 5, (byte) 10, (byte) -1, (byte) -1, (byte) 2, (byte) 0, Byte.MIN_VALUE, (byte) 10, (byte) -1, (byte) -1, (byte) 2, (byte) 0, Byte.MIN_VALUE, (byte) 4, (byte) 0, Byte.MIN_VALUE};
    }

    public static byte[] getDowserProximity2() {
        return new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 10, (byte) 2, (byte) -1, (byte) -113, (byte) 1, (byte) -1, (byte) -1, (byte) 3, (byte) -1, (byte) -113, (byte) 1, (byte) -1, (byte) -1, (byte) 3, (byte) -1, (byte) -113, (byte) 1, (byte) -1, (byte) -1, (byte) 3, (byte) -1, (byte) -113, (byte) 1, (byte) -1, (byte) -1, (byte) 3, (byte) -1, (byte) -113, (byte) 4, (byte) 0, Byte.MIN_VALUE};
    }

    public static byte[] getDowserProximity3() {
        return new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 7, (byte) 2, (byte) -1, (byte) -113, (byte) 1, (byte) -1, (byte) -1, (byte) 3, (byte) -1, (byte) -113, (byte) 1, (byte) -1, (byte) -1, (byte) 3, (byte) -1, (byte) -113, (byte) 1, (byte) -1, (byte) -1, (byte) 4, (byte) -1, (byte) -113};
    }

    public static byte[] getDowserProximity4() {
        return new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 5, (byte) 2, (byte) -1, (byte) -113, (byte) 1, (byte) -1, (byte) -1, (byte) 3, (byte) 0, Byte.MIN_VALUE, (byte) 1, (byte) -1, (byte) -1, (byte) 4, (byte) 0, Byte.MIN_VALUE};
    }

    public static byte[] getDowserProximity5() {
        return new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 2, (byte) 1, (byte) -1, (byte) -1, (byte) 17, (byte) 0, Byte.MIN_VALUE};
    }

    public static byte[] getDowserVisible() {
        return new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 10, (byte) 6, (byte) -1, (byte) -1, (byte) 3, (byte) 0, Byte.MIN_VALUE, (byte) 6, (byte) -1, (byte) -1, (byte) 3, (byte) 0, Byte.MIN_VALUE, (byte) 6, (byte) -1, (byte) -1, (byte) 3, (byte) 0, Byte.MIN_VALUE, (byte) 6, (byte) -1, (byte) -1, (byte) 3, (byte) 0, Byte.MIN_VALUE, (byte) 6, (byte) -1, (byte) -1, (byte) 3, (byte) 0, Byte.MIN_VALUE};
    }

    public static byte[] getError() {
        return new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 1, (byte) 24, (byte) 15, (byte) -16};
    }

    public static byte[] getIncorrectMorseGameEffect() {
        return new byte[]{(byte) 0, (byte) 2, (byte) 0, (byte) 3, (byte) 2, (byte) 8, (byte) -16, (byte) 4, (byte) 0, (byte) 0, (byte) 10, (byte) 8, (byte) -16};
    }

    public static byte[] getManualPattern(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        byte[] bArr = new byte[ACTIVITY_BYTE_LENGTH];
        bArr[0] = (byte) i;
        bArr[1] = (byte) 0;
        bArr[2] = Byte.MIN_VALUE;
        byte b = (byte) i7;
        bArr[0] = (byte) (bArr[0] | i);
        bArr[1] = (byte) (bArr[1] | (i3 << 4));
        bArr[1] = (byte) (bArr[1] | i2);
        bArr[2] = (byte) (bArr[2] | i4);
        bArr[2] = (byte) (bArr[2] | (i5 << 4));
        byte[] bArr2 = new byte[(((i6 + 1) * 6) + 4)];
        bArr2[0] = (byte) (bArr2[0] | 0);
        bArr2[1] = (byte) (bArr2[1] | 0);
        bArr2[2] = (byte) (bArr2[2] | 0);
        int i8 = 4;
        bArr2[ACTIVITY_BYTE_LENGTH] = (byte) (bArr2[ACTIVITY_BYTE_LENGTH] | (((byte) (i6 + 1)) * 2));
        for (int i9 = 0; i9 < i6 + 1; i9++) {
            int i10 = 0;
            while (i10 < ACTIVITY_BYTE_LENGTH) {
                bArr2[i8] = bArr[i10];
                i10++;
                i8++;
            }
            i10 = 0;
            while (i10 < ACTIVITY_BYTE_LENGTH) {
                byte[] bArr3 = new byte[ACTIVITY_BYTE_LENGTH];
                bArr3[0] = b;
                bArr3[1] = (byte) 0;
                bArr3[2] = (byte) 0;
                bArr2[i8] = bArr3[i10];
                i10++;
                i8++;
            }
        }
        return bArr2;
    }

    public static byte[] getMorseGame1() {
        return new byte[]{(byte) -56, (byte) -2, (byte) -2, (byte) 11, (byte) 6, (byte) 15, (byte) 112, (byte) 7, (byte) 0, (byte) 0, (byte) 2, (byte) 15, (byte) 112, (byte) 7, (byte) 0, (byte) 0, (byte) 2, (byte) 15, (byte) 112, (byte) 7, (byte) 0, (byte) 0, (byte) 6, (byte) 15, (byte) 112, (byte) 7, (byte) 0, (byte) 0, (byte) 2, (byte) 15, (byte) 112, (byte) 7, (byte) 0, (byte) 0, (byte) 2, (byte) 15, (byte) 112};
    }

    public static byte[] getMorseGame2() {
        return new byte[]{(byte) -56, (byte) -2, (byte) -2, (byte) 13, (byte) 6, (byte) 15, (byte) 112, (byte) 7, (byte) 0, (byte) 0, (byte) 6, (byte) 15, (byte) 112, (byte) 7, (byte) 0, (byte) 0, (byte) 2, (byte) 15, (byte) 112, (byte) 7, (byte) 0, (byte) 0, (byte) 2, (byte) 15, (byte) 112, (byte) 7, (byte) 0, (byte) 0, (byte) 6, (byte) 15, (byte) 112, (byte) 7, (byte) 0, (byte) 0, (byte) 2, (byte) 15, (byte) 112, (byte) 7, (byte) 0, (byte) 0, (byte) 2, (byte) 15, (byte) 112};
    }

    public static byte[] getNoPokeball() {
        return new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 6, (byte) 2, (byte) 15, (byte) -16, (byte) 10, (byte) 0, Byte.MIN_VALUE, (byte) 2, (byte) 15, (byte) -16, (byte) 10, (byte) 0, Byte.MIN_VALUE, (byte) 2, (byte) 15, (byte) -16, (byte) 10, (byte) 0, Byte.MIN_VALUE};
    }

    public static byte[] getNotify() {
        return new byte[]{(byte) -56, (byte) -2, (byte) -2, (byte) 1, (byte) 2, (byte) 8, (byte) -16};
    }

    public static byte[] getPokeballNoShake() {
        return new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 6, (byte) 1, (byte) 15, (byte) -16, (byte) 2, (byte) 0, Byte.MIN_VALUE, (byte) 1, (byte) 15, (byte) -16, (byte) 2, (byte) 0, Byte.MIN_VALUE, (byte) 1, (byte) 15, (byte) -16, (byte) 2, (byte) 0, Byte.MIN_VALUE};
    }

    public static byte[] getPokeballShakeOnce() {
        return new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 8, (byte) 3, (byte) -1, (byte) -1, (byte) 25, (byte) 0, Byte.MIN_VALUE, (byte) 1, (byte) 15, (byte) -16, (byte) 2, (byte) 0, Byte.MIN_VALUE, (byte) 1, (byte) 15, (byte) -16, (byte) 2, (byte) 0, Byte.MIN_VALUE, (byte) 1, (byte) 15, (byte) -16, (byte) 2, (byte) 0, Byte.MIN_VALUE};
    }

    public static byte[] getPokeballShakeThree() {
        return new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 12, (byte) 3, (byte) -1, (byte) -1, (byte) 25, (byte) 0, Byte.MIN_VALUE, (byte) 3, (byte) -1, (byte) -1, (byte) 24, (byte) 0, Byte.MIN_VALUE, (byte) 3, (byte) -1, (byte) -1, (byte) 24, (byte) 0, Byte.MIN_VALUE, (byte) 1, (byte) 15, (byte) -16, (byte) 2, (byte) 0, Byte.MIN_VALUE, (byte) 1, (byte) 15, (byte) -16, (byte) 2, (byte) 0, Byte.MIN_VALUE, (byte) 1, (byte) 15, (byte) -16, (byte) 2, (byte) 0, Byte.MIN_VALUE};
    }

    public static byte[] getPokeballShakeTwice() {
        return new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 10, (byte) 3, (byte) -1, (byte) -1, (byte) 25, (byte) 0, Byte.MIN_VALUE, (byte) 3, (byte) -1, (byte) -1, (byte) 24, (byte) 0, Byte.MIN_VALUE, (byte) 1, (byte) 15, (byte) -16, (byte) 2, (byte) 0, Byte.MIN_VALUE, (byte) 1, (byte) 15, (byte) -16, (byte) 2, (byte) 0, Byte.MIN_VALUE, (byte) 1, (byte) 15, (byte) -16, (byte) 2, (byte) 0, Byte.MIN_VALUE};
    }

    public static byte[] getPokemonCaught() {
        return new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 21, (byte) 3, (byte) -1, (byte) -1, (byte) 25, (byte) 0, Byte.MIN_VALUE, (byte) 3, (byte) -1, (byte) -1, (byte) 24, (byte) 0, Byte.MIN_VALUE, (byte) 3, (byte) -1, (byte) -1, (byte) 24, (byte) 0, Byte.MIN_VALUE, (byte) 3, (byte) 8, (byte) -16, (byte) 3, (byte) -16, (byte) -16, (byte) 3, (byte) 0, (byte) -113, (byte) 3, (byte) 8, (byte) -16, (byte) 3, (byte) -16, (byte) -16, (byte) 3, (byte) 0, (byte) -113, (byte) 3, (byte) 8, (byte) -16, (byte) 3, (byte) -16, (byte) -16, (byte) 3, (byte) 0, (byte) -113, (byte) 3, (byte) 8, (byte) -16, (byte) 3, (byte) -16, (byte) -16, (byte) 3, (byte) 0, (byte) -113, (byte) 3, (byte) 8, (byte) -16, (byte) 3, (byte) -16, (byte) -16, (byte) 3, (byte) 0, (byte) -113};
    }

    public static byte[] getReachedPokestop() {
        return new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 27, (byte) 4, (byte) 0, (byte) -1, (byte) 2, (byte) 0, Byte.MIN_VALUE, (byte) 8, (byte) 0, (byte) -1, (byte) 10, (byte) 0, Byte.MIN_VALUE, (byte) 4, (byte) 0, (byte) -1, (byte) 2, (byte) 0, Byte.MIN_VALUE, (byte) 8, (byte) 0, (byte) -1, (byte) 10, (byte) 0, Byte.MIN_VALUE, (byte) 4, (byte) 0, (byte) -1, (byte) 2, (byte) 0, Byte.MIN_VALUE, (byte) 8, (byte) 0, (byte) -1, (byte) 10, (byte) 0, Byte.MIN_VALUE, (byte) 4, (byte) 0, (byte) -1, (byte) 2, (byte) 0, Byte.MIN_VALUE, (byte) 8, (byte) 0, (byte) -1, (byte) 10, (byte) 0, Byte.MIN_VALUE, (byte) 4, (byte) 0, (byte) -1, (byte) 2, (byte) 0, Byte.MIN_VALUE, (byte) 8, (byte) 0, (byte) -1, (byte) 10, (byte) 0, Byte.MIN_VALUE, (byte) 4, (byte) 0, (byte) -1, (byte) 2, (byte) 0, Byte.MIN_VALUE, (byte) 8, (byte) 0, (byte) -1, (byte) 10, (byte) 0, Byte.MIN_VALUE, (byte) 2, (byte) 0, (byte) -113, (byte) -1, (byte) 0, (byte) -113, (byte) -21, (byte) 0, (byte) -113};
    }

    public static byte[] getReadyForThrowPokeball() {
        return new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 18, (byte) 2, (byte) -16, (byte) -16, (byte) 11, (byte) -16, Byte.MIN_VALUE, (byte) 13, (byte) 0, Byte.MIN_VALUE, (byte) 2, (byte) -16, (byte) -16, (byte) 11, (byte) -16, Byte.MIN_VALUE, (byte) 13, (byte) 0, Byte.MIN_VALUE, (byte) 2, (byte) -16, (byte) -16, (byte) 11, (byte) -16, Byte.MIN_VALUE, (byte) 13, (byte) 0, Byte.MIN_VALUE, (byte) 2, (byte) -16, (byte) -16, (byte) 11, (byte) -16, Byte.MIN_VALUE, (byte) 13, (byte) 0, Byte.MIN_VALUE, (byte) 2, (byte) -16, (byte) -16, (byte) 11, (byte) -16, Byte.MIN_VALUE, (byte) 13, (byte) 0, Byte.MIN_VALUE, (byte) 2, (byte) -16, Byte.MIN_VALUE, (byte) -1, (byte) -16, Byte.MIN_VALUE, (byte) -43, (byte) -16, Byte.MIN_VALUE};
    }

    private static byte[] getRewardItemActivity(int i) {
        if (i == 1) {
            return new byte[]{(byte) 2, (byte) -16, Byte.MIN_VALUE, (byte) 2, (byte) 15, (byte) -16, (byte) 2, (byte) 0, (byte) -113};
        } else if (i == 2) {
            return new byte[]{(byte) 2, (byte) -16, (byte) -16, (byte) 1, (byte) -16, Byte.MIN_VALUE, (byte) 2, (byte) 15, (byte) -16, (byte) 1, (byte) 15, Byte.MIN_VALUE, (byte) 3, (byte) 0, (byte) -113};
        } else if (i >= ACTIVITY_BYTE_LENGTH) {
            Object obj = new byte[(i * 6)];
            for (int i2 = 0; i2 < i; i2++) {
                Object obj2 = i2 % ACTIVITY_BYTE_LENGTH == 0 ? new byte[]{2, null, (byte) -8, 2, null, (byte) -113} : i2 % ACTIVITY_BYTE_LENGTH == 1 ? new byte[]{2, Byte.MIN_VALUE, -16, 2, -16, Byte.MIN_VALUE} : new byte[]{2, (byte) 8, -16, 2, (byte) 15, Byte.MIN_VALUE};
                System.arraycopy(obj2, 0, obj, i2 * 6, 6);
            }
            return obj;
        } else {
            throw new IllegalArgumentException();
        }
    }

    public static byte[] getRewardItems(int i) {
        Object obj = new byte[ACTIVITY_BYTE_LENGTH];
        obj[0] = null;
        obj[1] = null;
        obj[2] = null;
        Object rewardItemActivity = getRewardItemActivity(i);
        Object obj2 = new byte[]{(byte) (rewardItemActivity.length / ACTIVITY_BYTE_LENGTH)};
        Object obj3 = new byte[((obj.length + 1) + rewardItemActivity.length)];
        System.arraycopy(obj, 0, obj3, 0, obj.length);
        System.arraycopy(obj2, 0, obj3, obj.length, obj2.length);
        System.arraycopy(rewardItemActivity, 0, obj3, obj.length + obj2.length, rewardItemActivity.length);
        return obj3;
    }

    public static byte[] getSecurityResponseForDebug() {
        return SfidaUtils.hexStringToByteArray("0400000000000000000000000000000000000000");
    }

    public static byte[] getSecurityResponseForDebug2() {
        return SfidaUtils.hexStringToByteArray("050000000000000000000000000000000000000000000000000000000000000000000000");
    }

    public static byte[] getSecurityResponseForDebug3() {
        return SfidaUtils.hexStringToByteArray("0300000001");
    }

    public static byte[] getSpawnedLegendaryPokemon() {
        return new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 30, (byte) 16, (byte) 15, (byte) -1, (byte) 8, (byte) 0, Byte.MIN_VALUE, (byte) 16, (byte) 15, (byte) -1, (byte) 8, (byte) 0, Byte.MIN_VALUE, (byte) 16, (byte) 15, (byte) -1, (byte) 6, (byte) 0, Byte.MIN_VALUE, (byte) 16, (byte) 15, (byte) -1, (byte) 3, (byte) 0, Byte.MIN_VALUE, (byte) 16, (byte) 15, (byte) -1, (byte) 2, (byte) 0, Byte.MIN_VALUE, (byte) 16, (byte) 15, (byte) -1, (byte) 1, (byte) 0, Byte.MIN_VALUE, (byte) 16, (byte) 15, (byte) -1, (byte) 1, (byte) 0, Byte.MIN_VALUE, (byte) 16, (byte) 15, (byte) -1, (byte) 1, (byte) 0, Byte.MIN_VALUE, (byte) 16, (byte) 15, (byte) -1, (byte) 1, (byte) 0, Byte.MIN_VALUE, (byte) 16, (byte) 15, (byte) -1, (byte) 1, (byte) 0, Byte.MIN_VALUE, (byte) 16, (byte) 15, (byte) -1, (byte) 1, (byte) 0, Byte.MIN_VALUE, (byte) 16, (byte) 15, (byte) -1, (byte) 1, (byte) 0, Byte.MIN_VALUE, (byte) 16, (byte) 15, (byte) -1, (byte) 1, (byte) 0, Byte.MIN_VALUE, (byte) 16, (byte) 15, (byte) -1, (byte) 1, (byte) 0, Byte.MIN_VALUE, (byte) 16, (byte) 15, (byte) -1, (byte) 1, (byte) 0, Byte.MIN_VALUE};
    }

    public static byte[] getSpawnedPokemon() {
        return new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 15, (byte) 16, (byte) -16, (byte) -16, (byte) 8, (byte) 0, (byte) 0, (byte) 16, (byte) -16, (byte) -16, (byte) 8, (byte) 0, (byte) 0, (byte) 16, (byte) -16, (byte) -16, (byte) 8, (byte) 0, (byte) 0, (byte) 16, (byte) -16, (byte) -16, (byte) 8, (byte) 0, (byte) 0, (byte) 16, (byte) -16, (byte) -16, (byte) 8, (byte) 0, (byte) 0, (byte) 16, (byte) -16, (byte) -16, (byte) 8, (byte) 0, (byte) 0, (byte) 16, (byte) -16, Byte.MIN_VALUE, (byte) -1, (byte) -16, Byte.MIN_VALUE, (byte) -81, (byte) -16, Byte.MIN_VALUE};
    }

    public static byte[] getSpawnedUncaughtPokemon() {
        return new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 15, (byte) 14, (byte) -1, (byte) -16, (byte) 2, (byte) 0, (byte) 0, (byte) 14, (byte) -1, (byte) -16, (byte) 2, (byte) 0, (byte) 0, (byte) 14, (byte) -1, (byte) -16, (byte) 2, (byte) 0, (byte) 0, (byte) 14, (byte) -1, (byte) -16, (byte) 2, (byte) 0, (byte) 0, (byte) 14, (byte) -1, (byte) -16, (byte) 2, (byte) 0, (byte) 0, (byte) 14, (byte) -1, (byte) -16, (byte) 2, (byte) 0, (byte) 0, (byte) 64, (byte) -1, Byte.MIN_VALUE, (byte) -1, (byte) -1, Byte.MIN_VALUE, (byte) -81, (byte) -1, Byte.MIN_VALUE};
    }

    public static byte[] getThrewPokeball() {
        return new byte[]{(byte) 0, (byte) 0, (byte) 0, (byte) 2, (byte) 20, (byte) 0, (byte) -16, (byte) 4, (byte) 0, Byte.MIN_VALUE};
    }

    public static byte[] getUpdateRequest() {
        return new byte[]{(byte) 1};
    }
}
