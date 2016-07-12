.class Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;
.super Ljava/lang/Object;
.source "OperatorSwitch.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;-><init>(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;)V
    .locals 0

    .prologue
    .line 83
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;->this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 13
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber.1;"
    const-wide v10, 0x7fffffffffffffffL

    const-wide/16 v8, 0x0

    const/4 v4, 0x1

    .line 87
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;->this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    iget-boolean v1, v1, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->infinite:Z

    if-eqz v1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    cmp-long v1, p1, v10

    if-nez v1, :cond_2

    .line 91
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;->this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    iput-boolean v4, v1, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->infinite:Z

    .line 94
    :cond_2
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;->this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    iget-object v4, v1, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 95
    :try_start_0
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;->this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    iget-object v0, v1, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;

    .line 96
    .local v0, "localSubscriber":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>.InnerSubscriber;"
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;->this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    iget-object v1, v1, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;

    if-nez v1, :cond_4

    .line 97
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;->this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    iget-wide v6, v1, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->initialRequested:J

    add-long v2, v6, p1

    .line 98
    .local v2, "r":J
    cmp-long v1, v2, v8

    if-gez v1, :cond_3

    .line 99
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;->this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    const/4 v5, 0x1

    iput-boolean v5, v1, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->infinite:Z

    .line 111
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    if-eqz v0, :cond_0

    .line 113
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;->this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    iget-boolean v1, v1, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->infinite:Z

    if-eqz v1, :cond_6

    .line 114
    invoke-virtual {v0, v10, v11}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->requestMore(J)V

    goto :goto_0

    .line 101
    :cond_3
    :try_start_1
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;->this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    iput-wide v2, v1, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->initialRequested:J

    goto :goto_1

    .line 111
    .end local v0    # "localSubscriber":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>.InnerSubscriber;"
    .end local v2    # "r":J
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 104
    .restart local v0    # "localSubscriber":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>.InnerSubscriber;"
    :cond_4
    :try_start_2
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;->this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    iget-object v1, v1, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;

    # getter for: Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->requested:J
    invoke-static {v1}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->access$100(Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;)J

    move-result-wide v6

    add-long v2, v6, p1

    .line 105
    .restart local v2    # "r":J
    cmp-long v1, v2, v8

    if-gez v1, :cond_5

    .line 106
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;->this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    const/4 v5, 0x1

    iput-boolean v5, v1, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->infinite:Z

    goto :goto_1

    .line 108
    :cond_5
    iget-object v1, p0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$1;->this$0:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    iget-object v1, v1, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;->currentSubscriber:Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;

    # setter for: Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->requested:J
    invoke-static {v1, v2, v3}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->access$102(Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;J)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 116
    :cond_6
    invoke-virtual {v0, p1, p2}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber$InnerSubscriber;->requestMore(J)V

    goto :goto_0
.end method
