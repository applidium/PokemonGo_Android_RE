.class public interface abstract Lcom/upsight/android/marketing/internal/MarketingComponent;
.super Ljava/lang/Object;
.source "MarketingComponent.java"

# interfaces
.implements Lcom/upsight/android/marketing/UpsightMarketingComponent;


# annotations
.annotation runtime Ldagger/Component;
    modules = {
        Lcom/upsight/android/marketing/internal/MarketingModule;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation
