.class Lrx/Observable$1;
.super Ljava/lang/Object;
.source "Observable.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;
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
.field final synthetic this$0:Lrx/Observable;

.field final synthetic val$lift:Lrx/Observable$Operator;


# direct methods
.method constructor <init>(Lrx/Observable;Lrx/Observable$Operator;)V
    .locals 0

    .prologue
    .line 137
    .local p0, "this":Lrx/Observable$1;, "Lrx/Observable.1;"
    iput-object p1, p0, Lrx/Observable$1;->this$0:Lrx/Observable;

    iput-object p2, p0, Lrx/Observable$1;->val$lift:Lrx/Observable$Operator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 137
    .local p0, "this":Lrx/Observable$1;, "Lrx/Observable.1;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Observable$1;->call(Lrx/Subscriber;)V

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
    .line 141
    .local p0, "this":Lrx/Observable$1;, "Lrx/Observable.1;"
    .local p1, "o":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    :try_start_0
    # getter for: Lrx/Observable;->hook:Lrx/plugins/RxJavaObservableExecutionHook;
    invoke-static {}, Lrx/Observable;->access$000()Lrx/plugins/RxJavaObservableExecutionHook;

    move-result-object v2

    iget-object v3, p0, Lrx/Observable$1;->val$lift:Lrx/Observable$Operator;

    invoke-virtual {v2, v3}, Lrx/plugins/RxJavaObservableExecutionHook;->onLift(Lrx/Observable$Operator;)Lrx/Observable$Operator;

    move-result-object v2

    invoke-interface {v2, p1}, Lrx/Observable$Operator;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Subscriber;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 144
    .local v1, "st":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :try_start_1
    invoke-virtual {v1}, Lrx/Subscriber;->onStart()V

    .line 145
    iget-object v2, p0, Lrx/Observable$1;->this$0:Lrx/Observable;

    iget-object v2, v2, Lrx/Observable;->onSubscribe:Lrx/Observable$OnSubscribe;

    invoke-interface {v2, v1}, Lrx/Observable$OnSubscribe;->call(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 163
    .end local v1    # "st":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :goto_0
    return-void

    .line 146
    .restart local v1    # "st":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    instance-of v2, v0, Lrx/exceptions/OnErrorNotImplementedException;

    if-eqz v2, :cond_0

    .line 151
    check-cast v0, Lrx/exceptions/OnErrorNotImplementedException;

    .end local v0    # "e":Ljava/lang/Throwable;
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 155
    .end local v1    # "st":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :catch_1
    move-exception v0

    .line 156
    .restart local v0    # "e":Ljava/lang/Throwable;
    instance-of v2, v0, Lrx/exceptions/OnErrorNotImplementedException;

    if-eqz v2, :cond_1

    .line 157
    check-cast v0, Lrx/exceptions/OnErrorNotImplementedException;

    .end local v0    # "e":Ljava/lang/Throwable;
    throw v0

    .line 153
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "st":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :cond_0
    :try_start_3
    invoke-virtual {v1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 161
    .end local v1    # "st":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :cond_1
    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
