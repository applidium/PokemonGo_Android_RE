.class Lrx/internal/operators/OnSubscribeTimerOnce$1;
.super Ljava/lang/Object;
.source "OnSubscribeTimerOnce.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeTimerOnce;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OnSubscribeTimerOnce;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeTimerOnce;Lrx/Subscriber;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeTimerOnce$1;->this$0:Lrx/internal/operators/OnSubscribeTimerOnce;

    iput-object p2, p0, Lrx/internal/operators/OnSubscribeTimerOnce$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    .prologue
    .line 48
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeTimerOnce$1;->val$child:Lrx/Subscriber;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeTimerOnce$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    .line 54
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lrx/internal/operators/OnSubscribeTimerOnce$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
