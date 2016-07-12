.class public final Lrx/internal/operators/OperatorMapNotification;
.super Ljava/lang/Object;
.source "OperatorMapNotification.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorMapNotification$SingleEmitter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TR;TT;>;"
    }
.end annotation


# instance fields
.field private final onCompleted:Lrx/functions/Func0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func0",
            "<+TR;>;"
        }
    .end annotation
.end field

.field private final onError:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-",
            "Ljava/lang/Throwable;",
            "+TR;>;"
        }
    .end annotation
.end field

.field private final onNext:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;+TR;>;",
            "Lrx/functions/Func1",
            "<-",
            "Ljava/lang/Throwable;",
            "+TR;>;",
            "Lrx/functions/Func0",
            "<+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/OperatorMapNotification;, "Lrx/internal/operators/OperatorMapNotification<TT;TR;>;"
    .local p1, "onNext":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TR;>;"
    .local p2, "onError":Lrx/functions/Func1;, "Lrx/functions/Func1<-Ljava/lang/Throwable;+TR;>;"
    .local p3, "onCompleted":Lrx/functions/Func0;, "Lrx/functions/Func0<+TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lrx/internal/operators/OperatorMapNotification;->onNext:Lrx/functions/Func1;

    .line 47
    iput-object p2, p0, Lrx/internal/operators/OperatorMapNotification;->onError:Lrx/functions/Func1;

    .line 48
    iput-object p3, p0, Lrx/internal/operators/OperatorMapNotification;->onCompleted:Lrx/functions/Func0;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorMapNotification;)Lrx/functions/Func0;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorMapNotification;

    .prologue
    .line 39
    iget-object v0, p0, Lrx/internal/operators/OperatorMapNotification;->onCompleted:Lrx/functions/Func0;

    return-object v0
.end method

.method static synthetic access$100(Lrx/internal/operators/OperatorMapNotification;)Lrx/functions/Func1;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorMapNotification;

    .prologue
    .line 39
    iget-object v0, p0, Lrx/internal/operators/OperatorMapNotification;->onError:Lrx/functions/Func1;

    return-object v0
.end method

.method static synthetic access$200(Lrx/internal/operators/OperatorMapNotification;)Lrx/functions/Func1;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorMapNotification;

    .prologue
    .line 39
    iget-object v0, p0, Lrx/internal/operators/OperatorMapNotification;->onNext:Lrx/functions/Func1;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 39
    .local p0, "this":Lrx/internal/operators/OperatorMapNotification;, "Lrx/internal/operators/OperatorMapNotification<TT;TR;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorMapNotification;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lrx/internal/operators/OperatorMapNotification;, "Lrx/internal/operators/OperatorMapNotification<TT;TR;>;"
    .local p1, "o":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    new-instance v0, Lrx/internal/operators/OperatorMapNotification$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OperatorMapNotification$1;-><init>(Lrx/internal/operators/OperatorMapNotification;Lrx/Subscriber;)V

    .line 89
    .local v0, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 90
    return-object v0
.end method
