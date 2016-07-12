.class public final Lrx/internal/operators/OnSubscribeRange;
.super Ljava/lang/Object;
.source "OnSubscribeRange.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OnSubscribeRange$1;,
        Lrx/internal/operators/OnSubscribeRange$RangeProducer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final end:I

.field private final start:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lrx/internal/operators/OnSubscribeRange;->start:I

    .line 34
    iput p2, p0, Lrx/internal/operators/OnSubscribeRange;->end:I

    .line 35
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 27
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OnSubscribeRange;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "o":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/lang/Integer;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeRange$RangeProducer;

    iget v1, p0, Lrx/internal/operators/OnSubscribeRange;->start:I

    iget v2, p0, Lrx/internal/operators/OnSubscribeRange;->end:I

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lrx/internal/operators/OnSubscribeRange$RangeProducer;-><init>(Lrx/Subscriber;IILrx/internal/operators/OnSubscribeRange$1;)V

    invoke-virtual {p1, v0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 40
    return-void
.end method
