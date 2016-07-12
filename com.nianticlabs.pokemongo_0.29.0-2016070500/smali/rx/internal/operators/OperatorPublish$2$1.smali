.class Lrx/internal/operators/OperatorPublish$2$1;
.super Ljava/lang/Object;
.source "OperatorPublish.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorPublish$2;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<",
        "Lrx/Subscription;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/operators/OperatorPublish$2;

.field final synthetic val$child:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorPublish$2;Lrx/Subscriber;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lrx/internal/operators/OperatorPublish$2$1;->this$0:Lrx/internal/operators/OperatorPublish$2;

    iput-object p2, p0, Lrx/internal/operators/OperatorPublish$2$1;->val$child:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 127
    check-cast p1, Lrx/Subscription;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorPublish$2$1;->call(Lrx/Subscription;)V

    return-void
.end method

.method public call(Lrx/Subscription;)V
    .locals 1
    .param p1, "t1"    # Lrx/Subscription;

    .prologue
    .line 130
    iget-object v0, p0, Lrx/internal/operators/OperatorPublish$2$1;->val$child:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 131
    return-void
.end method
