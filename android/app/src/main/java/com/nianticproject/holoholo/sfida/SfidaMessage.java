package com.nianticproject.holoholo.sfida;

import java.util.UUID;

public class SfidaMessage {
    public static final int    ACTIVITY_BYTE_LENGTH                     = 3;
    public static final String SFIDA_RESPONSE_CERTIFICATION_CHALLENGE_1 = "4010";
    public static final String SFIDA_RESPONSE_CERTIFICATION_CHALLENGE_2 = "5000";
    public static final String SFIDA_RESPONSE_CERTIFICATION_COMPLETE    = "4020";
    public static final String SFIDA_RESPONSE_CERTIFICATION_NOTIFY      = "3000";

    private static final String TAG = SfidaMessage.class.getSimpleName();

    public static final UUID UUID_BATTERY_LEVEL_CHAR     = UUID.fromString("00002A19-0000-1000-8000-00805f9b34fb");
    public static final UUID UUID_BATTERY_SERVICE        = UUID.fromString("0000180F-0000-1000-8000-00805f9b34fb");
    public static final UUID UUID_BUTTON_NOTIF_CHAR      = UUID.fromString("21c50462-67cb-63a3-5c4c-82b5b9939aed");
    public static final UUID UUID_CENTRAL_TO_SFIDA_CHAR  = UUID.fromString("bbe87709-5b89-4433-ab7f-8b8eef0d8e38");
    public static final UUID UUID_CERTIFICATE_SERVICE    = UUID.fromString("bbe87709-5b89-4433-ab7f-8b8eef0d8e37");
    public static final UUID UUID_DEVICE_CONTROL_SERVICE = UUID.fromString("21c50462-67cb-63a3-5c4c-82b5b9939aeb");
    public static final UUID UUID_FW_UPDATE_REQUEST_CHAR = UUID.fromString("21c50462-67cb-63a3-5c4c-82b5b9939aef");
    public static final UUID UUID_FW_UPDATE_SERVICE      = UUID.fromString("0000fef5-0000-1000-8000-00805f9b34fb");
    public static final UUID UUID_FW_VERSION_CHAR        = UUID.fromString("21c50462-67cb-63a3-5c4c-82b5b9939af0");
    public static final UUID UUID_LED_VIBRATE_CTRL_CHAR  = UUID.fromString("21c50462-67cb-63a3-5c4c-82b5b9939aec");
    public static final UUID UUID_SFIDA_COMMANDS_CHAR    = UUID.fromString("bbe87709-5b89-4433-ab7f-8b8eef0d8e39");
    public static final UUID UUID_SFIDA_TO_CENTRAL_CHAR  = UUID.fromString("bbe87709-5b89-4433-ab7f-8b8eef0d8e3a");

    public static byte[] getBlinkRed() {
        return hexStringToByteArray("0000000D010F70010000010F70010000010F70010000010F70010000010F70010000010F70010000010F70");
    }

    public static byte[] getCancelPattern() {
        return hexStringToByteArray("00000000");
    }

    public static byte[] getCaptureSucceed() {
        return hexStringToByteArray("000000180308F003F0F00200FF01008F0308F003F0F00200FF01008F03088F038F8F0200FF01008F0308F003F0F00200FF01008F0308F003F0F00200FF01008F0308F003F0F00200FF01008F");
    }

    public static byte[] getDonePattern() {
        return hexStringToByteArray("00000004030000020070010000020070");
    }

    public static byte[] getDowserCancel() {
        return hexStringToByteArray("0000000118FFFF");
    }

    public static byte[] getDowserProximity1() {
        return hexStringToByteArray("000000050AFFFF0200800AFFFF020080040080");
    }

    public static byte[] getDowserProximity2() {
        return hexStringToByteArray("0000000A02FF8F01FFFF03FF8F01FFFF03FF8F01FFFF03FF8F01FFFF03FF8F040080");
    }

    public static byte[] getDowserProximity3() {
        return hexStringToByteArray("0000000702FF8F01FFFF03FF8F01FFFF03FF8F01FFFF04FF8F");
    }

    public static byte[] getDowserProximity4() {
        return hexStringToByteArray("0000000502FF8F01FFFF03008001FFFF040080");
    }

    public static byte[] getDowserProximity5() {
        return hexStringToByteArray("0000000201FFFF110080");
    }

    public static byte[] getDowserVisible() {
        return hexStringToByteArray("0000000A06FFFF03008006FFFF03008006FFFF03008006FFFF03008006FFFF030080");
    }

    public static byte[] getError() {
        return hexStringToByteArray("00000001180FF0");
    }

    public static byte[] getIncorrectMorseGameEffect() {
        return hexStringToByteArray("000200030208F00400000A08F0");
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
        return new byte[]{-56, -2, -2, 11, 6, 15, 112, 7, 0, 0, 2, 15, 112, 7, 0, 0, 2, 15, 112, 7, 0, 0, 6, 15, 112, 7, 0, 0, 2, 15, 112, 7, 0, 0, 2, 15, 112};
    }

    public static byte[] getMorseGame2() {
        return new byte[]{-56, -2, -2, 13, 6, 15, 112, 7, 0, 0, 6, 15, 112, 7, 0, 0, 2, 15, 112, 7, 0, 0, 2, 15, 112, 7, 0, 0, 6, 15, 112, 7, 0, 0, 2, 15, 112, 7, 0, 0, 2, 15, 112};
    }

    public static byte[] getNoPokeball() {
        return new byte[]{0, 0, 0, 6, 2, 15, -16, 10, 0, Byte.MIN_VALUE, 2, 15, -16, 10, 0, Byte.MIN_VALUE, 2, 15, -16, 10, 0, Byte.MIN_VALUE};
    }

    public static byte[] getNotify() {
        return new byte[]{-56, -2, -2, 1, 2, 8, -16};
    }

    public static byte[] getPokeballNoShake() {
        return new byte[]{0, 0, 0, 6, 1, 15, -16, 2, 0, Byte.MIN_VALUE, 1, 15, -16, 2, 0, Byte.MIN_VALUE, 1, 15, -16, 2, 0, Byte.MIN_VALUE};
    }

    public static byte[] getPokeballShakeOnce() {
        return new byte[]{0, 0, 0, 8, 3, -1, -1, 25, 0, Byte.MIN_VALUE, 1, 15, -16, 2, 0, Byte.MIN_VALUE, 1, 15, -16, 2, 0, Byte.MIN_VALUE, 1, 15, -16, 2, 0, Byte.MIN_VALUE};
    }

    public static byte[] getPokeballShakeThree() {
        return new byte[]{0, 0, 0, 12, 3, -1, -1, 25, 0, Byte.MIN_VALUE, 3, -1, -1, 24, 0, Byte.MIN_VALUE, 3, -1, -1, 24, 0, Byte.MIN_VALUE, 1, 15, -16, 2, 0, Byte.MIN_VALUE, 1, 15, -16, 2, 0, Byte.MIN_VALUE, 1, 15, -16, 2, 0, Byte.MIN_VALUE};
    }

    public static byte[] getPokeballShakeTwice() {
        return new byte[]{0, 0, 0, 10, 3, -1, -1, 25, 0, Byte.MIN_VALUE, 3, -1, -1, 24, 0, Byte.MIN_VALUE, 1, 15, -16, 2, 0, Byte.MIN_VALUE, 1, 15, -16, 2, 0, Byte.MIN_VALUE, 1, 15, -16, 2, 0, Byte.MIN_VALUE};
    }

    public static byte[] getPokemonCaught() {
        return new byte[]{0, 0, 0, 21, 3, -1, -1, 25, 0, Byte.MIN_VALUE, 3, -1, -1, 24, 0, Byte.MIN_VALUE, 3, -1, -1, 24, 0, Byte.MIN_VALUE, 3, 8, -16, 3, -16, -16, 3, 0, -113, 3, 8, -16, 3, -16, -16, 3, 0, -113, 3, 8, -16, 3, -16, -16, 3, 0, -113, 3, 8, -16, 3, -16, -16, 3, 0, -113, 3, 8, -16, 3, -16, -16, 3, 0, -113};
    }

    public static byte[] getReachedPokestop() {
        return new byte[]{0, 0, 0, 27, 4, 0, -1, 2, 0, Byte.MIN_VALUE, 8, 0, -1, 10, 0, Byte.MIN_VALUE, 4, 0, -1, 2, 0, Byte.MIN_VALUE, 8, 0, -1, 10, 0, Byte.MIN_VALUE, 4, 0, -1, 2, 0, Byte.MIN_VALUE, 8, 0, -1, 10, 0, Byte.MIN_VALUE, 4, 0, -1, 2, 0, Byte.MIN_VALUE, 8, 0, -1, 10, 0, Byte.MIN_VALUE, 4, 0, -1, 2, 0, Byte.MIN_VALUE, 8, 0, -1, 10, 0, Byte.MIN_VALUE, 4, 0, -1, 2, 0, Byte.MIN_VALUE, 8, 0, -1, 10, 0, Byte.MIN_VALUE, 2, 0, -113, -1, 0, -113, -21, 0, -113};
    }

    public static byte[] getReadyForThrowPokeball() {
        return new byte[]{0, 0, 0, 18, 2, -16, -16, 11, -16, Byte.MIN_VALUE, 13, 0, Byte.MIN_VALUE, 2, -16, -16, 11, -16, Byte.MIN_VALUE, 13, 0, Byte.MIN_VALUE, 2, -16, -16, 11, -16, Byte.MIN_VALUE, 13, 0, Byte.MIN_VALUE, 2, -16, -16, 11, -16, Byte.MIN_VALUE, 13, 0, Byte.MIN_VALUE, 2, -16, -16, 11, -16, Byte.MIN_VALUE, 13, 0, Byte.MIN_VALUE, 2, -16, Byte.MIN_VALUE, -1, -16, Byte.MIN_VALUE, -43, -16, Byte.MIN_VALUE};
    }

    private static byte[] getRewardItemActivity(int i) {
        if (i == 1) {
            return new byte[]{2, -16, Byte.MIN_VALUE, 2, 15, -16, 2, 0, -113};
        } else if (i == 2) {
            return new byte[]{2, -16, -16, 1, -16, Byte.MIN_VALUE, 2, 15, -16, 1, 15, Byte.MIN_VALUE, 3, 0, -113};
        } else if (i >= ACTIVITY_BYTE_LENGTH) {
            byte[] obj = new byte[(i * 6)];
            for (int i2 = 0; i2 < i; i2++) {
                Object obj2 = i2 % ACTIVITY_BYTE_LENGTH == 0 ? new byte[]{2, 0, -8, 2, 0, -113} : i2 % ACTIVITY_BYTE_LENGTH == 1 ? new byte[]{2, Byte.MIN_VALUE, -16, 2, -16, Byte.MIN_VALUE} : new byte[]{2, 8, -16, 2, 15, Byte.MIN_VALUE};
                System.arraycopy(obj2, 0, obj, i2 * 6, 6);
            }
            return obj;
        } else {
            throw new IllegalArgumentException();
        }
    }

    public static byte[] getRewardItems(int i) {
        byte[] obj = new byte[ACTIVITY_BYTE_LENGTH];
        obj[0] = 0;
        obj[1] = 0;
        obj[2] = 0;
        byte[] rewardItemActivity = getRewardItemActivity(i);
        byte[] obj2 = new byte[]{(byte) (rewardItemActivity.length / ACTIVITY_BYTE_LENGTH)};
        byte[] obj3 = new byte[((obj.length + 1) + rewardItemActivity.length)];
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
        return new byte[]{0, 0, 0, 30, 16, 15, -1, 8, 0, Byte.MIN_VALUE, 16, 15, -1, 8, 0, Byte.MIN_VALUE, 16, 15, -1, 6, 0, Byte.MIN_VALUE, 16, 15, -1, 3, 0, Byte.MIN_VALUE, 16, 15, -1, 2, 0, Byte.MIN_VALUE, 16, 15, -1, 1, 0, Byte.MIN_VALUE, 16, 15, -1, 1, 0, Byte.MIN_VALUE, 16, 15, -1, 1, 0, Byte.MIN_VALUE, 16, 15, -1, 1, 0, Byte.MIN_VALUE, 16, 15, -1, 1, 0, Byte.MIN_VALUE, 16, 15, -1, 1, 0, Byte.MIN_VALUE, 16, 15, -1, 1, 0, Byte.MIN_VALUE, 16, 15, -1, 1, 0, Byte.MIN_VALUE, 16, 15, -1, 1, 0, Byte.MIN_VALUE, 16, 15, -1, 1, 0, Byte.MIN_VALUE};
    }

    public static byte[] getSpawnedPokemon() {
        return new byte[]{0, 0, 0, 15, 16, -16, -16, 8, 0, 0, 16, -16, -16, 8, 0, 0, 16, -16, -16, 8, 0, 0, 16, -16, -16, 8, 0, 0, 16, -16, -16, 8, 0, 0, 16, -16, -16, 8, 0, 0, 16, -16, Byte.MIN_VALUE, -1, -16, Byte.MIN_VALUE, -81, -16, Byte.MIN_VALUE};
    }

    public static byte[] getSpawnedUncaughtPokemon() {
        return new byte[]{0, 0, 0, 15, 14, -1, -16, 2, 0, 0, 14, -1, -16, 2, 0, 0, 14, -1, -16, 2, 0, 0, 14, -1, -16, 2, 0, 0, 14, -1, -16, 2, 0, 0, 14, -1, -16, 2, 0, 0, 64, -1, Byte.MIN_VALUE, -1, -1, Byte.MIN_VALUE, -81, -1, Byte.MIN_VALUE};
    }

    public static byte[] getThrewPokeball() {
        return new byte[]{0, 0, 0, 2, 20, 0, -16, 4, 0, Byte.MIN_VALUE};
    }

    public static byte[] getUpdateRequest() {
        return new byte[]{1};
    }

    private static byte[] hexStringToByteArray(String s) {
        int len = s.length();
        byte[] data = new byte[len / 2];
        for (int i = 0; i < len; i += 2) {
            data[i / 2] = (byte) ((Character.digit(s.charAt(i), 16) << 4) + Character.digit(s.charAt(i + 1), 16));
        }
        return data;
    }
}
