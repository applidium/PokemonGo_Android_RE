.class Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool$1;
.super Ljava/lang/Object;
.source "CachedThreadScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;-><init>(JLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;


# direct methods
.method constructor <init>(Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool$1;->this$0:Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool$1;->this$0:Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;

    invoke-virtual {v0}, Lrx/schedulers/CachedThreadScheduler$CachedWorkerPool;->evictExpiredWorkers()V

    .line 54
    return-void
.end method
