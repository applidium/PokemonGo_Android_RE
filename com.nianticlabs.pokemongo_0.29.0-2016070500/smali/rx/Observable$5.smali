.class Lrx/Observable$5;
.super Ljava/lang/Object;
.source "Observable.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Observable;->contains(Ljava/lang/Object;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<TT;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Observable;

.field final synthetic val$element:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lrx/Observable;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 3759
    .local p0, "this":Lrx/Observable$5;, "Lrx/Observable.5;"
    iput-object p1, p0, Lrx/Observable$5;->this$0:Lrx/Observable;

    iput-object p2, p0, Lrx/Observable$5;->val$element:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 3762
    .local p0, "this":Lrx/Observable$5;, "Lrx/Observable.5;"
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/Observable$5;->val$element:Ljava/lang/Object;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lrx/Observable$5;->val$element:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3759
    .local p0, "this":Lrx/Observable$5;, "Lrx/Observable.5;"
    invoke-virtual {p0, p1}, Lrx/Observable$5;->call(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
