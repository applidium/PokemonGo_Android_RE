.class final Lrx/internal/operators/OperatorAsObservable$Holder;
.super Ljava/lang/Object;
.source "OperatorAsObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorAsObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lrx/internal/operators/OperatorAsObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorAsObservable",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lrx/internal/operators/OperatorAsObservable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorAsObservable;-><init>(Lrx/internal/operators/OperatorAsObservable$1;)V

    sput-object v0, Lrx/internal/operators/OperatorAsObservable$Holder;->INSTANCE:Lrx/internal/operators/OperatorAsObservable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
