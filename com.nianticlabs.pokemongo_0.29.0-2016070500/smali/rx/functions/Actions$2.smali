.class final Lrx/functions/Actions$2;
.super Ljava/lang/Object;
.source "Actions.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/functions/Actions;->toFunc(Lrx/functions/Action1;Ljava/lang/Object;)Lrx/functions/Func1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<TT1;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$action:Lrx/functions/Action1;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrx/functions/Action1;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lrx/functions/Actions$2;->val$action:Lrx/functions/Action1;

    iput-object p2, p0, Lrx/functions/Actions$2;->val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;)TR;"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, "t1":Ljava/lang/Object;, "TT1;"
    iget-object v0, p0, Lrx/functions/Actions$2;->val$action:Lrx/functions/Action1;

    invoke-interface {v0, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 251
    iget-object v0, p0, Lrx/functions/Actions$2;->val$result:Ljava/lang/Object;

    return-object v0
.end method
