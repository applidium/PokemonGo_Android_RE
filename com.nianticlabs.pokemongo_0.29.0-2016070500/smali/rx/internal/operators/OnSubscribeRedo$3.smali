.class Lrx/internal/operators/OnSubscribeRedo$3;
.super Ljava/lang/Object;
.source "OnSubscribeRedo.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeRedo;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<",
        "Lrx/Notification",
        "<*>;",
        "Lrx/Notification",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OnSubscribeRedo;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeRedo;)V
    .locals 0

    .prologue
    .line 286
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$3;, "Lrx/internal/operators/OnSubscribeRedo.3;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeRedo$3;->this$0:Lrx/internal/operators/OnSubscribeRedo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 286
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$3;, "Lrx/internal/operators/OnSubscribeRedo.3;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeRedo$3;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lrx/Notification",
            "<*>;>;)",
            "Lrx/Subscriber",
            "<-",
            "Lrx/Notification",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 289
    .local p0, "this":Lrx/internal/operators/OnSubscribeRedo$3;, "Lrx/internal/operators/OnSubscribeRedo.3;"
    .local p1, "filteredTerminals":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/Notification<*>;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeRedo$3$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OnSubscribeRedo$3$1;-><init>(Lrx/internal/operators/OnSubscribeRedo$3;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method
