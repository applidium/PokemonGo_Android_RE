.class public abstract Lrx/Subscriber;
.super Ljava/lang/Object;
.source "Subscriber.java"

# interfaces
.implements Lrx/Observer;
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observer",
        "<TT;>;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field private static final NOT_SET:Ljava/lang/Long;


# instance fields
.field private producer:Lrx/Producer;

.field private requested:J

.field private final subscriber:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<*>;"
        }
    .end annotation
.end field

.field private final subscriptions:Lrx/internal/util/SubscriptionList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lrx/Subscriber;->NOT_SET:Ljava/lang/Long;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 46
    .local p0, "this":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lrx/Subscriber;-><init>(Lrx/Subscriber;Z)V

    .line 47
    return-void
.end method

.method protected constructor <init>(Lrx/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lrx/Subscriber;-><init>(Lrx/Subscriber;Z)V

    .line 59
    return-void
.end method

.method protected constructor <init>(Lrx/Subscriber;Z)V
    .locals 2
    .param p2, "shareSubscriptions"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-object v0, Lrx/Subscriber;->NOT_SET:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lrx/Subscriber;->requested:J

    .line 80
    iput-object p1, p0, Lrx/Subscriber;->subscriber:Lrx/Subscriber;

    .line 81
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lrx/Subscriber;->subscriptions:Lrx/internal/util/SubscriptionList;

    :goto_0
    iput-object v0, p0, Lrx/Subscriber;->subscriptions:Lrx/internal/util/SubscriptionList;

    .line 82
    return-void

    .line 81
    :cond_0
    new-instance v0, Lrx/internal/util/SubscriptionList;

    invoke-direct {v0}, Lrx/internal/util/SubscriptionList;-><init>()V

    goto :goto_0
.end method

.method private addToRequested(J)V
    .locals 7
    .param p1, "n"    # J

    .prologue
    .line 161
    .local p0, "this":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    iget-wide v2, p0, Lrx/Subscriber;->requested:J

    sget-object v4, Lrx/Subscriber;->NOT_SET:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 162
    iput-wide p1, p0, Lrx/Subscriber;->requested:J

    .line 172
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-wide v2, p0, Lrx/Subscriber;->requested:J

    add-long v0, v2, p1

    .line 166
    .local v0, "total":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 167
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lrx/Subscriber;->requested:J

    goto :goto_0

    .line 169
    :cond_1
    iput-wide v0, p0, Lrx/Subscriber;->requested:J

    goto :goto_0
.end method


# virtual methods
.method public final add(Lrx/Subscription;)V
    .locals 1
    .param p1, "s"    # Lrx/Subscription;

    .prologue
    .line 93
    .local p0, "this":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    iget-object v0, p0, Lrx/Subscriber;->subscriptions:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v0, p1}, Lrx/internal/util/SubscriptionList;->add(Lrx/Subscription;)V

    .line 94
    return-void
.end method

.method public final isUnsubscribed()Z
    .locals 1

    .prologue
    .line 108
    .local p0, "this":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    iget-object v0, p0, Lrx/Subscriber;->subscriptions:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v0}, Lrx/internal/util/SubscriptionList;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 118
    .local p0, "this":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    return-void
.end method

.method protected final request(J)V
    .locals 5
    .param p1, "n"    # J

    .prologue
    .line 141
    .local p0, "this":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    .line 142
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "number requested cannot be negative: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    :cond_0
    const/4 v0, 0x0

    .line 148
    .local v0, "producerToRequestFrom":Lrx/Producer;
    monitor-enter p0

    .line 149
    :try_start_0
    iget-object v1, p0, Lrx/Subscriber;->producer:Lrx/Producer;

    if-eqz v1, :cond_1

    .line 150
    iget-object v0, p0, Lrx/Subscriber;->producer:Lrx/Producer;

    .line 155
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    invoke-interface {v0, p1, p2}, Lrx/Producer;->request(J)V

    .line 158
    :goto_0
    return-void

    .line 152
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lrx/Subscriber;->addToRequested(J)V

    .line 153
    monitor-exit p0

    goto :goto_0

    .line 155
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 6
    .param p1, "p"    # Lrx/Producer;

    .prologue
    .line 191
    .local p0, "this":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    const/4 v0, 0x0

    .line 192
    .local v0, "passToSubscriber":Z
    monitor-enter p0

    .line 193
    :try_start_0
    iget-wide v2, p0, Lrx/Subscriber;->requested:J

    .line 194
    .local v2, "toRequest":J
    iput-object p1, p0, Lrx/Subscriber;->producer:Lrx/Producer;

    .line 195
    iget-object v1, p0, Lrx/Subscriber;->subscriber:Lrx/Subscriber;

    if-eqz v1, :cond_0

    .line 197
    sget-object v1, Lrx/Subscriber;->NOT_SET:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 199
    const/4 v0, 0x1

    .line 202
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    if-eqz v0, :cond_1

    .line 205
    iget-object v1, p0, Lrx/Subscriber;->subscriber:Lrx/Subscriber;

    iget-object v4, p0, Lrx/Subscriber;->producer:Lrx/Producer;

    invoke-virtual {v1, v4}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 214
    :goto_0
    return-void

    .line 202
    .end local v2    # "toRequest":J
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 208
    .restart local v2    # "toRequest":J
    :cond_1
    sget-object v1, Lrx/Subscriber;->NOT_SET:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 209
    iget-object v1, p0, Lrx/Subscriber;->producer:Lrx/Producer;

    const-wide v4, 0x7fffffffffffffffL

    invoke-interface {v1, v4, v5}, Lrx/Producer;->request(J)V

    goto :goto_0

    .line 211
    :cond_2
    iget-object v1, p0, Lrx/Subscriber;->producer:Lrx/Producer;

    invoke-interface {v1, v2, v3}, Lrx/Producer;->request(J)V

    goto :goto_0
.end method

.method public final unsubscribe()V
    .locals 1

    .prologue
    .line 98
    .local p0, "this":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    iget-object v0, p0, Lrx/Subscriber;->subscriptions:Lrx/internal/util/SubscriptionList;

    invoke-virtual {v0}, Lrx/internal/util/SubscriptionList;->unsubscribe()V

    .line 99
    return-void
.end method
