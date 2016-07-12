.class Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber$2;
.super Ljava/lang/Object;
.source "OperatorWindowWithSize.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;)V
    .locals 0

    .prologue
    .line 174
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber$2;, "Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber.2;"
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber$2;->this$1:Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 7
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber$2;, "Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber.2;"
    const-wide/16 v4, 0x0

    .line 177
    cmp-long v2, p1, v4

    if-lez v2, :cond_1

    .line 178
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber$2;->this$1:Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;

    iget-object v2, v2, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithSize;

    iget v2, v2, Lrx/internal/operators/OperatorWindowWithSize;->size:I

    int-to-long v2, v2

    mul-long v0, p1, v2

    .line 179
    .local v0, "u":J
    const/16 v2, 0x1f

    ushr-long v2, v0, v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    div-long v2, v0, p1

    iget-object v4, p0, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber$2;->this$1:Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;

    iget-object v4, v4, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;->this$0:Lrx/internal/operators/OperatorWindowWithSize;

    iget v4, v4, Lrx/internal/operators/OperatorWindowWithSize;->size:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 180
    const-wide v0, 0x7fffffffffffffffL

    .line 182
    :cond_0
    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber$2;->this$1:Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;

    invoke-virtual {v2, v0, v1}, Lrx/internal/operators/OperatorWindowWithSize$InexactSubscriber;->requestMore(J)V

    .line 184
    .end local v0    # "u":J
    :cond_1
    return-void
.end method
