.class final Lrx/observers/Subscribers$1;
.super Lrx/Subscriber;
.source "Subscribers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observers/Subscribers;->from(Lrx/Observer;)Lrx/Subscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$o:Lrx/Observer;


# direct methods
.method constructor <init>(Lrx/Observer;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lrx/observers/Subscribers$1;->val$o:Lrx/Observer;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lrx/observers/Subscribers$1;->val$o:Lrx/Observer;

    invoke-interface {v0}, Lrx/Observer;->onCompleted()V

    .line 58
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 62
    iget-object v0, p0, Lrx/observers/Subscribers$1;->val$o:Lrx/Observer;

    invoke-interface {v0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 63
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
    .line 67
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/observers/Subscribers$1;->val$o:Lrx/Observer;

    invoke-interface {v0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 68
    return-void
.end method
