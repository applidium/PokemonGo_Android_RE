.class final Lrx/functions/Actions$6;
.super Ljava/lang/Object;
.source "Actions.java"

# interfaces
.implements Lrx/functions/Func5;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/functions/Actions;->toFunc(Lrx/functions/Action5;Ljava/lang/Object;)Lrx/functions/Func5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func5",
        "<TT1;TT2;TT3;TT4;TT5;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$action:Lrx/functions/Action5;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrx/functions/Action5;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lrx/functions/Actions$6;->val$action:Lrx/functions/Action5;

    iput-object p2, p0, Lrx/functions/Actions$6;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;TT3;TT4;TT5;)TR;"
        }
    .end annotation

    .prologue
    .line 327
    .local p1, "t1":Ljava/lang/Object;, "TT1;"
    .local p2, "t2":Ljava/lang/Object;, "TT2;"
    .local p3, "t3":Ljava/lang/Object;, "TT3;"
    .local p4, "t4":Ljava/lang/Object;, "TT4;"
    .local p5, "t5":Ljava/lang/Object;, "TT5;"
    iget-object v0, p0, Lrx/functions/Actions$6;->val$action:Lrx/functions/Action5;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lrx/functions/Action5;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 328
    iget-object v0, p0, Lrx/functions/Actions$6;->val$result:Ljava/lang/Object;

    return-object v0
.end method
