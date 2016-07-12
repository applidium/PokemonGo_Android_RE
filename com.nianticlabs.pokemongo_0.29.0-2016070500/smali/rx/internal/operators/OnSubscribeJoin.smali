.class public final Lrx/internal/operators/OnSubscribeJoin;
.super Ljava/lang/Object;
.source "OnSubscribeJoin.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeJoin$ResultSink;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Left:Ljava/lang/Object;",
        "TRight:",
        "Ljava/lang/Object;",
        "T",
        "LeftDuration:Ljava/lang/Object;",
        "TRightDuration:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final left:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT",
            "Left;",
            ">;"
        }
    .end annotation
.end field

.field final leftDurationSelector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<TT",
            "Left;",
            "Lrx/Observable",
            "<TT",
            "LeftDuration;",
            ">;>;"
        }
    .end annotation
.end field

.field final resultSelector:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2",
            "<TT",
            "Left;",
            "TTRight;TR;>;"
        }
    .end annotation
.end field

.field final right:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TTRight;>;"
        }
    .end annotation
.end field

.field final rightDurationSelector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<TTRight;",
            "Lrx/Observable",
            "<TTRightDuration;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/Observable;Lrx/Observable;Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT",
            "Left;",
            ">;",
            "Lrx/Observable",
            "<TTRight;>;",
            "Lrx/functions/Func1",
            "<TT",
            "Left;",
            "Lrx/Observable",
            "<TT",
            "LeftDuration;",
            ">;>;",
            "Lrx/functions/Func1",
            "<TTRight;",
            "Lrx/Observable",
            "<TTRightDuration;>;>;",
            "Lrx/functions/Func2",
            "<TT",
            "Left;",
            "TTRight;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>;"
    .local p1, "left":Lrx/Observable;, "Lrx/Observable<TTLeft;>;"
    .local p2, "right":Lrx/Observable;, "Lrx/Observable<TTRight;>;"
    .local p3, "leftDurationSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<TTLeft;Lrx/Observable<TTLeftDuration;>;>;"
    .local p4, "rightDurationSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<TTRight;Lrx/Observable<TTRightDuration;>;>;"
    .local p5, "resultSelector":Lrx/functions/Func2;, "Lrx/functions/Func2<TTLeft;TTRight;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeJoin;->left:Lrx/Observable;

    .line 56
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeJoin;->right:Lrx/Observable;

    .line 57
    iput-object p3, p0, Lrx/internal/operators/OnSubscribeJoin;->leftDurationSelector:Lrx/functions/Func1;

    .line 58
    iput-object p4, p0, Lrx/internal/operators/OnSubscribeJoin;->rightDurationSelector:Lrx/functions/Func1;

    .line 59
    iput-object p5, p0, Lrx/internal/operators/OnSubscribeJoin;->resultSelector:Lrx/functions/Func2;

    .line 60
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 42
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeJoin;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lrx/internal/operators/OnSubscribeJoin;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>;"
    .local p1, "t1":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeJoin$ResultSink;

    new-instance v1, Lrx/observers/SerializedSubscriber;

    invoke-direct {v1, p1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    invoke-direct {v0, p0, v1}, Lrx/internal/operators/OnSubscribeJoin$ResultSink;-><init>(Lrx/internal/operators/OnSubscribeJoin;Lrx/Subscriber;)V

    .line 65
    .local v0, "result":Lrx/internal/operators/OnSubscribeJoin$ResultSink;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink;"
    invoke-virtual {v0}, Lrx/internal/operators/OnSubscribeJoin$ResultSink;->run()V

    .line 66
    return-void
.end method
