.class public Lrx/internal/operators/OperatorGroupBy;
.super Ljava/lang/Object;
.source "OperatorGroupBy.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<",
        "Lrx/observables/GroupedObservable",
        "<TK;TR;>;TT;>;"
    }
.end annotation


# static fields
.field private static final IDENTITY:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final NULL_KEY:Ljava/lang/Object;


# instance fields
.field final keySelector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+TK;>;"
        }
    .end annotation
.end field

.field final valueSelector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 424
    new-instance v0, Lrx/internal/operators/OperatorGroupBy$1;

    invoke-direct {v0}, Lrx/internal/operators/OperatorGroupBy$1;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorGroupBy;->IDENTITY:Lrx/functions/Func1;

    .line 431
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorGroupBy;->NULL_KEY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrx/functions/Func1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;+TK;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy;, "Lrx/internal/operators/OperatorGroupBy<TT;TK;TR;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    sget-object v0, Lrx/internal/operators/OperatorGroupBy;->IDENTITY:Lrx/functions/Func1;

    invoke-direct {p0, p1, v0}, Lrx/internal/operators/OperatorGroupBy;-><init>(Lrx/functions/Func1;Lrx/functions/Func1;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func1;Lrx/functions/Func1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;+TK;>;",
            "Lrx/functions/Func1",
            "<-TT;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy;, "Lrx/internal/operators/OperatorGroupBy<TT;TK;TR;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "valueSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy;->keySelector:Lrx/functions/Func1;

    .line 65
    iput-object p2, p0, Lrx/internal/operators/OperatorGroupBy;->valueSelector:Lrx/functions/Func1;

    .line 66
    return-void
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lrx/internal/operators/OperatorGroupBy;->NULL_KEY:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 52
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy;, "Lrx/internal/operators/OperatorGroupBy<TT;TK;TR;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorGroupBy;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lrx/observables/GroupedObservable",
            "<TK;TR;>;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lrx/internal/operators/OperatorGroupBy;, "Lrx/internal/operators/OperatorGroupBy<TT;TK;TR;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/observables/GroupedObservable<TK;TR;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorGroupBy;->keySelector:Lrx/functions/Func1;

    iget-object v2, p0, Lrx/internal/operators/OperatorGroupBy;->valueSelector:Lrx/functions/Func1;

    invoke-direct {v0, v1, v2, p1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;-><init>(Lrx/functions/Func1;Lrx/functions/Func1;Lrx/Subscriber;)V

    return-object v0
.end method
