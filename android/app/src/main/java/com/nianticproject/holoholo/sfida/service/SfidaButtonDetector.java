package com.nianticproject.holoholo.sfida.service;

import android.util.Log;

public class SfidaButtonDetector {
    private static final int NOTIFY_BIT_SIZE = 10;
    private static final int SFIDA_BUTTON_NOTIFY_BYTE_ARRAY_SIZE = 2;
    private static final String TAG;
    int count;
    private OnClickListener onClickListener;
    private ButtonStatus preButtonStatus;

    private static class ButtonStatus {
        int clickedCount;
        int pressedCount;
        int releasedCount;
        boolean[] value;

        public ButtonStatus() {
            this.value = new boolean[SfidaButtonDetector.NOTIFY_BIT_SIZE];
        }
    }

    public interface OnClickListener {
        void onClick();

        void onPress();

        void onRelease();
    }

    static {
        TAG = SfidaButtonDetector.class.getSimpleName();
    }

    public SfidaButtonDetector() {
        this.preButtonStatus = new ButtonStatus();
        this.count = 0;
    }

    private boolean[] createTestCase() {
        boolean[] zArr = new boolean[NOTIFY_BIT_SIZE];
        if (this.count == 0) {
            zArr[0] = false;
            zArr[1] = false;
            zArr[SFIDA_BUTTON_NOTIFY_BYTE_ARRAY_SIZE] = false;
            zArr[3] = false;
            zArr[4] = false;
            zArr[5] = false;
            zArr[6] = false;
            zArr[7] = false;
            zArr[8] = false;
            zArr[9] = true;
        } else if (this.count == 1) {
            zArr[0] = false;
            zArr[1] = true;
            zArr[SFIDA_BUTTON_NOTIFY_BYTE_ARRAY_SIZE] = false;
            zArr[3] = true;
            zArr[4] = false;
            zArr[5] = true;
            zArr[6] = false;
            zArr[7] = true;
            zArr[8] = false;
            zArr[9] = true;
        }
        this.count++;
        return zArr;
    }

    private ButtonStatus getButtonStatus(boolean[] zArr, boolean z) {
        ButtonStatus buttonStatus = new ButtonStatus();
        boolean z2 = this.preButtonStatus.value[9];
        Log.d(TAG, "isPreValuePressed start with : " + z2);
        int length = zArr.length;
        int i = 0;
        while (i < length) {
            boolean z3 = zArr[i];
            if (z3) {
                if (!z2) {
                    buttonStatus.pressedCount++;
                    if (this.onClickListener != null) {
                        this.onClickListener.onPress();
                    }
                }
            } else if (z2) {
                buttonStatus.clickedCount++;
                buttonStatus.releasedCount++;
                if (this.onClickListener != null) {
                    this.onClickListener.onClick();
                }
                if (this.onClickListener != null) {
                    this.onClickListener.onRelease();
                }
            }
            i++;
            z2 = z3;
        }
        buttonStatus.value = zArr;
        return buttonStatus;
    }

    public void release() {
        setOnclickListener(null);
    }

    public void setButtonStatus(byte[] bArr, boolean z) {
        if (bArr != null && bArr.length == SFIDA_BUTTON_NOTIFY_BYTE_ARRAY_SIZE) {
            int i;
            byte b;
            boolean[] zArr = new boolean[NOTIFY_BIT_SIZE];
            byte b2 = bArr[0];
            for (i = 0; i < SFIDA_BUTTON_NOTIFY_BYTE_ARRAY_SIZE; b = (byte) (i + 1)) {
                zArr[1 - i] = (Integer.valueOf(b2).intValue() & (1 << i)) != 0;
            }
            b2 = bArr[1];
            for (i = 0; i < 8; b = (byte) (i + 1)) {
                zArr[9 - i] = (Integer.valueOf(b2).intValue() & (1 << i)) != 0;
            }
            this.preButtonStatus = getButtonStatus(zArr, z);
        }
    }

    public void setOnclickListener(OnClickListener onClickListener) {
        this.onClickListener = onClickListener;
    }
}
