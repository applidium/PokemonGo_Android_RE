package com.google.android.gms.ads.internal.request;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.ParcelFileDescriptor.AutoCloseInputStream;
import android.os.ParcelFileDescriptor.AutoCloseOutputStream;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.zzmt;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public final class LargeParcelTeleporter implements SafeParcelable {
    public static final Creator<LargeParcelTeleporter> CREATOR;
    final int mVersionCode;
    ParcelFileDescriptor zzFc;
    private Parcelable zzFd;
    private boolean zzFe;

    /* renamed from: com.google.android.gms.ads.internal.request.LargeParcelTeleporter.1 */
    class C01931 implements Runnable {
        final /* synthetic */ OutputStream zzFf;
        final /* synthetic */ byte[] zzFg;
        final /* synthetic */ LargeParcelTeleporter zzFh;

        C01931(LargeParcelTeleporter largeParcelTeleporter, OutputStream outputStream, byte[] bArr) {
            this.zzFh = largeParcelTeleporter;
            this.zzFf = outputStream;
            this.zzFg = bArr;
        }

        public void run() {
            Throwable e;
            Closeable closeable = null;
            Closeable dataOutputStream;
            try {
                dataOutputStream = new DataOutputStream(this.zzFf);
                try {
                    dataOutputStream.writeInt(this.zzFg.length);
                    dataOutputStream.write(this.zzFg);
                    if (dataOutputStream == null) {
                        zzmt.zzb(this.zzFf);
                    } else {
                        zzmt.zzb(dataOutputStream);
                    }
                } catch (IOException e2) {
                    e = e2;
                    try {
                        zzb.zzb("Error transporting the ad response", e);
                        zzp.zzby().zzc(e, true);
                        if (dataOutputStream != null) {
                            zzmt.zzb(this.zzFf);
                        } else {
                            zzmt.zzb(dataOutputStream);
                        }
                    } catch (Throwable th) {
                        e = th;
                        closeable = dataOutputStream;
                        if (closeable != null) {
                            zzmt.zzb(this.zzFf);
                        } else {
                            zzmt.zzb(closeable);
                        }
                        throw e;
                    }
                }
            } catch (IOException e3) {
                e = e3;
                dataOutputStream = null;
                zzb.zzb("Error transporting the ad response", e);
                zzp.zzby().zzc(e, true);
                if (dataOutputStream != null) {
                    zzmt.zzb(dataOutputStream);
                } else {
                    zzmt.zzb(this.zzFf);
                }
            } catch (Throwable th2) {
                e = th2;
                if (closeable != null) {
                    zzmt.zzb(closeable);
                } else {
                    zzmt.zzb(this.zzFf);
                }
                throw e;
            }
        }
    }

    static {
        CREATOR = new zzl();
    }

    LargeParcelTeleporter(int i, ParcelFileDescriptor parcelFileDescriptor) {
        this.mVersionCode = i;
        this.zzFc = parcelFileDescriptor;
        this.zzFd = null;
        this.zzFe = true;
    }

    public LargeParcelTeleporter(SafeParcelable safeParcelable) {
        this.mVersionCode = 1;
        this.zzFc = null;
        this.zzFd = safeParcelable;
        this.zzFe = false;
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i) {
        if (this.zzFc == null) {
            Parcel obtain = Parcel.obtain();
            try {
                this.zzFd.writeToParcel(obtain, 0);
                byte[] marshall = obtain.marshall();
                this.zzFc = zzf(marshall);
            } finally {
                obtain.recycle();
            }
        }
        zzl.zza(this, parcel, i);
    }

    public <T extends SafeParcelable> T zza(Creator<T> creator) {
        if (this.zzFe) {
            if (this.zzFc == null) {
                zzb.m36e("File descriptor is empty, returning null.");
                return null;
            }
            Closeable dataInputStream = new DataInputStream(new AutoCloseInputStream(this.zzFc));
            try {
                byte[] bArr = new byte[dataInputStream.readInt()];
                dataInputStream.readFully(bArr, 0, bArr.length);
                zzmt.zzb(dataInputStream);
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.unmarshall(bArr, 0, bArr.length);
                    obtain.setDataPosition(0);
                    this.zzFd = (SafeParcelable) creator.createFromParcel(obtain);
                    this.zzFe = false;
                } finally {
                    obtain.recycle();
                }
            } catch (Throwable e) {
                throw new IllegalStateException("Could not read from parcel file descriptor", e);
            } catch (Throwable th) {
                zzmt.zzb(dataInputStream);
            }
        }
        return (SafeParcelable) this.zzFd;
    }

    protected <T> ParcelFileDescriptor zzf(byte[] bArr) {
        Throwable e;
        Closeable autoCloseOutputStream;
        try {
            ParcelFileDescriptor[] createPipe = ParcelFileDescriptor.createPipe();
            autoCloseOutputStream = new AutoCloseOutputStream(createPipe[1]);
            try {
                new Thread(new C01931(this, autoCloseOutputStream, bArr)).start();
                return createPipe[0];
            } catch (IOException e2) {
                e = e2;
                zzb.zzb("Error transporting the ad response", e);
                zzp.zzby().zzc(e, true);
                zzmt.zzb(autoCloseOutputStream);
                return null;
            }
        } catch (Throwable e3) {
            e = e3;
            autoCloseOutputStream = null;
            zzb.zzb("Error transporting the ad response", e);
            zzp.zzby().zzc(e, true);
            zzmt.zzb(autoCloseOutputStream);
            return null;
        }
    }
}
