.class Lcom/upsight/android/analytics/internal/dispatcher/routing/Router$2;
.super Ljava/lang/Object;
.source "Router.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;->onResponse(Lcom/upsight/android/analytics/dispatcher/EndpointResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

.field final synthetic val$response:Lcom/upsight/android/analytics/dispatcher/EndpointResponse;


# direct methods
.method constructor <init>(Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;Lcom/upsight/android/analytics/dispatcher/EndpointResponse;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router$2;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    iput-object p2, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router$2;->val$response:Lcom/upsight/android/analytics/dispatcher/EndpointResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router$2;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;

    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;->mRoutingListener:Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingListener;
    invoke-static {v0}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;->access$000(Lcom/upsight/android/analytics/internal/dispatcher/routing/Router;)Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingListener;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/routing/Router$2;->val$response:Lcom/upsight/android/analytics/dispatcher/EndpointResponse;

    invoke-interface {v0, v1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingListener;->onResponse(Lcom/upsight/android/analytics/dispatcher/EndpointResponse;)V

    .line 145
    return-void
.end method
