.class Lrx/internal/operators/OperatorDematerialize$1;
.super Lrx/Subscriber;
.source "OperatorDematerialize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorDematerialize;->call(Lrx/Subscriber;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<",
        "Lrx/Notification",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field terminated:Z

.field final synthetic this$0:Lrx/internal/operators/OperatorDematerialize;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorDematerialize;Lrx/Subscriber;Lrx/Subscriber;)V
    .locals 0

    .prologue
    .line 48
    .local p0, "this":Lrx/internal/operators/OperatorDematerialize$1;, "Lrx/internal/operators/OperatorDematerialize.1;"
    .local p2, "x0":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lrx/internal/operators/OperatorDematerialize$1;->this$0:Lrx/internal/operators/OperatorDematerialize;

    iput-object p3, p0, Lrx/internal/operators/OperatorDematerialize$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0, p2}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 78
    .local p0, "this":Lrx/internal/operators/OperatorDematerialize$1;, "Lrx/internal/operators/OperatorDematerialize.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorDematerialize$1;->terminated:Z

    if-nez v0, :cond_0

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorDematerialize$1;->terminated:Z

    .line 80
    iget-object v0, p0, Lrx/internal/operators/OperatorDematerialize$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    .line 82
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 70
    .local p0, "this":Lrx/internal/operators/OperatorDematerialize$1;, "Lrx/internal/operators/OperatorDematerialize.1;"
    iget-boolean v0, p0, Lrx/internal/operators/OperatorDematerialize$1;->terminated:Z

    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OperatorDematerialize$1;->terminated:Z

    .line 72
    iget-object v0, p0, Lrx/internal/operators/OperatorDematerialize$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 74
    :cond_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 48
    .local p0, "this":Lrx/internal/operators/OperatorDematerialize$1;, "Lrx/internal/operators/OperatorDematerialize.1;"
    check-cast p1, Lrx/Notification;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorDematerialize$1;->onNext(Lrx/Notification;)V

    return-void
.end method

.method public onNext(Lrx/Notification;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Notification",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lrx/internal/operators/OperatorDematerialize$1;, "Lrx/internal/operators/OperatorDematerialize.1;"
    .local p1, "t":Lrx/Notification;, "Lrx/Notification<TT;>;"
    sget-object v0, Lrx/internal/operators/OperatorDematerialize$2;->$SwitchMap$rx$Notification$Kind:[I

    invoke-virtual {p1}, Lrx/Notification;->getKind()Lrx/Notification$Kind;

    move-result-object v1

    invoke-virtual {v1}, Lrx/Notification$Kind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 55
    :pswitch_0
    iget-boolean v0, p0, Lrx/internal/operators/OperatorDematerialize$1;->terminated:Z

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lrx/internal/operators/OperatorDematerialize$1;->val$child:Lrx/Subscriber;

    invoke-virtual {p1}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 60
    :pswitch_1
    invoke-virtual {p1}, Lrx/Notification;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/operators/OperatorDematerialize$1;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 63
    :pswitch_2
    invoke-virtual {p0}, Lrx/internal/operators/OperatorDematerialize$1;->onCompleted()V

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
