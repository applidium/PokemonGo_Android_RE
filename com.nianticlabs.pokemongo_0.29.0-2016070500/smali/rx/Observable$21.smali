.class Lrx/Observable$21;
.super Ljava/lang/Object;
.source "Observable.java"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Observable;->replay(Lrx/functions/Func1;Lrx/Scheduler;)Lrx/Observable;
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
        "<TT;TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Observable;

.field final synthetic val$scheduler:Lrx/Scheduler;


# direct methods
.method constructor <init>(Lrx/Observable;Lrx/Scheduler;)V
    .locals 0

    .prologue
    .line 6293
    .local p0, "this":Lrx/Observable$21;, "Lrx/Observable.21;"
    iput-object p1, p0, Lrx/Observable$21;->this$0:Lrx/Observable;

    iput-object p2, p0, Lrx/Observable$21;->val$scheduler:Lrx/Scheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6293
    .local p0, "this":Lrx/Observable$21;, "Lrx/Observable.21;"
    invoke-virtual {p0}, Lrx/Observable$21;->call()Lrx/subjects/Subject;

    move-result-object v0

    return-object v0
.end method

.method public final call()Lrx/subjects/Subject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/subjects/Subject",
            "<TT;TT;>;"
        }
    .end annotation

    .prologue
    .line 6296
    .local p0, "this":Lrx/Observable$21;, "Lrx/Observable.21;"
    invoke-static {}, Lrx/subjects/ReplaySubject;->create()Lrx/subjects/ReplaySubject;

    move-result-object v0

    iget-object v1, p0, Lrx/Observable$21;->val$scheduler:Lrx/Scheduler;

    invoke-static {v0, v1}, Lrx/internal/operators/OperatorReplay;->createScheduledSubject(Lrx/subjects/Subject;Lrx/Scheduler;)Lrx/subjects/Subject;

    move-result-object v0

    return-object v0
.end method
