.class Lrx/Observable$ThrowObservable$1;
.super Ljava/lang/Object;
.source "Observable.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Observable$ThrowObservable;-><init>(Ljava/lang/Throwable;)V
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
.field final synthetic val$exception:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 9589
    .local p0, "this":Lrx/Observable$ThrowObservable$1;, "Lrx/Observable$ThrowObservable.1;"
    iput-object p1, p0, Lrx/Observable$ThrowObservable$1;->val$exception:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 9589
    .local p0, "this":Lrx/Observable$ThrowObservable$1;, "Lrx/Observable$ThrowObservable.1;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Observable$ThrowObservable$1;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 9599
    .local p0, "this":Lrx/Observable$ThrowObservable$1;, "Lrx/Observable$ThrowObservable.1;"
    .local p1, "observer":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lrx/Observable$ThrowObservable$1;->val$exception:Ljava/lang/Throwable;

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    .line 9600
    return-void
.end method
