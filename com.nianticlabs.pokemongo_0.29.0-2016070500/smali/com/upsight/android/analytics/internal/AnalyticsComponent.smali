.class public interface abstract Lcom/upsight/android/analytics/internal/AnalyticsComponent;
.super Ljava/lang/Object;
.source "AnalyticsComponent.java"

# interfaces
.implements Lcom/upsight/android/analytics/UpsightAnalyticsComponent;


# annotations
.annotation runtime Ldagger/Component;
    modules = {
        Lcom/upsight/android/analytics/internal/AnalyticsModule;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation
