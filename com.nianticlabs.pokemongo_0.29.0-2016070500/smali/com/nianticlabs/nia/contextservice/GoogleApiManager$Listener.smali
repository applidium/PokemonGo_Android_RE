.class public interface abstract Lcom/nianticlabs/nia/contextservice/GoogleApiManager$Listener;
.super Ljava/lang/Object;
.source "GoogleApiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticlabs/nia/contextservice/GoogleApiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onConnected()V
.end method

.method public abstract onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
.end method

.method public abstract onDisconnected()V
.end method
