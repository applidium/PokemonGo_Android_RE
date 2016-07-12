.class public interface abstract Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog$OnTimeoutListener;
.super Ljava/lang/Object;
.source "SfidaWatchDog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticproject/holoholo/sfida/service/SfidaWatchDog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnTimeoutListener"
.end annotation


# virtual methods
.method public abstract onTimeout(Ljava/util/UUID;)V
.end method

.method public abstract reachedRetryCountMax()V
.end method
