.class Lrx/subjects/TestSubject$4;
.super Ljava/lang/Object;
.source "TestSubject.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/subjects/TestSubject;->onNext(Ljava/lang/Object;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/subjects/TestSubject;

.field final synthetic val$v:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrx/subjects/TestSubject;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 161
    .local p0, "this":Lrx/subjects/TestSubject$4;, "Lrx/subjects/TestSubject.4;"
    iput-object p1, p0, Lrx/subjects/TestSubject$4;->this$0:Lrx/subjects/TestSubject;

    iput-object p2, p0, Lrx/subjects/TestSubject$4;->val$v:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 165
    .local p0, "this":Lrx/subjects/TestSubject$4;, "Lrx/subjects/TestSubject.4;"
    iget-object v0, p0, Lrx/subjects/TestSubject$4;->this$0:Lrx/subjects/TestSubject;

    iget-object v1, p0, Lrx/subjects/TestSubject$4;->val$v:Ljava/lang/Object;

    # invokes: Lrx/subjects/TestSubject;->_onNext(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lrx/subjects/TestSubject;->access$200(Lrx/subjects/TestSubject;Ljava/lang/Object;)V

    .line 166
    return-void
.end method
