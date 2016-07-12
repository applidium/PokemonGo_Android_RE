package com.upsight.android;

public abstract class UpsightExtension<T extends BaseComponent, U> {
    private T mExtensionComponent;

    public interface BaseComponent<T extends UpsightExtension> {
        void inject(T t);
    }

    public U getApi() throws IllegalStateException {
        throw new IllegalStateException("This Upsight extension supports no public API.");
    }

    public final T getComponent() {
        return this.mExtensionComponent;
    }

    protected void onCreate(UpsightContext upsightContext) {
    }

    protected void onPostCreate(UpsightContext upsightContext) {
    }

    protected abstract T onResolve(UpsightContext upsightContext);

    final void setComponent(T t) {
        this.mExtensionComponent = t;
    }
}
