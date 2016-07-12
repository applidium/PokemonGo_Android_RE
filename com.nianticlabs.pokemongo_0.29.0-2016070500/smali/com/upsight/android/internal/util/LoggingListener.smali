.class public final Lcom/upsight/android/internal/util/LoggingListener;
.super Ljava/lang/Object;
.source "LoggingListener.java"

# interfaces
.implements Lcom/upsight/android/persistence/UpsightDataStoreListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/upsight/android/persistence/UpsightDataStoreListener",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    .local p0, "this":Lcom/upsight/android/internal/util/LoggingListener;, "Lcom/upsight/android/internal/util/LoggingListener<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/upsight/android/UpsightException;)V
    .locals 2
    .param p1, "exception"    # Lcom/upsight/android/UpsightException;

    .prologue
    .line 27
    .local p0, "this":Lcom/upsight/android/internal/util/LoggingListener;, "Lcom/upsight/android/internal/util/LoggingListener<TT;>;"
    const-string v0, "Upsight"

    const-string v1, "Uncaught Exception within Upsight SDK."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/upsight/android/internal/util/LoggingListener;, "Lcom/upsight/android/internal/util/LoggingListener<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    return-void
.end method
