.class Lrx/Observable$19;
.super Ljava/lang/Object;
.source "Observable.java"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Observable;->replay(Lrx/functions/Func1;ILrx/Scheduler;)Lrx/Observable;
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

.field final synthetic val$bufferSize:I

.field final synthetic val$scheduler:Lrx/Scheduler;


# direct methods
.method constructor <init>(Lrx/Observable;ILrx/Scheduler;)V
    .locals 0

    .prologue
    .line 6185
    .local p0, "this":Lrx/Observable$19;, "Lrx/Observable.19;"
    iput-object p1, p0, Lrx/Observable$19;->this$0:Lrx/Observable;

    iput p2, p0, Lrx/Observable$19;->val$bufferSize:I

    iput-object p3, p0, Lrx/Observable$19;->val$scheduler:Lrx/Scheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6185
    .local p0, "this":Lrx/Observable$19;, "Lrx/Observable.19;"
    invoke-virtual {p0}, Lrx/Observable$19;->call()Lrx/subjects/Subject;

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
    .line 6188
    .local p0, "this":Lrx/Observable$19;, "Lrx/Observable.19;"
    iget v0, p0, Lrx/Observable$19;->val$bufferSize:I

    invoke-static {v0}, Lrx/subjects/ReplaySubject;->createWithSize(I)Lrx/subjects/ReplaySubject;

    move-result-object v0

    iget-object v1, p0, Lrx/Observable$19;->val$scheduler:Lrx/Scheduler;

    invoke-static {v0, v1}, Lrx/internal/operators/OperatorReplay;->createScheduledSubject(Lrx/subjects/Subject;Lrx/Scheduler;)Lrx/subjects/Subject;

    move-result-object v0

    return-object v0
.end method
