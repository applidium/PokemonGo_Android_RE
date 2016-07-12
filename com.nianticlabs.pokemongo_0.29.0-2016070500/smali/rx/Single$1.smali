.class Lrx/Single$1;
.super Ljava/lang/Object;
.source "Single.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Single;-><init>(Lrx/Single$OnSubscribe;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Single;

.field final synthetic val$f:Lrx/Single$OnSubscribe;


# direct methods
.method constructor <init>(Lrx/Single;Lrx/Single$OnSubscribe;)V
    .locals 0

    .prologue
    .line 85
    .local p0, "this":Lrx/Single$1;, "Lrx/Single.1;"
    iput-object p1, p0, Lrx/Single$1;->this$0:Lrx/Single;

    iput-object p2, p0, Lrx/Single$1;->val$f:Lrx/Single$OnSubscribe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 85
    .local p0, "this":Lrx/Single$1;, "Lrx/Single.1;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Single$1;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lrx/Single$1;, "Lrx/Single.1;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/producers/SingleDelayedProducer;

    invoke-direct {v0, p1}, Lrx/internal/producers/SingleDelayedProducer;-><init>(Lrx/Subscriber;)V

    .line 90
    .local v0, "producer":Lrx/internal/producers/SingleDelayedProducer;, "Lrx/internal/producers/SingleDelayedProducer<TT;>;"
    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 91
    new-instance v1, Lrx/Single$1$1;

    invoke-direct {v1, p0, v0, p1}, Lrx/Single$1$1;-><init>(Lrx/Single$1;Lrx/internal/producers/SingleDelayedProducer;Lrx/Subscriber;)V

    .line 104
    .local v1, "ss":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<TT;>;"
    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 105
    iget-object v2, p0, Lrx/Single$1;->val$f:Lrx/Single$OnSubscribe;

    invoke-interface {v2, v1}, Lrx/Single$OnSubscribe;->call(Ljava/lang/Object;)V

    .line 106
    return-void
.end method
