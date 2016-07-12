.class Lrx/internal/operators/OperatorDistinct$Holder;
.super Ljava/lang/Object;
.source "OperatorDistinct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorDistinct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lrx/internal/operators/OperatorDistinct;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorDistinct",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lrx/internal/operators/OperatorDistinct;

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorDistinct;-><init>(Lrx/functions/Func1;)V

    sput-object v0, Lrx/internal/operators/OperatorDistinct$Holder;->INSTANCE:Lrx/internal/operators/OperatorDistinct;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
