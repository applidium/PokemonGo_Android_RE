.class Lrx/Observable$25;
.super Ljava/lang/Object;
.source "Observable.java"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Observable;->replay(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/observables/ConnectableObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func0",
        "<",
        "Lrx/subjects/Subject",
        "<-TT;+TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Observable;

.field final synthetic val$scheduler:Lrx/Scheduler;

.field final synthetic val$time:J

.field final synthetic val$unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(Lrx/Observable;JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V
    .locals 0

    .prologue
    .line 6500
    .local p0, "this":Lrx/Observable$25;, "Lrx/Observable.25;"
    iput-object p1, p0, Lrx/Observable$25;->this$0:Lrx/Observable;

    iput-wide p2, p0, Lrx/Observable$25;->val$time:J

    iput-object p4, p0, Lrx/Observable$25;->val$unit:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lrx/Observable$25;->val$scheduler:Lrx/Scheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6500
    .local p0, "this":Lrx/Observable$25;, "Lrx/Observable.25;"
    invoke-virtual {p0}, Lrx/Observable$25;->call()Lrx/subjects/Subject;

    move-result-object v0

    return-object v0
.end method

.method public call()Lrx/subjects/Subject;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/subjects/Subject",
            "<-TT;+TT;>;"
        }
    .end annotation

    .prologue
    .line 6504
    .local p0, "this":Lrx/Observable$25;, "Lrx/Observable.25;"
    iget-wide v0, p0, Lrx/Observable$25;->val$time:J

    iget-object v2, p0, Lrx/Observable$25;->val$unit:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lrx/Observable$25;->val$scheduler:Lrx/Scheduler;

    invoke-static {v0, v1, v2, v3}, Lrx/subjects/ReplaySubject;->createWithTime(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/subjects/ReplaySubject;

    move-result-object v0

    return-object v0
.end method
