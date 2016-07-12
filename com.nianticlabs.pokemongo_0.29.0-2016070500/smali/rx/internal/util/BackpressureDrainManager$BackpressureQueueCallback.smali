.class public interface abstract Lrx/internal/util/BackpressureDrainManager$BackpressureQueueCallback;
.super Ljava/lang/Object;
.source "BackpressureDrainManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/BackpressureDrainManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BackpressureQueueCallback"
.end annotation


# virtual methods
.method public abstract accept(Ljava/lang/Object;)Z
.end method

.method public abstract complete(Ljava/lang/Throwable;)V
.end method

.method public abstract peek()Ljava/lang/Object;
.end method

.method public abstract poll()Ljava/lang/Object;
.end method
