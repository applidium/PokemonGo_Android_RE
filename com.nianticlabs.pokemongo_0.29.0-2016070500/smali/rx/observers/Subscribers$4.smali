.class final Lrx/observers/Subscribers$4;
.super Lrx/Subscriber;
.source "Subscribers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/observers/Subscribers;->create(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)Lrx/Subscriber;
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
.field final synthetic val$onComplete:Lrx/functions/Action0;

.field final synthetic val$onError:Lrx/functions/Action1;

.field final synthetic val$onNext:Lrx/functions/Action1;


# direct methods
.method constructor <init>(Lrx/functions/Action0;Lrx/functions/Action1;Lrx/functions/Action1;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lrx/observers/Subscribers$4;->val$onComplete:Lrx/functions/Action0;

    iput-object p2, p0, Lrx/observers/Subscribers$4;->val$onError:Lrx/functions/Action1;

    iput-object p3, p0, Lrx/observers/Subscribers$4;->val$onNext:Lrx/functions/Action1;

    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lrx/observers/Subscribers$4;->val$onComplete:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V

    .line 187
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 191
    iget-object v0, p0, Lrx/observers/Subscribers$4;->val$onError:Lrx/functions/Action1;

    invoke-interface {v0, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 192
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "args":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/observers/Subscribers$4;->val$onNext:Lrx/functions/Action1;

    invoke-interface {v0, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 197
    return-void
.end method
