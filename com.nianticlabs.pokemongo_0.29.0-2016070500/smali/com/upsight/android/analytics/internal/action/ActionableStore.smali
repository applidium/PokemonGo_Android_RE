.class public interface abstract Lcom/upsight/android/analytics/internal/action/ActionableStore;
.super Ljava/lang/Object;
.source "ActionableStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/action/ActionableStore$DefaultImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/upsight/android/analytics/internal/action/Actionable;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract get(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/action/Actionable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract put(Ljava/lang/String;Lcom/upsight/android/analytics/internal/action/Actionable;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/String;)Z
.end method
