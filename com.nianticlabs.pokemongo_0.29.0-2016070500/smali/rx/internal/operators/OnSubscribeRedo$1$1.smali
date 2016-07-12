.class Lrx/internal/operators/OnSubscribeRedo$1$1;
.super Ljava/lang/Object;
.source "OnSubscribeRedo.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OnSubscribeRedo$1;->call(Lrx/Observable;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lrx/Notification",
        "<*>;",
        "Lrx/Notification",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OnSubscribeRedo$1;


# direct methods
.method constructor <init>(Lrx/internal/operators/OnSubscribeRedo$1;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeRedo$1$1;->this$0:Lrx/internal/operators/OnSubscribeRedo$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 60
    check-cast p1, Lrx/Notification;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeRedo$1$1;->call(Lrx/Notification;)Lrx/Notification;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Notification;)Lrx/Notification;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Notification",
            "<*>;)",
            "Lrx/Notification",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "terminal":Lrx/Notification;, "Lrx/Notification<*>;"
    const/4 v0, 0x0

    invoke-static {v0}, Lrx/Notification;->createOnNext(Ljava/lang/Object;)Lrx/Notification;

    move-result-object v0

    return-object v0
.end method
