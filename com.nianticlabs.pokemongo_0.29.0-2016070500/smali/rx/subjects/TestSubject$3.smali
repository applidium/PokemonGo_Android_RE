.class Lrx/subjects/TestSubject$3;
.super Ljava/lang/Object;
.source "TestSubject.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/subjects/TestSubject;->onError(Ljava/lang/Throwable;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/subjects/TestSubject;

.field final synthetic val$e:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lrx/subjects/TestSubject;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 128
    .local p0, "this":Lrx/subjects/TestSubject$3;, "Lrx/subjects/TestSubject.3;"
    iput-object p1, p0, Lrx/subjects/TestSubject$3;->this$0:Lrx/subjects/TestSubject;

    iput-object p2, p0, Lrx/subjects/TestSubject$3;->val$e:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 132
    .local p0, "this":Lrx/subjects/TestSubject$3;, "Lrx/subjects/TestSubject.3;"
    iget-object v0, p0, Lrx/subjects/TestSubject$3;->this$0:Lrx/subjects/TestSubject;

    iget-object v1, p0, Lrx/subjects/TestSubject$3;->val$e:Ljava/lang/Throwable;

    # invokes: Lrx/subjects/TestSubject;->_onError(Ljava/lang/Throwable;)V
    invoke-static {v0, v1}, Lrx/subjects/TestSubject;->access$100(Lrx/subjects/TestSubject;Ljava/lang/Throwable;)V

    .line 133
    return-void
.end method
