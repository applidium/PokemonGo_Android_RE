package com.google.android.gms.identity.intents;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.identity.intents.model.CountrySpecification;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public final class UserAddressRequest implements SafeParcelable {
    public static final Creator<UserAddressRequest> CREATOR;
    private final int mVersionCode;
    List<CountrySpecification> zzaDh;

    public final class Builder {
        final /* synthetic */ UserAddressRequest zzaDi;

        private Builder(UserAddressRequest userAddressRequest) {
            this.zzaDi = userAddressRequest;
        }

        public Builder addAllowedCountrySpecification(CountrySpecification countrySpecification) {
            if (this.zzaDi.zzaDh == null) {
                this.zzaDi.zzaDh = new ArrayList();
            }
            this.zzaDi.zzaDh.add(countrySpecification);
            return this;
        }

        public Builder addAllowedCountrySpecifications(Collection<CountrySpecification> collection) {
            if (this.zzaDi.zzaDh == null) {
                this.zzaDi.zzaDh = new ArrayList();
            }
            this.zzaDi.zzaDh.addAll(collection);
            return this;
        }

        public UserAddressRequest build() {
            if (this.zzaDi.zzaDh != null) {
                this.zzaDi.zzaDh = Collections.unmodifiableList(this.zzaDi.zzaDh);
            }
            return this.zzaDi;
        }
    }

    static {
        CREATOR = new zza();
    }

    UserAddressRequest() {
        this.mVersionCode = 1;
    }

    UserAddressRequest(int i, List<CountrySpecification> list) {
        this.mVersionCode = i;
        this.zzaDh = list;
    }

    public static Builder newBuilder() {
        UserAddressRequest userAddressRequest = new UserAddressRequest();
        userAddressRequest.getClass();
        return new Builder(null);
    }

    public int describeContents() {
        return 0;
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }
}
