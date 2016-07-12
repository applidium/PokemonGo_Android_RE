.class public interface abstract Lcom/upsight/android/analytics/UpsightAnalyticsComponent;
.super Ljava/lang/Object;
.source "UpsightAnalyticsComponent.java"

# interfaces
.implements Lcom/upsight/android/UpsightExtension$BaseComponent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/upsight/android/UpsightExtension$BaseComponent",
        "<",
        "Lcom/upsight/android/UpsightAnalyticsExtension;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract clock()Lcom/upsight/android/analytics/internal/session/Clock;
.end method

.method public abstract inject(Lcom/upsight/android/analytics/internal/DispatcherService;)V
.end method

.method public abstract sessionManager()Lcom/upsight/android/analytics/internal/session/SessionManager;
.end method
