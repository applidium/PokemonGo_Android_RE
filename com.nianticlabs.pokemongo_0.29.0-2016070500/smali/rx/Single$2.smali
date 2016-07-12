.class Lrx/Single$2;
.super Ljava/lang/Object;
.source "Single.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Single;->lift(Lrx/Observable$Operator;)Lrx/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Single;

.field final synthetic val$lift:Lrx/Observable$Operator;


# direct methods
.method constructor <init>(Lrx/Single;Lrx/Observable$Operator;)V
    .locals 0

    .prologue
    .line 179
    .local p0, "this":Lrx/Single$2;, "Lrx/Single.2;"
    iput-object p1, p0, Lrx/Single$2;->this$0:Lrx/Single;

    iput-object p2, p0, Lrx/Single$2;->val$lift:Lrx/Observable$Operator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 179
    .local p0, "this":Lrx/Single$2;, "Lrx/Single.2;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Single$2;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "this":Lrx/Single$2;, "Lrx/Single.2;"
    .local p1, "o":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    :try_start_0
    # getter for: Lrx/Single;->hook:Lrx/plugins/RxJavaObservableExecutionHook;
    invoke-static {}, Lrx/Single;->access$000()Lrx/plugins/RxJavaObservableExecutionHook;

    move-result-object v2

    iget-object v3, p0, Lrx/Single$2;->val$lift:Lrx/Observable$Operator;

    invoke-virtual {v2, v3}, Lrx/plugins/RxJavaObservableExecutionHook;->onLift(Lrx/Observable$Operator;)Lrx/Observable$Operator;

    move-result-object v2

    invoke-interface {v2, p1}, Lrx/Observable$Operator;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Subscriber;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 186
    .local v1, "st":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :try_start_1
    invoke-virtual {v1}, Lrx/Subscriber;->onStart()V

    .line 187
    iget-object v2, p0, Lrx/Single$2;->this$0:Lrx/Single;

    iget-object v2, v2, Lrx/Single;->onSubscribe:Lrx/Observable$OnSubscribe;

    invoke-interface {v2, v1}, Lrx/Observable$OnSubscribe;->call(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 205
    .end local v1    # "st":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :goto_0
    return-void

    .line 188
    .restart local v1    # "st":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    instance-of v2, v0, Lrx/exceptions/OnErrorNotImplementedException;

    if-eqz v2, :cond_0

    .line 193
    check-cast v0, Lrx/exceptions/OnErrorNotImplementedException;

    .end local v0    # "e":Ljava/lang/Throwable;
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 197
    .end local v1    # "st":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :catch_1
    move-exception v0

    .line 198
    .restart local v0    # "e":Ljava/lang/Throwable;
    instance-of v2, v0, Lrx/exceptions/OnErrorNotImplementedException;

    if-eqz v2, :cond_1

    .line 199
    check-cast v0, Lrx/exceptions/OnErrorNotImplementedException;

    .end local v0    # "e":Ljava/lang/Throwable;
    throw v0

    .line 195
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "st":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :cond_0
    :try_start_3
    invoke-virtual {v1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 203
    .end local v1    # "st":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :cond_1
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
