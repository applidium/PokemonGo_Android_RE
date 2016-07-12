.class final Lrx/functions/Functions$12;
.super Ljava/lang/Object;
.source "Functions.java"

# interfaces
.implements Lrx/functions/FuncN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/functions/Functions;->fromAction(Lrx/functions/Action1;)Lrx/functions/FuncN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/FuncN",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$f:Lrx/functions/Action1;


# direct methods
.method constructor <init>(Lrx/functions/Action1;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lrx/functions/Functions$12;->val$f:Lrx/functions/Action1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Lrx/functions/Functions$12;->call([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs call([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 2
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 277
    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 278
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Action1 expecting 1 argument."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_0
    iget-object v0, p0, Lrx/functions/Functions$12;->val$f:Lrx/functions/Action1;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-interface {v0, v1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 281
    const/4 v0, 0x0

    return-object v0
.end method
