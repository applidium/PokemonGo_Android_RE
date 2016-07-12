.class Lrx/internal/operators/OnSubscribeMulticastSelector$1;
.super Ljava/lang/Object;
.source "OnSubscribeMulticastSelector.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeMulticastSelector;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<",
        "Lrx/Subscription;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OnSubscribeMulticastSelector;

.field final synthetic val$s:Lrx/observers/SafeSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeMulticastSelector;Lrx/observers/SafeSubscriber;)V
    .locals 0

    .prologue
    .line 69
    .local p0, "this":Lrx/internal/operators/OnSubscribeMulticastSelector$1;, "Lrx/internal/operators/OnSubscribeMulticastSelector.1;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeMulticastSelector$1;->this$0:Lrx/internal/operators/OnSubscribeMulticastSelector;

    iput-object p2, p0, Lrx/internal/operators/OnSubscribeMulticastSelector$1;->val$s:Lrx/observers/SafeSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 69
    .local p0, "this":Lrx/internal/operators/OnSubscribeMulticastSelector$1;, "Lrx/internal/operators/OnSubscribeMulticastSelector.1;"
    check-cast p1, Lrx/Subscription;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeMulticastSelector$1;->call(Lrx/Subscription;)V

    return-void
.end method

.method public call(Lrx/Subscription;)V
    .locals 1
    .param p1, "t1"    # Lrx/Subscription;

    .prologue
    .line 72
    .local p0, "this":Lrx/internal/operators/OnSubscribeMulticastSelector$1;, "Lrx/internal/operators/OnSubscribeMulticastSelector.1;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeMulticastSelector$1;->val$s:Lrx/observers/SafeSubscriber;

    invoke-virtual {v0, p1}, Lrx/observers/SafeSubscriber;->add(Lrx/Subscription;)V

    .line 73
    return-void
.end method
