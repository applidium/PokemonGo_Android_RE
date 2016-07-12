.class final Lrx/internal/util/ScalarSynchronousObservable$ScalarSynchronousAction;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/ScalarSynchronousObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScalarSynchronousAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action0;"
    }
.end annotation


# instance fields
.field private final subscriber:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/Subscriber;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$ScalarSynchronousAction;, "Lrx/internal/util/ScalarSynchronousObservable$ScalarSynchronousAction<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lrx/internal/util/ScalarSynchronousObservable$ScalarSynchronousAction;->subscriber:Lrx/Subscriber;

    .line 109
    iput-object p2, p0, Lrx/internal/util/ScalarSynchronousObservable$ScalarSynchronousAction;->value:Ljava/lang/Object;

    .line 110
    return-void
.end method

.method synthetic constructor <init>(Lrx/Subscriber;Ljava/lang/Object;Lrx/internal/util/ScalarSynchronousObservable$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/Subscriber;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lrx/internal/util/ScalarSynchronousObservable$1;

    .prologue
    .line 102
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$ScalarSynchronousAction;, "Lrx/internal/util/ScalarSynchronousObservable$ScalarSynchronousAction<TT;>;"
    invoke-direct {p0, p1, p2}, Lrx/internal/util/ScalarSynchronousObservable$ScalarSynchronousAction;-><init>(Lrx/Subscriber;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .prologue
    .line 115
    .local p0, "this":Lrx/internal/util/ScalarSynchronousObservable$ScalarSynchronousAction;, "Lrx/internal/util/ScalarSynchronousObservable$ScalarSynchronousAction<TT;>;"
    :try_start_0
    iget-object v1, p0, Lrx/internal/util/ScalarSynchronousObservable$ScalarSynchronousAction;->subscriber:Lrx/Subscriber;

    iget-object v2, p0, Lrx/internal/util/ScalarSynchronousObservable$ScalarSynchronousAction;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    iget-object v1, p0, Lrx/internal/util/ScalarSynchronousObservable$ScalarSynchronousAction;->subscriber:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V

    .line 121
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lrx/internal/util/ScalarSynchronousObservable$ScalarSynchronousAction;->subscriber:Lrx/Subscriber;

    invoke-virtual {v1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
