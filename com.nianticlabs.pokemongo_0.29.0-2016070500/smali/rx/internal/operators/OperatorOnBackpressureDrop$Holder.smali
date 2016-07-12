.class final Lrx/internal/operators/OperatorOnBackpressureDrop$Holder;
.super Ljava/lang/Object;
.source "OperatorOnBackpressureDrop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorOnBackpressureDrop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lrx/internal/operators/OperatorOnBackpressureDrop;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorOnBackpressureDrop",
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
    .line 30
    new-instance v0, Lrx/internal/operators/OperatorOnBackpressureDrop;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorOnBackpressureDrop;-><init>(Lrx/internal/operators/OperatorOnBackpressureDrop$1;)V

    sput-object v0, Lrx/internal/operators/OperatorOnBackpressureDrop$Holder;->INSTANCE:Lrx/internal/operators/OperatorOnBackpressureDrop;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
