.class public Lrx/internal/operators/OperatorUnsubscribeOn;
.super Ljava/lang/Object;
.source "OperatorUnsubscribeOn.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
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


# instance fields
.field private final scheduler:Lrx/Scheduler;


# direct methods
.method public constructor <init>(Lrx/Scheduler;)V
    .locals 0
    .param p1, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 32
    .local p0, "this":Lrx/internal/operators/OperatorUnsubscribeOn;, "Lrx/internal/operators/OperatorUnsubscribeOn<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lrx/internal/operators/OperatorUnsubscribeOn;->scheduler:Lrx/Scheduler;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorUnsubscribeOn;)Lrx/Scheduler;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorUnsubscribeOn;

    .prologue
    .line 28
    iget-object v0, p0, Lrx/internal/operators/OperatorUnsubscribeOn;->scheduler:Lrx/Scheduler;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    .local p0, "this":Lrx/internal/operators/OperatorUnsubscribeOn;, "Lrx/internal/operators/OperatorUnsubscribeOn<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorUnsubscribeOn;->call(Lrx/Subscriber;)Lrx/Subscriber;

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
    .line 38
    .local p0, "this":Lrx/internal/operators/OperatorUnsubscribeOn;, "Lrx/internal/operators/OperatorUnsubscribeOn<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorUnsubscribeOn$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OperatorUnsubscribeOn$1;-><init>(Lrx/internal/operators/OperatorUnsubscribeOn;Lrx/Subscriber;)V

    .line 57
    .local v0, "parent":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorUnsubscribeOn$2;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/OperatorUnsubscribeOn$2;-><init>(Lrx/internal/operators/OperatorUnsubscribeOn;Lrx/Subscriber;)V

    invoke-static {v1}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v1

    invoke-virtual {p1, v1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 74
    return-object v0
.end method
