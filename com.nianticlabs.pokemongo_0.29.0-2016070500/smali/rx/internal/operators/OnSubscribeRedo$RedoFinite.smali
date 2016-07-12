.class public final Lrx/internal/operators/OnSubscribeRedo$RedoFinite;
.super Ljava/lang/Object;
.source "OnSubscribeRedo.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OnSubscribeRedo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RedoFinite"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lrx/Observable",
        "<+",
        "Lrx/Notification",
        "<*>;>;",
        "Lrx/Observable",
        "<*>;>;"
    }
.end annotation


# instance fields
.field private final count:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "count"    # J

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-wide p1, p0, Lrx/internal/operators/OnSubscribeRedo$RedoFinite;->count:J

    .line 74
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OnSubscribeRedo$RedoFinite;)J
    .locals 2
    .param p0, "x0"    # Lrx/internal/operators/OnSubscribeRedo$RedoFinite;

    .prologue
    .line 69
    iget-wide v0, p0, Lrx/internal/operators/OnSubscribeRedo$RedoFinite;->count:J

    return-wide v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 69
    check-cast p1, Lrx/Observable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeRedo$RedoFinite;->call(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+",
            "Lrx/Notification",
            "<*>;>;)",
            "Lrx/Observable",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "ts":Lrx/Observable;, "Lrx/Observable<+Lrx/Notification<*>;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeRedo$RedoFinite$1;

    invoke-direct {v0, p0}, Lrx/internal/operators/OnSubscribeRedo$RedoFinite$1;-><init>(Lrx/internal/operators/OnSubscribeRedo$RedoFinite;)V

    invoke-virtual {p1, v0}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->dematerialize()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
