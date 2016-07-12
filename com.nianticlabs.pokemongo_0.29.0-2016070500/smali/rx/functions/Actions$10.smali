.class final Lrx/functions/Actions$10;
.super Ljava/lang/Object;
.source "Actions.java"

# interfaces
.implements Lrx/functions/Func9;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/functions/Actions;->toFunc(Lrx/functions/Action9;Ljava/lang/Object;)Lrx/functions/Func9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func9",
        "<TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$action:Lrx/functions/Action9;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrx/functions/Action9;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lrx/functions/Actions$10;->val$action:Lrx/functions/Action9;

    iput-object p2, p0, Lrx/functions/Actions$10;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;TT2;TT3;TT4;TT5;TT6;TT7;TT8;TT9;)TR;"
        }
    .end annotation

    .prologue
    .line 407
    .local p1, "t1":Ljava/lang/Object;, "TT1;"
    .local p2, "t2":Ljava/lang/Object;, "TT2;"
    .local p3, "t3":Ljava/lang/Object;, "TT3;"
    .local p4, "t4":Ljava/lang/Object;, "TT4;"
    .local p5, "t5":Ljava/lang/Object;, "TT5;"
    .local p6, "t6":Ljava/lang/Object;, "TT6;"
    .local p7, "t7":Ljava/lang/Object;, "TT7;"
    .local p8, "t8":Ljava/lang/Object;, "TT8;"
    .local p9, "t9":Ljava/lang/Object;, "TT9;"
    iget-object v0, p0, Lrx/functions/Actions$10;->val$action:Lrx/functions/Action9;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lrx/functions/Action9;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 408
    iget-object v0, p0, Lrx/functions/Actions$10;->val$result:Ljava/lang/Object;

    return-object v0
.end method
