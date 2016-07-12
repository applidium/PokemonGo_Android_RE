.class Lrx/Observable$HolderAnyForEmpty;
.super Ljava/lang/Object;
.source "Observable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HolderAnyForEmpty"
.end annotation


# static fields
.field static final INSTANCE:Lrx/internal/operators/OperatorAny;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorAny",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 5131
    new-instance v0, Lrx/internal/operators/OperatorAny;

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->alwaysTrue()Lrx/functions/Func1;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lrx/internal/operators/OperatorAny;-><init>(Lrx/functions/Func1;Z)V

    sput-object v0, Lrx/Observable$HolderAnyForEmpty;->INSTANCE:Lrx/internal/operators/OperatorAny;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
