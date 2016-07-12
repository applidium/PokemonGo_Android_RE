.class final Lrx/functions/Actions$5;
.super Ljava/lang/Object;
.source "Actions.java"

# interfaces
.implements Lrx/functions/Func4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/functions/Actions;->toFunc(Lrx/functions/Action4;Ljava/lang/Object;)Lrx/functions/Func4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func4",
        "<TT1;TT2;TT3;TT4;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$action:Lrx/functions/Action4;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrx/functions/Action4;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lrx/functions/Actions$5;->val$action:Lrx/functions/Action4;

    iput-object p2, p0, Lrx/functions/Actions$5;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;TT3;TT4;)TR;"
        }
    .end annotation

    .prologue
    .line 307
    .local p1, "t1":Ljava/lang/Object;, "TT1;"
    .local p2, "t2":Ljava/lang/Object;, "TT2;"
    .local p3, "t3":Ljava/lang/Object;, "TT3;"
    .local p4, "t4":Ljava/lang/Object;, "TT4;"
    iget-object v0, p0, Lrx/functions/Actions$5;->val$action:Lrx/functions/Action4;

    invoke-interface {v0, p1, p2, p3, p4}, Lrx/functions/Action4;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 308
    iget-object v0, p0, Lrx/functions/Actions$5;->val$result:Ljava/lang/Object;

    return-object v0
.end method
