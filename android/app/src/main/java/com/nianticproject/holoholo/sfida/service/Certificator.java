package com.nianticproject.holoholo.sfida.service;

import android.os.Handler;
import android.util.Log;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import com.nianticproject.holoholo.sfida.constants.SfidaConstants;
import com.nianticproject.holoholo.sfida.constants.SfidaConstants.CertificationState;
import com.nianticproject.holoholo.sfida.constants.SfidaConstants.SfidaVersion;
import com.nianticproject.holoholo.sfida.service.SfidaWatchDog.OnTimeoutListener;
import java.util.UUID;
import com.nianticlabs.pokemongo.R;

public class Certificator {
    private static final int DELAY_TIME = 1000;
    public final String TAG;
    private volatile CertificationState certificationState;
    Handler delayHandler;
    public SfidaService sfidaService;

    /* renamed from: com.nianticproject.holoholo.sfida.service.Certificator.1 */
    static /* synthetic */ class C07931 {
        static final /* synthetic */ int[] f34x9ecba9b7;
        static final /* synthetic */ int[] f35xe9d8fa5;

        static {
            f35xe9d8fa5 = new int[SfidaVersion.values().length];
            try {
                f35xe9d8fa5[SfidaVersion.ALPHA_NO_SEC.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f35xe9d8fa5[SfidaVersion.ALPHA_SEC.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f35xe9d8fa5[SfidaVersion.BETA1.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f35xe9d8fa5[SfidaVersion.BETA4.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            f34x9ecba9b7 = new int[CertificationState.values().length];
            try {
                f34x9ecba9b7[CertificationState.ENABLE_SECURITY_SERVICE_NOTIFY.ordinal()] = 1;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f34x9ecba9b7[CertificationState.DUMMY_CERTIFICATION_CHALLENGE_1.ordinal()] = 2;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f34x9ecba9b7[CertificationState.DUMMY_CERTIFICATION_CHALLENGE_2.ordinal()] = 3;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f34x9ecba9b7[CertificationState.DUMMY_CERTIFICATION_CHALLENGE_3.ordinal()] = 4;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f34x9ecba9b7[CertificationState.CERTIFICATION_COMPLETE.ordinal()] = 5;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    private class CertificateRunnable implements Runnable {
        Handler delayHandler;
        CertificationState executeCertificationState;

        /* renamed from: com.nianticproject.holoholo.sfida.service.Certificator.CertificateRunnable.1 */
        class C07941 implements OnTimeoutListener {
            C07941() {
            }

            public void onTimeout(UUID uuid) {
                if (Certificator.this.getCertificationState() == CertificationState.ENABLE_SECURITY_SERVICE_NOTIFY) {
                    Certificator.this.executeCertificateSequence(CertificationState.ENABLE_SECURITY_SERVICE_NOTIFY);
                } else {
                    Log.d(Certificator.this.TAG, "Ignoring timeout event.");
                }
            }

            public void reachedRetryCountMax() {
                Log.d(Certificator.this.TAG, "reachedRetryCountMax()");
                Certificator.this.sfidaService.disconnectBluetooth();
            }
        }

        /* renamed from: com.nianticproject.holoholo.sfida.service.Certificator.CertificateRunnable.2 */
        class C07952 implements Runnable {
            C07952() {
            }

            public void run() {
                Certificator.this.sfidaService.onCertificationComplete();
            }
        }

        /* renamed from: com.nianticproject.holoholo.sfida.service.Certificator.CertificateRunnable.3 */
        class C07963 implements Runnable {
            C07963() {
            }

            public void run() {
                Certificator.this.sfidaService.onCertificationComplete();
            }
        }

        public CertificateRunnable(Handler handler, CertificationState certificationState) {
            this.delayHandler = handler;
            this.executeCertificationState = certificationState;
        }

        private void onReceivedCertificationComplete() {
            Log.d(Certificator.this.TAG, "Certification Complete!");
            Certificator.this.sfidaService.onCertificationComplete();
        }

        private void onReceivedDummyCertificationChallenge1() {
            Log.d(Certificator.this.TAG, "Dummy Certification Challenge 1");
            if (Certificator.this.sfidaService.getIsReceivedNotifyCallback()) {
                Certificator.this.sfidaService.sendCertificateMessage(SfidaMessage.getSecurityResponseForDebug());
            } else {
                retry();
            }
        }

        private void onReceivedDummyCertificationChallenge2() {
            Log.d(Certificator.this.TAG, "Dummy Certification Challenge 2");
            if (Certificator.this.sfidaService.getIsReceivedWriteCallback()) {
                switch (C07931.f35xe9d8fa5[SfidaConstants.SFIDA_VERSION.ordinal()]) {
                    case R.styleable.LoadingImageView_circleCrop /*2*/:
                        new Handler().postDelayed(new C07952(), 500);
                        return;
                    case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    case Place.TYPE_AQUARIUM /*4*/:
                        Certificator.this.sfidaService.sendCertificateMessage(SfidaMessage.getSecurityResponseForDebug2());
                        return;
                    default:
                        return;
                }
            }
            retry();
        }

        private void onReceivedDummyCertificationChallenge3() {
            Log.d(Certificator.this.TAG, "Dummy Certification Challenge 3");
            if (Certificator.this.sfidaService.getIsReceivedWriteCallback()) {
                switch (C07931.f35xe9d8fa5[SfidaConstants.SFIDA_VERSION.ordinal()]) {
                    case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                        Certificator.this.sfidaService.sendCertificateMessage(SfidaMessage.getSecurityResponseForDebug3());
                        this.delayHandler.postDelayed(new C07963(), 500);
                        return;
                    case Place.TYPE_AQUARIUM /*4*/:
                        Certificator.this.sfidaService.sendCertificateMessage(SfidaMessage.getSecurityResponseForDebug3());
                        return;
                    default:
                        return;
                }
            }
            retry();
        }

        private void onReceivedSecurityServiceNotify() {
            switch (C07931.f35xe9d8fa5[SfidaConstants.SFIDA_VERSION.ordinal()]) {
                case R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    Certificator.this.sfidaService.enableDeviceControlServiceNotify();
                case R.styleable.LoadingImageView_circleCrop /*2*/:
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                case Place.TYPE_AQUARIUM /*4*/:
                    if (!Certificator.this.sfidaService.enableSecurityServiceNotify(new C07941())) {
                        Certificator.this.sfidaService.disconnectBluetooth();
                    }
                default:
            }
        }

        private void retry() {
            if (this.delayHandler != null) {
                Log.d(Certificator.this.TAG, "Callback was not received. Retry after.");
                this.delayHandler.postDelayed(this, 1000);
            }
        }

        public void run() {
            Certificator.this.setCertificationState(this.executeCertificationState);
            switch (C07931.f34x9ecba9b7[this.executeCertificationState.ordinal()]) {
                case R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    onReceivedSecurityServiceNotify();
                case R.styleable.LoadingImageView_circleCrop /*2*/:
                    onReceivedDummyCertificationChallenge1();
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    onReceivedDummyCertificationChallenge2();
                case Place.TYPE_AQUARIUM /*4*/:
                    onReceivedDummyCertificationChallenge3();
                case Place.TYPE_ART_GALLERY /*5*/:
                    onReceivedCertificationComplete();
                default:
            }
        }
    }

    public Certificator(SfidaService sfidaService) {
        this.TAG = Certificator.class.getSimpleName();
        this.certificationState = CertificationState.NO_CERTIFICATION;
        this.delayHandler = new Handler();
        this.sfidaService = sfidaService;
    }

    private void executeCertificateSequence(CertificationState certificationState) {
        if (this.delayHandler != null) {
            this.delayHandler.postDelayed(new CertificateRunnable(this.delayHandler, certificationState), 1000);
        }
    }

    public CertificationState getCertificationState() {
        return this.certificationState;
    }

    public void onSfidaUpdated(String str) {
        if (SfidaMessage.SFIDA_RESPONSE_CERTIFICATION_NOTIFY.equals(str)) {
            executeCertificateSequence(CertificationState.DUMMY_CERTIFICATION_CHALLENGE_1);
        } else if (SfidaMessage.SFIDA_RESPONSE_CERTIFICATION_CHALLENGE_1.equals(str)) {
            executeCertificateSequence(CertificationState.DUMMY_CERTIFICATION_CHALLENGE_2);
        } else if (SfidaMessage.SFIDA_RESPONSE_CERTIFICATION_CHALLENGE_2.equals(str)) {
            executeCertificateSequence(CertificationState.DUMMY_CERTIFICATION_CHALLENGE_3);
        } else if (SfidaMessage.SFIDA_RESPONSE_CERTIFICATION_COMPLETE.equals(str)) {
            executeCertificateSequence(CertificationState.CERTIFICATION_COMPLETE);
        } else if (str == null) {
            Log.d(this.TAG, "onSfidaUpdated() rawString was null.");
        } else {
            Log.d(this.TAG, "onSfidaUpdated() Unhandled raw data : " + str);
        }
    }

    public void setCertificationState(CertificationState certificationState) {
        Log.d(this.TAG, "CertificationState [" + this.certificationState + "] \u2192 [" + certificationState + "]");
        this.certificationState = certificationState;
    }

    public void startCertification() {
        if (this.delayHandler != null) {
            this.delayHandler.postDelayed(new CertificateRunnable(this.delayHandler, CertificationState.ENABLE_SECURITY_SERVICE_NOTIFY), 1000);
        }
    }
}
