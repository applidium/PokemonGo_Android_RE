.class public final Lrx/internal/operators/OperatorElementAt;
.super Ljava/lang/Object;
.source "OperatorElementAt.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorElementAt$InnerProducer;
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

.field private final hasDefault:Z

.field private final index:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 34
    .local p0, "this":Lrx/internal/operators/OperatorElementAt;, "Lrx/internal/operators/OperatorElementAt<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lrx/internal/operators/OperatorElementAt;-><init>(ILjava/lang/Object;Z)V

    .line 35
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, "this":Lrx/internal/operators/OperatorElementAt;, "Lrx/internal/operators/OperatorElementAt<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lrx/internal/operators/OperatorElementAt;-><init>(ILjava/lang/Object;Z)V

    .line 39
    return-void
.end method

.method private constructor <init>(ILjava/lang/Object;Z)V
    .locals 3
    .param p1, "index"    # I
    .param p3, "hasDefault"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;Z)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lrx/internal/operators/OperatorElementAt;, "Lrx/internal/operators/OperatorElementAt<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-gez p1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of bounds"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iput p1, p0, Lrx/internal/operators/OperatorElementAt;->index:I

    .line 46
    iput-object p2, p0, Lrx/internal/operators/OperatorElementAt;->defaultValue:Ljava/lang/Object;

    .line 47
    iput-boolean p3, p0, Lrx/internal/operators/OperatorElementAt;->hasDefault:Z

    .line 48
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorElementAt;)I
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorElementAt;

    .prologue
    .line 27
    iget v0, p0, Lrx/internal/operators/OperatorElementAt;->index:I

    return v0
.end method

.method static synthetic access$100(Lrx/internal/operators/OperatorElementAt;)Z
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorElementAt;

    .prologue
    .line 27
    iget-boolean v0, p0, Lrx/internal/operators/OperatorElementAt;->hasDefault:Z

    return v0
.end method

.method static synthetic access$200(Lrx/internal/operators/OperatorElementAt;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorElementAt;

    .prologue
    .line 27
    iget-object v0, p0, Lrx/internal/operators/OperatorElementAt;->defaultValue:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 27
    .local p0, "this":Lrx/internal/operators/OperatorElementAt;, "Lrx/internal/operators/OperatorElementAt<TT;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorElementAt;->call(Lrx/Subscriber;)Lrx/Subscriber;

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
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lrx/internal/operators/OperatorElementAt;, "Lrx/internal/operators/OperatorElementAt<TT;>;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorElementAt$1;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OperatorElementAt$1;-><init>(Lrx/internal/operators/OperatorElementAt;Lrx/Subscriber;)V

    .line 88
    .local v0, "parent":Lrx/Subscriber;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 90
    return-object v0
.end method
