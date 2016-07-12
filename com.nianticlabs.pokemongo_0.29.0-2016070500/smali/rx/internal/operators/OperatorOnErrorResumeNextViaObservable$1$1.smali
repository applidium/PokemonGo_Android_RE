.class Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1$1;
.super Ljava/lang/Object;
.source "OperatorOnErrorResumeNextViaObservable.java"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;->setProducer(Lrx/Producer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;

.field final synthetic val$producer:Lrx/Producer;


# direct methods
.method constructor <init>(Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;Lrx/Producer;)V
    .locals 0

    .prologue
    .line 90
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1$1;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1$1;->this$1:Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1;

    iput-object p2, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1$1;->val$producer:Lrx/Producer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 93
    .local p0, "this":Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1$1;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable$1$1;->val$producer:Lrx/Producer;

    invoke-interface {v0, p1, p2}, Lrx/Producer;->request(J)V

    .line 94
    return-void
.end method
