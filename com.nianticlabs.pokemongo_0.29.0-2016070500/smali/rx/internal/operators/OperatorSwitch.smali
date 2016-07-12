.class public final Lrx/internal/operators/OperatorSwitch;
.super Ljava/lang/Object;
.source "OperatorSwitch.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorSwitch$1;,
        Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;,
        Lrx/internal/operators/OperatorSwitch$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TT;",
        "Lrx/Observable",
        "<+TT;>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    .local p0, "this":Lrx/internal/operators/OperatorSwitch;, "Lrx/internal/operators/OperatorSwitch<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lrx/internal/operators/OperatorSwitch$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/internal/operators/OperatorSwitch$1;

    .prologue
    .line 36
    .local p0, "this":Lrx/internal/operators/OperatorSwitch;, "Lrx/internal/operators/OperatorSwitch<TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/OperatorSwitch;-><init>()V

    return-void
.end method

.method public static instance()Lrx/internal/operators/OperatorSwitch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/OperatorSwitch",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 47
    sget-object v0, Lrx/internal/operators/OperatorSwitch$Holder;->INSTANCE:Lrx/internal/operators/OperatorSwitch;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 36
    .local p0, "this":Lrx/internal/operators/OperatorSwitch;, "Lrx/internal/operators/OperatorSwitch<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorSwitch;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)",
            "Lrx/Subscriber",
            "<-",
            "Lrx/Observable",
            "<+TT;>;>;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lrx/internal/operators/OperatorSwitch;, "Lrx/internal/operators/OperatorSwitch<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;-><init>(Lrx/Subscriber;)V

    .line 53
    .local v0, "sws":Lrx/internal/operators/OperatorSwitch$SwitchSubscriber;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 54
    return-object v0
.end method
