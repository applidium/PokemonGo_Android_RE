.class public final Lrx/internal/operators/OnSubscribeGroupJoin;
.super Ljava/lang/Object;
.source "OnSubscribeGroupJoin.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc;,
        Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1:",
        "Ljava/lang/Object;",
        "T2:",
        "Ljava/lang/Object;",
        "D1:",
        "Ljava/lang/Object;",
        "D2:",
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
.field protected final left:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT1;>;"
        }
    .end annotation
.end field

.field protected final leftDuration:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT1;+",
            "Lrx/Observable",
            "<TD1;>;>;"
        }
    .end annotation
.end field

.field protected final resultSelector:Lrx/functions/Func2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func2",
            "<-TT1;-",
            "Lrx/Observable",
            "<TT2;>;+TR;>;"
        }
    .end annotation
.end field

.field protected final right:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable",
            "<TT2;>;"
        }
    .end annotation
.end field

.field protected final rightDuration:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT2;+",
            "Lrx/Observable",
            "<TD2;>;>;"
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
            "<TT1;>;",
            "Lrx/Observable",
            "<TT2;>;",
            "Lrx/functions/Func1",
            "<-TT1;+",
            "Lrx/Observable",
            "<TD1;>;>;",
            "Lrx/functions/Func1",
            "<-TT2;+",
            "Lrx/Observable",
            "<TD2;>;>;",
            "Lrx/functions/Func2",
            "<-TT1;-",
            "Lrx/Observable",
            "<TT2;>;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>;"
    .local p1, "left":Lrx/Observable;, "Lrx/Observable<TT1;>;"
    .local p2, "right":Lrx/Observable;, "Lrx/Observable<TT2;>;"
    .local p3, "leftDuration":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT1;+Lrx/Observable<TD1;>;>;"
    .local p4, "rightDuration":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT2;+Lrx/Observable<TD2;>;>;"
    .local p5, "resultSelector":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT1;-Lrx/Observable<TT2;>;+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeGroupJoin;->left:Lrx/Observable;

    .line 61
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeGroupJoin;->right:Lrx/Observable;

    .line 62
    iput-object p3, p0, Lrx/internal/operators/OnSubscribeGroupJoin;->leftDuration:Lrx/functions/Func1;

    .line 63
    iput-object p4, p0, Lrx/internal/operators/OnSubscribeGroupJoin;->rightDuration:Lrx/functions/Func1;

    .line 64
    iput-object p5, p0, Lrx/internal/operators/OnSubscribeGroupJoin;->resultSelector:Lrx/functions/Func2;

    .line 65
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 47
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeGroupJoin;->call(Lrx/Subscriber;)V

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
    .line 69
    .local p0, "this":Lrx/internal/operators/OnSubscribeGroupJoin;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;

    new-instance v1, Lrx/observers/SerializedSubscriber;

    invoke-direct {v1, p1}, Lrx/observers/SerializedSubscriber;-><init>(Lrx/Subscriber;)V

    invoke-direct {v0, p0, v1}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;-><init>(Lrx/internal/operators/OnSubscribeGroupJoin;Lrx/Subscriber;)V

    .line 70
    .local v0, "ro":Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager;"
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 71
    invoke-virtual {v0}, Lrx/internal/operators/OnSubscribeGroupJoin$ResultManager;->init()V

    .line 72
    return-void
.end method
