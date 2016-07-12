package com.google.android.gms.ads.mediation;

import com.google.android.gms.ads.formats.NativeAd.Image;
import java.util.List;

public abstract class NativeAppInstallAdMapper extends NativeAdMapper {
    private Image zzKJ;
    private String zzwo;
    private List<Image> zzwp;
    private String zzwq;
    private String zzws;
    private double zzwt;
    private String zzwu;
    private String zzwv;

    public final String getBody() {
        return this.zzwq;
    }

    public final String getCallToAction() {
        return this.zzws;
    }

    public final String getHeadline() {
        return this.zzwo;
    }

    public final Image getIcon() {
        return this.zzKJ;
    }

    public final List<Image> getImages() {
        return this.zzwp;
    }

    public final String getPrice() {
        return this.zzwv;
    }

    public final double getStarRating() {
        return this.zzwt;
    }

    public final String getStore() {
        return this.zzwu;
    }

    public final void setBody(String str) {
        this.zzwq = str;
    }

    public final void setCallToAction(String str) {
        this.zzws = str;
    }

    public final void setHeadline(String str) {
        this.zzwo = str;
    }

    public final void setIcon(Image image) {
        this.zzKJ = image;
    }

    public final void setImages(List<Image> list) {
        this.zzwp = list;
    }

    public final void setPrice(String str) {
        this.zzwv = str;
    }

    public final void setStarRating(double d) {
        this.zzwt = d;
    }

    public final void setStore(String str) {
        this.zzwu = str;
    }
}
