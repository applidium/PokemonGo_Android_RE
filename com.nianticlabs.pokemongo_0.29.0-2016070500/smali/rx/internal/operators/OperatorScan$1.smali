.class Lrx/internal/operators/OperatorScan$1;
.super Ljava/lang/Object;
.source "OperatorScan.java"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/OperatorScan;-><init>(Ljava/lang/Object;Lrx/functions/Func2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func0",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$initialValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 60
    .local p0, "this":Lrx/internal/operators/OperatorScan$1;, "Lrx/internal/operators/OperatorScan.1;"
    iput-object p1, p0, Lrx/internal/operators/OperatorScan$1;->val$initialValue:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lrx/internal/operators/OperatorScan$1;, "Lrx/internal/operators/OperatorScan.1;"
    iget-object v0, p0, Lrx/internal/operators/OperatorScan$1;->val$initialValue:Ljava/lang/Object;

    return-object v0
.end method
