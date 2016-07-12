.class final Lrx/internal/operators/OnSubscribeUsing$DisposeAction;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "OnSubscribeUsing.java"

# interfaces
.implements Lrx/Subscription;
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeUsing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DisposeAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Resource:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lrx/functions/Action0;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3b28c647329bb8ccL


# instance fields
.field private dispose:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1",
            "<-TResource;>;"
        }
    .end annotation
.end field

.field private resource:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResource;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/functions/Action1;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-TResource;>;TResource;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lrx/internal/operators/OnSubscribeUsing$DisposeAction;, "Lrx/internal/operators/OnSubscribeUsing$DisposeAction<TResource;>;"
    .local p1, "dispose":Lrx/functions/Action1;, "Lrx/functions/Action1<-TResource;>;"
    .local p2, "resource":Ljava/lang/Object;, "TResource;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 107
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeUsing$DisposeAction;->dispose:Lrx/functions/Action1;

    .line 108
    iput-object p2, p0, Lrx/internal/operators/OnSubscribeUsing$DisposeAction;->resource:Ljava/lang/Object;

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lrx/internal/operators/OnSubscribeUsing$DisposeAction;->lazySet(Z)V

    .line 110
    return-void
.end method

.method synthetic constructor <init>(Lrx/functions/Action1;Ljava/lang/Object;Lrx/internal/operators/OnSubscribeUsing$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/functions/Action1;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lrx/internal/operators/OnSubscribeUsing$1;

    .prologue
    .line 99
    .local p0, "this":Lrx/internal/operators/OnSubscribeUsing$DisposeAction;, "Lrx/internal/operators/OnSubscribeUsing$DisposeAction<TResource;>;"
    invoke-direct {p0, p1, p2}, Lrx/internal/operators/OnSubscribeUsing$DisposeAction;-><init>(Lrx/functions/Action1;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .prologue
    .local p0, "this":Lrx/internal/operators/OnSubscribeUsing$DisposeAction;, "Lrx/internal/operators/OnSubscribeUsing$DisposeAction<TResource;>;"
    const/4 v2, 0x0

    .line 114
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lrx/internal/operators/OnSubscribeUsing$DisposeAction;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    :try_start_0
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeUsing$DisposeAction;->dispose:Lrx/functions/Action1;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeUsing$DisposeAction;->resource:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    iput-object v2, p0, Lrx/internal/operators/OnSubscribeUsing$DisposeAction;->resource:Ljava/lang/Object;

    .line 119
    iput-object v2, p0, Lrx/internal/operators/OnSubscribeUsing$DisposeAction;->dispose:Lrx/functions/Action1;

    .line 122
    :cond_0
    return-void

    .line 118
    :catchall_0
    move-exception v0

    iput-object v2, p0, Lrx/internal/operators/OnSubscribeUsing$DisposeAction;->resource:Ljava/lang/Object;

    .line 119
    iput-object v2, p0, Lrx/internal/operators/OnSubscribeUsing$DisposeAction;->dispose:Lrx/functions/Action1;

    throw v0
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 126
    .local p0, "this":Lrx/internal/operators/OnSubscribeUsing$DisposeAction;, "Lrx/internal/operators/OnSubscribeUsing$DisposeAction<TResource;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeUsing$DisposeAction;->get()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 0

    .prologue
    .line 131
    .local p0, "this":Lrx/internal/operators/OnSubscribeUsing$DisposeAction;, "Lrx/internal/operators/OnSubscribeUsing$DisposeAction<TResource;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeUsing$DisposeAction;->call()V

    .line 132
    return-void
.end method
