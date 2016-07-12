.class public interface abstract Lcom/upsight/android/analytics/UpsightLifeCycleTracker;
.super Ljava/lang/Object;
.source "UpsightLifeCycleTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;
    }
.end annotation


# static fields
.field public static final STARTED_FROM_PUSH:Ljava/lang/String; = "pushMessage"


# virtual methods
.method public abstract track(Landroid/app/Activity;Lcom/upsight/android/analytics/UpsightLifeCycleTracker$ActivityState;Lcom/upsight/android/analytics/internal/session/SessionInitializer;)V
.end method
