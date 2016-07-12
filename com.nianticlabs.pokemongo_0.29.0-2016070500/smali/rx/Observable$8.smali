.class Lrx/Observable$8;
.super Ljava/lang/Object;
.source "Observable.java"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Observable;->doOnEach(Lrx/functions/Action1;)Lrx/Observable;
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

.field final synthetic val$onNotification:Lrx/functions/Action1;


# direct methods
.method constructor <init>(Lrx/Observable;Lrx/functions/Action1;)V
    .locals 0

    .prologue
    .line 4297
    .local p0, "this":Lrx/Observable$8;, "Lrx/Observable.8;"
    iput-object p1, p0, Lrx/Observable$8;->this$0:Lrx/Observable;

    iput-object p2, p0, Lrx/Observable$8;->val$onNotification:Lrx/functions/Action1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 2

    .prologue
    .line 4300
    .local p0, "this":Lrx/Observable$8;, "Lrx/Observable.8;"
    iget-object v0, p0, Lrx/Observable$8;->val$onNotification:Lrx/functions/Action1;

    invoke-static {}, Lrx/Notification;->createOnCompleted()Lrx/Notification;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 4301
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 4305
    .local p0, "this":Lrx/Observable$8;, "Lrx/Observable.8;"
    iget-object v0, p0, Lrx/Observable$8;->val$onNotification:Lrx/functions/Action1;

    invoke-static {p1}, Lrx/Notification;->createOnError(Ljava/lang/Throwable;)Lrx/Notification;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 4306
    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 4310
    .local p0, "this":Lrx/Observable$8;, "Lrx/Observable.8;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/Observable$8;->val$onNotification:Lrx/functions/Action1;

    invoke-static {p1}, Lrx/Notification;->createOnNext(Ljava/lang/Object;)Lrx/Notification;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 4311
    return-void
.end method
