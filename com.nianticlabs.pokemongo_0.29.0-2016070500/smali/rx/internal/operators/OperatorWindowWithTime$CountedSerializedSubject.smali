.class final Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;
.super Ljava/lang/Object;
.source "OperatorWindowWithTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorWindowWithTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CountedSerializedSubject"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final consumer:Lrx/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observer",
            "<TT;>;"
        }
    .end annotation
.end field

.field count:I

.field final producer:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observer;Lrx/Observable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer",
            "<TT;>;",
            "Lrx/Observable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;, "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;"
    .local p1, "consumer":Lrx/Observer;, "Lrx/Observer<TT;>;"
    .local p2, "producer":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    new-instance v0, Lrx/observers/SerializedObserver;

    invoke-direct {v0, p1}, Lrx/observers/SerializedObserver;-><init>(Lrx/Observer;)V

    iput-object v0, p0, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;->consumer:Lrx/Observer;

    .line 358
    iput-object p2, p0, Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject;->producer:Lrx/Observable;

    .line 359
    return-void
.end method
