.class Lrx/Observable$33;
.super Lrx/Subscriber;
.source "Observable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Observable;->subscribe(Lrx/Observer;)Lrx/Subscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Observable;

.field final synthetic val$observer:Lrx/Observer;


# direct methods
.method constructor <init>(Lrx/Observable;Lrx/Observer;)V
    .locals 0

    .prologue
    .line 7672
    .local p0, "this":Lrx/Observable$33;, "Lrx/Observable.33;"
    iput-object p1, p0, Lrx/Observable$33;->this$0:Lrx/Observable;

    iput-object p2, p0, Lrx/Observable$33;->val$observer:Lrx/Observer;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 7676
    .local p0, "this":Lrx/Observable$33;, "Lrx/Observable.33;"
    iget-object v0, p0, Lrx/Observable$33;->val$observer:Lrx/Observer;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    .line 7677
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 7681
    .local p0, "this":Lrx/Observable$33;, "Lrx/Observable.33;"
    iget-object v0, p0, Lrx/Observable$33;->val$observer:Lrx/Observer;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 7682
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 7686
    .local p0, "this":Lrx/Observable$33;, "Lrx/Observable.33;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/Observable$33;->val$observer:Lrx/Observer;

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 7687
    return-void
.end method
