.class public Lrx/subjects/SerializedSubject;
.super Lrx/subjects/Subject;
.source "SerializedSubject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/subjects/Subject",
        "<TT;TR;>;"
    }
.end annotation


# instance fields
.field private final actual:Lrx/subjects/Subject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/Subject",
            "<TT;TR;>;"
        }
    .end annotation
.end field

.field private final observer:Lrx/observers/SerializedObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/observers/SerializedObserver",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/subjects/Subject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/Subject",
            "<TT;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lrx/subjects/SerializedSubject;, "Lrx/subjects/SerializedSubject<TT;TR;>;"
    .local p1, "actual":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TR;>;"
    new-instance v0, Lrx/subjects/SerializedSubject$1;

    invoke-direct {v0, p1}, Lrx/subjects/SerializedSubject$1;-><init>(Lrx/subjects/Subject;)V

    invoke-direct {p0, v0}, Lrx/subjects/Subject;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 49
    iput-object p1, p0, Lrx/subjects/SerializedSubject;->actual:Lrx/subjects/Subject;

    .line 50
    new-instance v0, Lrx/observers/SerializedObserver;

    invoke-direct {v0, p1}, Lrx/observers/SerializedObserver;-><init>(Lrx/Observer;)V

    iput-object v0, p0, Lrx/subjects/SerializedSubject;->observer:Lrx/observers/SerializedObserver;

    .line 51
    return-void
.end method


# virtual methods
.method public getThrowable()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lrx/subjects/SerializedSubject;, "Lrx/subjects/SerializedSubject<TT;TR;>;"
    iget-object v0, p0, Lrx/subjects/SerializedSubject;->actual:Lrx/subjects/Subject;

    invoke-virtual {v0}, Lrx/subjects/Subject;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lrx/subjects/SerializedSubject;, "Lrx/subjects/SerializedSubject<TT;TR;>;"
    iget-object v0, p0, Lrx/subjects/SerializedSubject;->actual:Lrx/subjects/Subject;

    invoke-virtual {v0}, Lrx/subjects/Subject;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValues()[Ljava/lang/Object;
    .locals 1
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lrx/subjects/SerializedSubject;, "Lrx/subjects/SerializedSubject<TT;TR;>;"
    iget-object v0, p0, Lrx/subjects/SerializedSubject;->actual:Lrx/subjects/Subject;

    invoke-virtual {v0}, Lrx/subjects/Subject;->getValues()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lrx/subjects/SerializedSubject;, "Lrx/subjects/SerializedSubject<TT;TR;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lrx/subjects/SerializedSubject;->actual:Lrx/subjects/Subject;

    invoke-virtual {v0, p1}, Lrx/subjects/Subject;->getValues([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasCompleted()Z
    .locals 1
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lrx/subjects/SerializedSubject;, "Lrx/subjects/SerializedSubject<TT;TR;>;"
    iget-object v0, p0, Lrx/subjects/SerializedSubject;->actual:Lrx/subjects/Subject;

    invoke-virtual {v0}, Lrx/subjects/Subject;->hasCompleted()Z

    move-result v0

    return v0
.end method

.method public hasObservers()Z
    .locals 1

    .prologue
    .line 70
    .local p0, "this":Lrx/subjects/SerializedSubject;, "Lrx/subjects/SerializedSubject<TT;TR;>;"
    iget-object v0, p0, Lrx/subjects/SerializedSubject;->actual:Lrx/subjects/Subject;

    invoke-virtual {v0}, Lrx/subjects/Subject;->hasObservers()Z

    move-result v0

    return v0
.end method

.method public hasThrowable()Z
    .locals 1
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lrx/subjects/SerializedSubject;, "Lrx/subjects/SerializedSubject<TT;TR;>;"
    iget-object v0, p0, Lrx/subjects/SerializedSubject;->actual:Lrx/subjects/Subject;

    invoke-virtual {v0}, Lrx/subjects/Subject;->hasThrowable()Z

    move-result v0

    return v0
.end method

.method public hasValue()Z
    .locals 1
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lrx/subjects/SerializedSubject;, "Lrx/subjects/SerializedSubject<TT;TR;>;"
    iget-object v0, p0, Lrx/subjects/SerializedSubject;->actual:Lrx/subjects/Subject;

    invoke-virtual {v0}, Lrx/subjects/Subject;->hasValue()Z

    move-result v0

    return v0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 55
    .local p0, "this":Lrx/subjects/SerializedSubject;, "Lrx/subjects/SerializedSubject<TT;TR;>;"
    iget-object v0, p0, Lrx/subjects/SerializedSubject;->observer:Lrx/observers/SerializedObserver;

    invoke-virtual {v0}, Lrx/observers/SerializedObserver;->onCompleted()V

    .line 56
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 60
    .local p0, "this":Lrx/subjects/SerializedSubject;, "Lrx/subjects/SerializedSubject<TT;TR;>;"
    iget-object v0, p0, Lrx/subjects/SerializedSubject;->observer:Lrx/observers/SerializedObserver;

    invoke-virtual {v0, p1}, Lrx/observers/SerializedObserver;->onError(Ljava/lang/Throwable;)V

    .line 61
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
    .line 65
    .local p0, "this":Lrx/subjects/SerializedSubject;, "Lrx/subjects/SerializedSubject<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/subjects/SerializedSubject;->observer:Lrx/observers/SerializedObserver;

    invoke-virtual {v0, p1}, Lrx/observers/SerializedObserver;->onNext(Ljava/lang/Object;)V

    .line 66
    return-void
.end method
