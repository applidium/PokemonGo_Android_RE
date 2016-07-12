.class public abstract Lrx/SingleSubscriber;
.super Ljava/lang/Object;
.source "SingleSubscriber.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Subscription;"
    }
.end annotation

.annotation build Lrx/annotations/Experimental;
.end annotation


# instance fields
.field private final cs:Lrx/internal/util/SubscriptionList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    .local p0, "this":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lrx/internal/util/SubscriptionList;

    invoke-direct {v0}, Lrx/internal/util/SubscriptionList;-><init>()V

    iput-object v0, p0, Lrx/SingleSubscriber;->cs:Lrx/internal/util/SubscriptionList;

    return-void
.end method


# virtual methods
.method public final add(Lrx/Subscription;)V
    .locals 1
    .param p1, "s"    # Lrx/Subscription;

    .prologue
    .line 68
    .local p0, "this":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<TT;>;"
    iget-object v0, p0, Lrx/SingleSubscriber;->cs:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v0, p1}, Lrx/internal/util/SubscriptionList;->add(Lrx/Subscription;)V

    .line 69
    return-void
.end method

.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 83
    .local p0, "this":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<TT;>;"
    iget-object v0, p0, Lrx/SingleSubscriber;->cs:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v0}, Lrx/internal/util/SubscriptionList;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public abstract onError(Ljava/lang/Throwable;)V
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public final unsubscribe()V
    .locals 1

    .prologue
    .line 73
    .local p0, "this":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<TT;>;"
    iget-object v0, p0, Lrx/SingleSubscriber;->cs:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v0}, Lrx/internal/util/SubscriptionList;->unsubscribe()V

    .line 74
    return-void
.end method
