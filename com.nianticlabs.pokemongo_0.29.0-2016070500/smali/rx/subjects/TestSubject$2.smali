.class Lrx/subjects/TestSubject$2;
.super Ljava/lang/Object;
.source "TestSubject.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/subjects/TestSubject;->onCompleted(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/subjects/TestSubject;


# direct methods
.method constructor <init>(Lrx/subjects/TestSubject;)V
    .locals 0

    .prologue
    .line 93
    .local p0, "this":Lrx/subjects/TestSubject$2;, "Lrx/subjects/TestSubject.2;"
    iput-object p1, p0, Lrx/subjects/TestSubject$2;->this$0:Lrx/subjects/TestSubject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .prologue
    .line 97
    .local p0, "this":Lrx/subjects/TestSubject$2;, "Lrx/subjects/TestSubject.2;"
    iget-object v0, p0, Lrx/subjects/TestSubject$2;->this$0:Lrx/subjects/TestSubject;

    # invokes: Lrx/subjects/TestSubject;->_onCompleted()V
    invoke-static {v0}, Lrx/subjects/TestSubject;->access$000(Lrx/subjects/TestSubject;)V

    .line 98
    return-void
.end method
