.class final Lrx/functions/Functions$8;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lrx/functions/FuncN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/functions/Functions;->fromFunc(Lrx/functions/Func7;)Lrx/functions/FuncN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/FuncN",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$f:Lrx/functions/Func7;


# direct methods
.method constructor <init>(Lrx/functions/Func7;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lrx/functions/Functions$8;->val$f:Lrx/functions/Func7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 189
    array-length v0, p1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 190
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Func7 expecting 7 arguments."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_0
    iget-object v0, p0, Lrx/functions/Functions$8;->val$f:Lrx/functions/Func7;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    const/4 v3, 0x2

    aget-object v3, p1, v3

    const/4 v4, 0x3

    aget-object v4, p1, v4

    const/4 v5, 0x4

    aget-object v5, p1, v5

    const/4 v6, 0x5

    aget-object v6, p1, v6

    const/4 v7, 0x6

    aget-object v7, p1, v7

    invoke-interface/range {v0 .. v7}, Lrx/functions/Func7;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
