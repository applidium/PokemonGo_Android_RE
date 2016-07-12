.class Lrx/Observable$6;
.super Ljava/lang/Object;
.source "Observable.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Observable;->defaultIfEmpty(Ljava/lang/Object;)Lrx/Observable;
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
.field final synthetic this$0:Lrx/Observable;

.field final synthetic val$defaultValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrx/Observable;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 3952
    .local p0, "this":Lrx/Observable$6;, "Lrx/Observable.6;"
    iput-object p1, p0, Lrx/Observable$6;->this$0:Lrx/Observable;

    iput-object p2, p0, Lrx/Observable$6;->val$defaultValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3952
    .local p0, "this":Lrx/Observable$6;, "Lrx/Observable.6;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Observable$6;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 3956
    .local p0, "this":Lrx/Observable$6;, "Lrx/Observable.6;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/producers/SingleProducer;

    iget-object v1, p0, Lrx/Observable$6;->val$defaultValue:Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lrx/internal/producers/SingleProducer;-><init>(Lrx/Subscriber;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 3957
    return-void
.end method
