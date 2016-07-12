.class public final Lrx/internal/operators/OperatorTakeUntilPredicate;
.super Ljava/lang/Object;
.source "OperatorTakeUntilPredicate.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TT;TT;>;"
    }
.end annotation

.annotation build Lrx/annotations/Experimental;
.end annotation


# instance fields
.field private final stopPredicate:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Func1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntilPredicate;, "Lrx/internal/operators/OperatorTakeUntilPredicate<TT;>;"
    .local p1, "stopPredicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lrx/internal/operators/OperatorTakeUntilPredicate;->stopPredicate:Lrx/functions/Func1;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorTakeUntilPredicate;)Lrx/functions/Func1;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorTakeUntilPredicate;

    .prologue
    .line 31
    iget-object v0, p0, Lrx/internal/operators/OperatorTakeUntilPredicate;->stopPredicate:Lrx/functions/Func1;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntilPredicate;, "Lrx/internal/operators/OperatorTakeUntilPredicate<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorTakeUntilPredicate;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lrx/internal/operators/OperatorTakeUntilPredicate;, "Lrx/internal/operators/OperatorTakeUntilPredicate<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;-><init>(Lrx/internal/operators/OperatorTakeUntilPredicate;Lrx/Subscriber;Lrx/internal/operators/OperatorTakeUntilPredicate$1;)V

    .line 89
    .local v0, "parent":Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;, "Lrx/internal/operators/OperatorTakeUntilPredicate<TT;>.ParentSubscriber;"
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 90
    new-instance v1, Lrx/internal/operators/OperatorTakeUntilPredicate$1;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/OperatorTakeUntilPredicate$1;-><init>(Lrx/internal/operators/OperatorTakeUntilPredicate;Lrx/internal/operators/OperatorTakeUntilPredicate$ParentSubscriber;)V

    invoke-virtual {p1, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 97
    return-object v0
.end method
