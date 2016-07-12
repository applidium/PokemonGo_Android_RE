.class public final Lrx/internal/operators/OperatorWindowWithObservableFactory;
.super Ljava/lang/Object;
.source "OperatorWindowWithObservableFactory.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorWindowWithObservableFactory$BoundarySubscriber;,
        Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<",
        "Lrx/Observable",
        "<TT;>;TT;>;"
    }
.end annotation


# static fields
.field static final NEXT_SUBJECT:Ljava/lang/Object;

.field static final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final otherFactory:Lrx/functions/Func0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func0",
            "<+",
            "Lrx/Observable",
            "<+TU;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorWindowWithObservableFactory;->NEXT_SUBJECT:Ljava/lang/Object;

    .line 56
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    sput-object v0, Lrx/internal/operators/OperatorWindowWithObservableFactory;->nl:Lrx/internal/operators/NotificationLite;

    return-void
.end method

.method public constructor <init>(Lrx/functions/Func0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func0",
            "<+",
            "Lrx/Observable",
            "<+TU;>;>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservableFactory;, "Lrx/internal/operators/OperatorWindowWithObservableFactory<TT;TU;>;"
    .local p1, "otherFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<+Lrx/Observable<+TU;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory;->otherFactory:Lrx/functions/Func0;

    .line 40
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 35
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservableFactory;, "Lrx/internal/operators/OperatorWindowWithObservableFactory<TT;TU;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorWindowWithObservableFactory;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Lrx/Observable",
            "<TT;>;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lrx/internal/operators/OperatorWindowWithObservableFactory;, "Lrx/internal/operators/OperatorWindowWithObservableFactory<TT;TU;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-Lrx/Observable<TT;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;

    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithObservableFactory;->otherFactory:Lrx/functions/Func0;

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;-><init>(Lrx/Subscriber;Lrx/functions/Func0;)V

    .line 47
    .local v0, "sub":Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;, "Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber<TT;TU;>;"
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 49
    invoke-virtual {v0}, Lrx/internal/operators/OperatorWindowWithObservableFactory$SourceSubscriber;->replaceWindow()V

    .line 51
    return-object v0
.end method
