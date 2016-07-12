package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.text.style.CharacterStyle;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.location.places.AutocompletePrediction;
import com.google.android.gms.location.places.AutocompletePrediction.Substring;
import java.util.Collections;
import java.util.List;

public class AutocompletePredictionEntity implements SafeParcelable, AutocompletePrediction {
    public static final Creator<AutocompletePredictionEntity> CREATOR;
    private static final List<SubstringEntity> zzaGN;
    final int mVersionCode;
    final List<Integer> zzaFT;
    final String zzaGO;
    final List<SubstringEntity> zzaGP;
    final int zzaGQ;
    final String zzaGR;
    final List<SubstringEntity> zzaGS;
    final String zzaGT;
    final List<SubstringEntity> zzaGU;
    final String zzaGt;

    public static class SubstringEntity implements SafeParcelable, Substring {
        public static final Creator<SubstringEntity> CREATOR;
        final int mLength;
        final int mOffset;
        final int mVersionCode;

        static {
            CREATOR = new zzv();
        }

        public SubstringEntity(int i, int i2, int i3) {
            this.mVersionCode = i;
            this.mOffset = i2;
            this.mLength = i3;
        }

        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof SubstringEntity)) {
                    return false;
                }
                SubstringEntity substringEntity = (SubstringEntity) obj;
                if (!zzw.equal(Integer.valueOf(this.mOffset), Integer.valueOf(substringEntity.mOffset))) {
                    return false;
                }
                if (!zzw.equal(Integer.valueOf(this.mLength), Integer.valueOf(substringEntity.mLength))) {
                    return false;
                }
            }
            return true;
        }

        public int getLength() {
            return this.mLength;
        }

        public int getOffset() {
            return this.mOffset;
        }

        public int hashCode() {
            return zzw.hashCode(Integer.valueOf(this.mOffset), Integer.valueOf(this.mLength));
        }

        public String toString() {
            return zzw.zzv(this).zzg("offset", Integer.valueOf(this.mOffset)).zzg("length", Integer.valueOf(this.mLength)).toString();
        }

        public void writeToParcel(Parcel parcel, int i) {
            zzv.zza(this, parcel, i);
        }
    }

    static {
        CREATOR = new zza();
        zzaGN = Collections.emptyList();
    }

    AutocompletePredictionEntity(int i, String str, List<Integer> list, int i2, String str2, List<SubstringEntity> list2, String str3, List<SubstringEntity> list3, String str4, List<SubstringEntity> list4) {
        this.mVersionCode = i;
        this.zzaGt = str;
        this.zzaFT = list;
        this.zzaGQ = i2;
        this.zzaGO = str2;
        this.zzaGP = list2;
        this.zzaGR = str3;
        this.zzaGS = list3;
        this.zzaGT = str4;
        this.zzaGU = list4;
    }

    public static AutocompletePredictionEntity zza(String str, List<Integer> list, int i, String str2, List<SubstringEntity> list2, String str3, List<SubstringEntity> list3, String str4, List<SubstringEntity> list4) {
        return new AutocompletePredictionEntity(0, str, list, i, (String) zzx.zzw(str2), list2, str3, list3, str4, list4);
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof AutocompletePredictionEntity)) {
                return false;
            }
            AutocompletePredictionEntity autocompletePredictionEntity = (AutocompletePredictionEntity) obj;
            if (!zzw.equal(this.zzaGt, autocompletePredictionEntity.zzaGt) || !zzw.equal(this.zzaFT, autocompletePredictionEntity.zzaFT) || !zzw.equal(Integer.valueOf(this.zzaGQ), Integer.valueOf(autocompletePredictionEntity.zzaGQ)) || !zzw.equal(this.zzaGO, autocompletePredictionEntity.zzaGO) || !zzw.equal(this.zzaGP, autocompletePredictionEntity.zzaGP) || !zzw.equal(this.zzaGR, autocompletePredictionEntity.zzaGR) || !zzw.equal(this.zzaGS, autocompletePredictionEntity.zzaGS) || !zzw.equal(this.zzaGT, autocompletePredictionEntity.zzaGT)) {
                return false;
            }
            if (!zzw.equal(this.zzaGU, autocompletePredictionEntity.zzaGU)) {
                return false;
            }
        }
        return true;
    }

    public /* synthetic */ Object freeze() {
        return zzwV();
    }

    public String getDescription() {
        return this.zzaGO;
    }

    public CharSequence getFullText(CharacterStyle characterStyle) {
        return zzc.zza(this.zzaGO, this.zzaGP, characterStyle);
    }

    public List<? extends Substring> getMatchedSubstrings() {
        return this.zzaGP;
    }

    public String getPlaceId() {
        return this.zzaGt;
    }

    public List<Integer> getPlaceTypes() {
        return this.zzaFT;
    }

    public CharSequence getPrimaryText(CharacterStyle characterStyle) {
        return zzc.zza(this.zzaGR, this.zzaGS, characterStyle);
    }

    public CharSequence getSecondaryText(CharacterStyle characterStyle) {
        return zzc.zza(this.zzaGT, this.zzaGU, characterStyle);
    }

    public int hashCode() {
        return zzw.hashCode(this.zzaGt, this.zzaFT, Integer.valueOf(this.zzaGQ), this.zzaGO, this.zzaGP, this.zzaGR, this.zzaGS, this.zzaGT, this.zzaGU);
    }

    public boolean isDataValid() {
        return true;
    }

    public String toString() {
        return zzw.zzv(this).zzg("placeId", this.zzaGt).zzg("placeTypes", this.zzaFT).zzg("fullText", this.zzaGO).zzg("fullTextMatchedSubstrings", this.zzaGP).zzg("primaryText", this.zzaGR).zzg("primaryTextMatchedSubstrings", this.zzaGS).zzg("secondaryText", this.zzaGT).zzg("secondaryTextMatchedSubstrings", this.zzaGU).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }

    public AutocompletePrediction zzwV() {
        return this;
    }
}
