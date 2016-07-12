.class final Lrx/internal/operators/OperatorWindowWithSize$CountedSubject;
.super Ljava/lang/Object;
.source "OperatorWindowWithSize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorWindowWithSize;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CountedSubject"
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
    .locals 0
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
    .line 258
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$CountedSubject;, "Lrx/internal/operators/OperatorWindowWithSize$CountedSubject<TT;>;"
    .local p1, "consumer":Lrx/Observer;, "Lrx/Observer<TT;>;"
    .local p2, "producer":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithSize$CountedSubject;->consumer:Lrx/Observer;

    .line 260
    iput-object p2, p0, Lrx/internal/operators/OperatorWindowWithSize$CountedSubject;->producer:Lrx/Observable;

    .line 261
    return-void
.end method
