.class final Lrx/functions/Actions$3;
.super Ljava/lang/Object;
.source "Actions.java"

# interfaces
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/functions/Actions;->toFunc(Lrx/functions/Action2;Ljava/lang/Object;)Lrx/functions/Func2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func2",
        "<TT1;TT2;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$action:Lrx/functions/Action2;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrx/functions/Action2;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lrx/functions/Actions$3;->val$action:Lrx/functions/Action2;

    iput-object p2, p0, Lrx/functions/Actions$3;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;)TR;"
        }
    .end annotation

    .prologue
    .line 269
    .local p1, "t1":Ljava/lang/Object;, "TT1;"
    .local p2, "t2":Ljava/lang/Object;, "TT2;"
    iget-object v0, p0, Lrx/functions/Actions$3;->val$action:Lrx/functions/Action2;

    invoke-interface {v0, p1, p2}, Lrx/functions/Action2;->call(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 270
    iget-object v0, p0, Lrx/functions/Actions$3;->val$result:Ljava/lang/Object;

    return-object v0
.end method
