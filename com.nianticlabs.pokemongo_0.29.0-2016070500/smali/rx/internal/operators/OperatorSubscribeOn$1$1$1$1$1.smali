.class Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1$1;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1;->request(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$4:Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1;

.field final synthetic val$n:J


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1;J)V
    .locals 0

    .prologue
    .line 90
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1$1;, "Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1$1;->this$4:Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1;

    iput-wide p2, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1$1;->val$n:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    .prologue
    .line 94
    .local p0, "this":Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1$1;, "Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1$1;->this$4:Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1;

    iget-object v0, v0, Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1;->val$producer:Lrx/Producer;

    iget-wide v2, p0, Lrx/internal/operators/OperatorSubscribeOn$1$1$1$1$1;->val$n:J

    invoke-interface {v0, v2, v3}, Lrx/Producer;->request(J)V

    .line 95
    return-void
.end method
