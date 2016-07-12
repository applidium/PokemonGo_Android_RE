.class final Lrx/internal/operators/OperatorToObservableList$Holder;
.super Ljava/lang/Object;
.source "OperatorToObservableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorToObservableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lrx/internal/operators/OperatorToObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorToObservableList",
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
    .line 42
    new-instance v0, Lrx/internal/operators/OperatorToObservableList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorToObservableList;-><init>(Lrx/internal/operators/OperatorToObservableList$1;)V

    sput-object v0, Lrx/internal/operators/OperatorToObservableList$Holder;->INSTANCE:Lrx/internal/operators/OperatorToObservableList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
