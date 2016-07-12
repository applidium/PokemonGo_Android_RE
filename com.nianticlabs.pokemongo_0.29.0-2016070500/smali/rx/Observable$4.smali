.class Lrx/Observable$4;
.super Ljava/lang/Object;
.source "Observable.java"

# interfaces
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Observable;->collect(Lrx/functions/Func0;Lrx/functions/Action2;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func2",
        "<TR;TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Observable;

.field final synthetic val$collector:Lrx/functions/Action2;


# direct methods
.method constructor <init>(Lrx/Observable;Lrx/functions/Action2;)V
    .locals 0

    .prologue
    .line 3681
    .local p0, "this":Lrx/Observable$4;, "Lrx/Observable.4;"
    iput-object p1, p0, Lrx/Observable$4;->this$0:Lrx/Observable;

    iput-object p2, p0, Lrx/Observable$4;->val$collector:Lrx/functions/Action2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TT;)TR;"
        }
    .end annotation

    .prologue
    .line 3685
    .local p0, "this":Lrx/Observable$4;, "Lrx/Observable.4;"
    .local p1, "state":Ljava/lang/Object;, "TR;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/Observable$4;->val$collector:Lrx/functions/Action2;

    invoke-interface {v0, p1, p2}, Lrx/functions/Action2;->call(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3686
    return-object p1
.end method
