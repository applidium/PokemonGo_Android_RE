.class Lrx/internal/operators/OperatorTakeLastOne$Holder;
.super Ljava/lang/Object;
.source "OperatorTakeLastOne.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorTakeLastOne;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lrx/internal/operators/OperatorTakeLastOne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorTakeLastOne",
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
    .line 12
    new-instance v0, Lrx/internal/operators/OperatorTakeLastOne;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorTakeLastOne;-><init>(Lrx/internal/operators/OperatorTakeLastOne$1;)V

    sput-object v0, Lrx/internal/operators/OperatorTakeLastOne$Holder;->INSTANCE:Lrx/internal/operators/OperatorTakeLastOne;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
