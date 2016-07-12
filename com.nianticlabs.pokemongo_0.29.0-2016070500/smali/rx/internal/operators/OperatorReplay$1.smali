.class final Lrx/internal/operators/OperatorReplay$1;
.super Ljava/lang/Object;
.source "OperatorReplay.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorReplay;->createScheduledSubject(Lrx/subjects/Subject;Lrx/Scheduler;)Lrx/subjects/Subject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$observedOn:Lrx/Observable;


# direct methods
.method constructor <init>(Lrx/Observable;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lrx/internal/operators/OperatorReplay$1;->val$observedOn:Lrx/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorReplay$1;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "o":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OperatorReplay$1;->val$observedOn:Lrx/Observable;

    invoke-static {v0}, Lrx/internal/operators/OperatorReplay;->subscriberOf(Lrx/Observable;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    invoke-interface {v0, p1}, Lrx/Observable$OnSubscribe;->call(Ljava/lang/Object;)V

    .line 52
    return-void
.end method
