package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.voxelbusters.nativeplugins.defines.Keys;
import org.json.JSONException;
import org.json.JSONObject;

public final class WebImage implements SafeParcelable {
    public static final Creator<WebImage> CREATOR;
    private final int mVersionCode;
    private final Uri zzaeg;
    private final int zznQ;
    private final int zznR;

    static {
        CREATOR = new zzb();
    }

    WebImage(int i, Uri uri, int i2, int i3) {
        this.mVersionCode = i;
        this.zzaeg = uri;
        this.zznQ = i2;
        this.zznR = i3;
    }

    public WebImage(Uri uri) throws IllegalArgumentException {
        this(uri, 0, 0);
    }

    public WebImage(Uri uri, int i, int i2) throws IllegalArgumentException {
        this(1, uri, i, i2);
        if (uri == null) {
            throw new IllegalArgumentException("url cannot be null");
        } else if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException("width and height must not be negative");
        }
    }

    public WebImage(JSONObject jSONObject) throws IllegalArgumentException {
        this(zzi(jSONObject), jSONObject.optInt("width", 0), jSONObject.optInt("height", 0));
    }

    private static Uri zzi(JSONObject jSONObject) {
        Uri uri = null;
        if (jSONObject.has(Keys.URL)) {
            try {
                uri = Uri.parse(jSONObject.getString(Keys.URL));
            } catch (JSONException e) {
            }
        }
        return uri;
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof WebImage)) {
            return false;
        }
        WebImage webImage = (WebImage) obj;
        return zzw.equal(this.zzaeg, webImage.zzaeg) && this.zznQ == webImage.zznQ && this.zznR == webImage.zznR;
    }

    public int getHeight() {
        return this.zznR;
    }

    public Uri getUrl() {
        return this.zzaeg;
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public int getWidth() {
        return this.zznQ;
    }

    public int hashCode() {
        return zzw.hashCode(this.zzaeg, Integer.valueOf(this.zznQ), Integer.valueOf(this.zznR));
    }

    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(Keys.URL, this.zzaeg.toString());
            jSONObject.put("width", this.zznQ);
            jSONObject.put("height", this.zznR);
        } catch (JSONException e) {
        }
        return jSONObject;
    }

    public String toString() {
        return String.format("Image %dx%d %s", new Object[]{Integer.valueOf(this.zznQ), Integer.valueOf(this.zznR), this.zzaeg.toString()});
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }
}
