.class Lrx/Observable$11;
.super Ljava/lang/Object;
.source "Observable.java"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Observable;->doOnTerminate(Lrx/functions/Action0;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observer",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Observable;

.field final synthetic val$onTerminate:Lrx/functions/Action0;


# direct methods
.method constructor <init>(Lrx/Observable;Lrx/functions/Action0;)V
    .locals 0

    .prologue
    .line 4464
    .local p0, "this":Lrx/Observable$11;, "Lrx/Observable.11;"
    iput-object p1, p0, Lrx/Observable$11;->this$0:Lrx/Observable;

    iput-object p2, p0, Lrx/Observable$11;->val$onTerminate:Lrx/functions/Action0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 1

    .prologue
    .line 4467
    .local p0, "this":Lrx/Observable$11;, "Lrx/Observable.11;"
    iget-object v0, p0, Lrx/Observable$11;->val$onTerminate:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V

    .line 4468
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 4472
    .local p0, "this":Lrx/Observable$11;, "Lrx/Observable.11;"
    iget-object v0, p0, Lrx/Observable$11;->val$onTerminate:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V

    .line 4473
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 4477
    .local p0, "this":Lrx/Observable$11;, "Lrx/Observable.11;"
    .local p1, "args":Ljava/lang/Object;, "TT;"
    return-void
.end method
