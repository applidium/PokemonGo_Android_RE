.class final Lrx/internal/operators/OperatorPublish$InnerProducer;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OperatorPublish.java"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorPublish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InnerProducer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/Producer;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field static final NOT_REQUESTED:J = -0x4000000000000000L

.field static final UNSUBSCRIBED:J = -0x8000000000000000L

.field private static final serialVersionUID:J = -0x3dcf6c3b2e70d8baL


# instance fields
.field final child:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final parent:Lrx/internal/operators/OperatorPublish$PublishSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorPublish$PublishSubscriber",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorPublish$PublishSubscriber;Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorPublish$PublishSubscriber",
            "<TT;>;",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 646
    .local p0, "this":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    .local p1, "parent":Lrx/internal/operators/OperatorPublish$PublishSubscriber;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    .local p2, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 647
    iput-object p1, p0, Lrx/internal/operators/OperatorPublish$InnerProducer;->parent:Lrx/internal/operators/OperatorPublish$PublishSubscriber;

    .line 648
    iput-object p2, p0, Lrx/internal/operators/OperatorPublish$InnerProducer;->child:Lrx/Subscriber;

    .line 649
    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OperatorPublish$InnerProducer;->lazySet(J)V

    .line 650
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 4

    .prologue
    .line 737
    .local p0, "this":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OperatorPublish$InnerProducer;->get()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public produced(J)J
    .locals 11
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    const-wide/16 v8, 0x0

    const-wide/high16 v4, -0x8000000000000000L

    .line 705
    cmp-long v6, p1, v8

    if-gtz v6, :cond_0

    .line 706
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Cant produce zero or less"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 710
    :cond_0
    invoke-virtual {p0}, Lrx/internal/operators/OperatorPublish$InnerProducer;->get()J

    move-result-wide v0

    .line 713
    .local v0, "r":J
    const-wide/high16 v6, -0x4000000000000000L    # -2.0

    cmp-long v6, v0, v6

    if-nez v6, :cond_1

    .line 714
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Produced without request"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 717
    :cond_1
    cmp-long v6, v0, v4

    if-nez v6, :cond_2

    move-wide v2, v4

    .line 729
    :goto_0
    return-wide v2

    .line 721
    :cond_2
    sub-long v2, v0, p1

    .line 723
    .local v2, "u":J
    cmp-long v6, v2, v8

    if-gez v6, :cond_3

    .line 724
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "More produced ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") than requested ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 727
    :cond_3
    invoke-virtual {p0, v0, v1, v2, v3}, Lrx/internal/operators/OperatorPublish$InnerProducer;->compareAndSet(JJ)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0
.end method

.method public request(J)V
    .locals 9
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    const-wide/16 v6, 0x0

    .line 655
    cmp-long v4, p1, v6

    if-gez v4, :cond_1

    .line 691
    :cond_0
    :goto_0
    return-void

    .line 663
    :cond_1
    invoke-virtual {p0}, Lrx/internal/operators/OperatorPublish$InnerProducer;->get()J

    move-result-wide v0

    .line 665
    .local v0, "r":J
    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    .line 669
    cmp-long v4, v0, v6

    if-ltz v4, :cond_2

    cmp-long v4, p1, v6

    if-eqz v4, :cond_0

    .line 674
    :cond_2
    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    cmp-long v4, v0, v4

    if-nez v4, :cond_4

    .line 676
    move-wide v2, p1

    .line 687
    .local v2, "u":J
    :cond_3
    :goto_1
    invoke-virtual {p0, v0, v1, v2, v3}, Lrx/internal/operators/OperatorPublish$InnerProducer;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 690
    iget-object v4, p0, Lrx/internal/operators/OperatorPublish$InnerProducer;->parent:Lrx/internal/operators/OperatorPublish$PublishSubscriber;

    invoke-virtual {v4}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->dispatch()V

    goto :goto_0

    .line 679
    .end local v2    # "u":J
    :cond_4
    add-long v2, v0, p1

    .line 681
    .restart local v2    # "u":J
    cmp-long v4, v2, v6

    if-gez v4, :cond_3

    .line 683
    const-wide v2, 0x7fffffffffffffffL

    goto :goto_1
.end method

.method public unsubscribe()V
    .locals 6

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    const-wide/high16 v4, -0x8000000000000000L

    .line 741
    invoke-virtual {p0}, Lrx/internal/operators/OperatorPublish$InnerProducer;->get()J

    move-result-wide v0

    .line 743
    .local v0, "r":J
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 748
    invoke-virtual {p0, v4, v5}, Lrx/internal/operators/OperatorPublish$InnerProducer;->getAndSet(J)J

    move-result-wide v0

    .line 750
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 752
    iget-object v2, p0, Lrx/internal/operators/OperatorPublish$InnerProducer;->parent:Lrx/internal/operators/OperatorPublish$PublishSubscriber;

    invoke-virtual {v2, p0}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->remove(Lrx/internal/operators/OperatorPublish$InnerProducer;)V

    .line 757
    iget-object v2, p0, Lrx/internal/operators/OperatorPublish$InnerProducer;->parent:Lrx/internal/operators/OperatorPublish$PublishSubscriber;

    invoke-virtual {v2}, Lrx/internal/operators/OperatorPublish$PublishSubscriber;->dispatch()V

    .line 760
    :cond_0
    return-void
.end method
