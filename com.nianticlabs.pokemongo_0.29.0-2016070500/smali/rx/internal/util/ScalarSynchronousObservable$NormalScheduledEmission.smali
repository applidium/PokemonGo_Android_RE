.class final Lrx/internal/util/ScalarSynchronousObservable$NormalScheduledEmission;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/ScalarSynchronousObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NormalScheduledEmission"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final scheduler:Lrx/Scheduler;

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/Scheduler;Ljava/lang/Object;)V
    .locals 0
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Scheduler;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$NormalScheduledEmission;, "Lrx/internal/util/ScalarSynchronousObservable$NormalScheduledEmission<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable$NormalScheduledEmission;->scheduler:Lrx/Scheduler;

    .line 91
    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousObservable$NormalScheduledEmission;->value:Ljava/lang/Object;

    .line 92
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 85
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$NormalScheduledEmission;, "Lrx/internal/util/ScalarSynchronousObservable$NormalScheduledEmission<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousObservable$NormalScheduledEmission;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$NormalScheduledEmission;, "Lrx/internal/util/ScalarSynchronousObservable$NormalScheduledEmission<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v1, p0, Lrx/internal/util/ScalarSynchronousObservable$NormalScheduledEmission;->scheduler:Lrx/Scheduler;

    invoke-virtual {v1}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    .line 97
    .local v0, "worker":Lrx/Scheduler$Worker;
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 98
    new-instance v1, Lrx/internal/util/ScalarSynchronousObservable$ScalarSynchronousAction;

    iget-object v2, p0, Lrx/internal/util/ScalarSynchronousObservable$NormalScheduledEmission;->value:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lrx/internal/util/ScalarSynchronousObservable$ScalarSynchronousAction;-><init>(Lrx/Subscriber;Ljava/lang/Object;Lrx/internal/util/ScalarSynchronousObservable$1;)V

    invoke-virtual {v0, v1}, Lrx/Scheduler$Worker;->schedule(Lrx/functions/Action0;)Lrx/Subscription;

    .line 99
    return-void
.end method
