.class Lrx/Observable$ThrowObservable;
.super Lrx/Observable;
.source "Observable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThrowObservable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Observable",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 9589
    .local p0, "this":Lrx/Observable$ThrowObservable;, "Lrx/Observable$ThrowObservable<TT;>;"
    new-instance v0, Lrx/Observable$ThrowObservable$1;

    invoke-direct {v0, p1}, Lrx/Observable$ThrowObservable$1;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v0}, Lrx/Observable;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 9603
    return-void
.end method
