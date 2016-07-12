.class Lrx/internal/util/ObjectPool$1;
.super Ljava/lang/Object;
.source "ObjectPool.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/util/ObjectPool;-><init>(IIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/internal/util/ObjectPool;

.field final synthetic val$max:I

.field final synthetic val$min:I


# direct methods
.method constructor <init>(Lrx/internal/util/ObjectPool;II)V
    .locals 0

    .prologue
    .line 58
    .local p0, "this":Lrx/internal/util/ObjectPool$1;, "Lrx/internal/util/ObjectPool.1;"
    iput-object p1, p0, Lrx/internal/util/ObjectPool$1;->this$0:Lrx/internal/util/ObjectPool;

    iput p2, p0, Lrx/internal/util/ObjectPool$1;->val$min:I

    iput p3, p0, Lrx/internal/util/ObjectPool$1;->val$max:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 6

    .prologue
    .line 62
    .local p0, "this":Lrx/internal/util/ObjectPool$1;, "Lrx/internal/util/ObjectPool.1;"
    iget-object v4, p0, Lrx/internal/util/ObjectPool$1;->this$0:Lrx/internal/util/ObjectPool;

    # getter for: Lrx/internal/util/ObjectPool;->pool:Ljava/util/Queue;
    invoke-static {v4}, Lrx/internal/util/ObjectPool;->access$000(Lrx/internal/util/ObjectPool;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v1

    .line 63
    .local v1, "size":I
    iget v4, p0, Lrx/internal/util/ObjectPool$1;->val$min:I

    if-ge v1, v4, :cond_0

    .line 64
    iget v4, p0, Lrx/internal/util/ObjectPool$1;->val$max:I

    sub-int v2, v4, v1

    .line 65
    .local v2, "sizeToBeAdded":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 66
    iget-object v4, p0, Lrx/internal/util/ObjectPool$1;->this$0:Lrx/internal/util/ObjectPool;

    # getter for: Lrx/internal/util/ObjectPool;->pool:Ljava/util/Queue;
    invoke-static {v4}, Lrx/internal/util/ObjectPool;->access$000(Lrx/internal/util/ObjectPool;)Ljava/util/Queue;

    move-result-object v4

    iget-object v5, p0, Lrx/internal/util/ObjectPool$1;->this$0:Lrx/internal/util/ObjectPool;

    invoke-virtual {v5}, Lrx/internal/util/ObjectPool;->createObject()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    .end local v0    # "i":I
    .end local v2    # "sizeToBeAdded":I
    :cond_0
    iget v4, p0, Lrx/internal/util/ObjectPool$1;->val$max:I

    if-le v1, v4, :cond_1

    .line 69
    iget v4, p0, Lrx/internal/util/ObjectPool$1;->val$max:I

    sub-int v3, v1, v4

    .line 70
    .local v3, "sizeToBeRemoved":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 72
    iget-object v4, p0, Lrx/internal/util/ObjectPool$1;->this$0:Lrx/internal/util/ObjectPool;

    # getter for: Lrx/internal/util/ObjectPool;->pool:Ljava/util/Queue;
    invoke-static {v4}, Lrx/internal/util/ObjectPool;->access$000(Lrx/internal/util/ObjectPool;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 75
    .end local v0    # "i":I
    .end local v3    # "sizeToBeRemoved":I
    :cond_1
    return-void
.end method
