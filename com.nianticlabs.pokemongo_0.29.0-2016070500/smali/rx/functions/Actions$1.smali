.class final Lrx/functions/Actions$1;
.super Ljava/lang/Object;
.source "Actions.java"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/functions/Actions;->toFunc(Lrx/functions/Action0;Ljava/lang/Object;)Lrx/functions/Func0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$action:Lrx/functions/Action0;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrx/functions/Action0;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lrx/functions/Actions$1;->val$action:Lrx/functions/Action0;

    iput-object p2, p0, Lrx/functions/Actions$1;->val$result:Ljava/lang/Object;

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
    .line 231
    iget-object v0, p0, Lrx/functions/Actions$1;->val$action:Lrx/functions/Action0;

    invoke-interface {v0}, Lrx/functions/Action0;->call()V

    .line 232
    iget-object v0, p0, Lrx/functions/Actions$1;->val$result:Ljava/lang/Object;

    return-object v0
.end method
