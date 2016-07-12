.class Lrx/internal/operators/OperatorOnBackpressureBuffer$Holder;
.super Ljava/lang/Object;
.source "OperatorOnBackpressureBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorOnBackpressureBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lrx/internal/operators/OperatorOnBackpressureBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorOnBackpressureBuffer",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lrx/internal/operators/OperatorOnBackpressureBuffer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorOnBackpressureBuffer;-><init>(Lrx/internal/operators/OperatorOnBackpressureBuffer$1;)V

    sput-object v0, Lrx/internal/operators/OperatorOnBackpressureBuffer$Holder;->INSTANCE:Lrx/internal/operators/OperatorOnBackpressureBuffer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
