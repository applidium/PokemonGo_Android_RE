.class final Lrx/internal/util/ScalarSynchronousObservable$DirectScheduledEmission;
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
    name = "DirectScheduledEmission"
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
.field private final es:Lrx/internal/schedulers/EventLoopsScheduler;

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lrx/internal/schedulers/EventLoopsScheduler;Ljava/lang/Object;)V
    .locals 0
    .param p1, "es"    # Lrx/internal/schedulers/EventLoopsScheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/schedulers/EventLoopsScheduler;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$DirectScheduledEmission;, "Lrx/internal/util/ScalarSynchronousObservable$DirectScheduledEmission<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable$DirectScheduledEmission;->es:Lrx/internal/schedulers/EventLoopsScheduler;

    .line 77
    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousObservable$DirectScheduledEmission;->value:Ljava/lang/Object;

    .line 78
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 72
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$DirectScheduledEmission;, "Lrx/internal/util/ScalarSynchronousObservable$DirectScheduledEmission<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousObservable$DirectScheduledEmission;->call(Lrx/Subscriber;)V

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
    .line 81
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$DirectScheduledEmission;, "Lrx/internal/util/ScalarSynchronousObservable$DirectScheduledEmission<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lrx/internal/util/ScalarSynchronousObservable$DirectScheduledEmission;->es:Lrx/internal/schedulers/EventLoopsScheduler;

    new-instance v1, Lrx/internal/util/ScalarSynchronousObservable$ScalarSynchronousAction;

    iget-object v2, p0, Lrx/internal/util/ScalarSynchronousObservable$DirectScheduledEmission;->value:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lrx/internal/util/ScalarSynchronousObservable$ScalarSynchronousAction;-><init>(Lrx/Subscriber;Ljava/lang/Object;Lrx/internal/util/ScalarSynchronousObservable$1;)V

    invoke-virtual {v0, v1}, Lrx/internal/schedulers/EventLoopsScheduler;->scheduleDirect(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 82
    return-void
.end method
