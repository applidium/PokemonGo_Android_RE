.class public final Lrx/internal/operators/OperatorSingle;
.super Ljava/lang/Object;
.source "OperatorSingle.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorSingle$ParentSubscriber;,
        Lrx/internal/operators/OperatorSingle$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field private final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final hasDefaultValue:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 51
    .local p0, "this":Lrx/internal/operators/OperatorSingle;, "Lrx/internal/operators/OperatorSingle<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lrx/internal/operators/OperatorSingle;-><init>(ZLjava/lang/Object;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lrx/internal/operators/OperatorSingle;, "Lrx/internal/operators/OperatorSingle<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lrx/internal/operators/OperatorSingle;-><init>(ZLjava/lang/Object;)V

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Lrx/internal/operators/OperatorSingle$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/internal/operators/OperatorSingle$1;

    .prologue
    .line 30
    .local p0, "this":Lrx/internal/operators/OperatorSingle;, "Lrx/internal/operators/OperatorSingle<TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/OperatorSingle;-><init>()V

    return-void
.end method

.method private constructor <init>(ZLjava/lang/Object;)V
    .locals 0
    .param p1, "hasDefaultValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTT;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lrx/internal/operators/OperatorSingle;, "Lrx/internal/operators/OperatorSingle<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean p1, p0, Lrx/internal/operators/OperatorSingle;->hasDefaultValue:Z

    .line 60
    iput-object p2, p0, Lrx/internal/operators/OperatorSingle;->defaultValue:Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public static instance()Lrx/internal/operators/OperatorSingle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/OperatorSingle",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 47
    sget-object v0, Lrx/internal/operators/OperatorSingle$Holder;->INSTANCE:Lrx/internal/operators/OperatorSingle;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    .local p0, "this":Lrx/internal/operators/OperatorSingle;, "Lrx/internal/operators/OperatorSingle<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorSingle;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lrx/internal/operators/OperatorSingle;, "Lrx/internal/operators/OperatorSingle<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorSingle$ParentSubscriber;

    iget-boolean v1, p0, Lrx/internal/operators/OperatorSingle;->hasDefaultValue:Z

    iget-object v2, p0, Lrx/internal/operators/OperatorSingle;->defaultValue:Ljava/lang/Object;

    invoke-direct {v0, p1, v1, v2}, Lrx/internal/operators/OperatorSingle$ParentSubscriber;-><init>(Lrx/Subscriber;ZLjava/lang/Object;)V

    .line 69
    .local v0, "parent":Lrx/internal/operators/OperatorSingle$ParentSubscriber;, "Lrx/internal/operators/OperatorSingle$ParentSubscriber<TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorSingle$1;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/OperatorSingle$1;-><init>(Lrx/internal/operators/OperatorSingle;Lrx/internal/operators/OperatorSingle$ParentSubscriber;)V

    invoke-virtual {p1, v1}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 81
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 82
    return-object v0
.end method
