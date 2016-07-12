.class Lrx/Observable$16;
.super Ljava/lang/Object;
.source "Observable.java"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Observable;->replay(Lrx/functions/Func1;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func0",
        "<",
        "Lrx/subjects/Subject",
        "<TT;TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Observable;


# direct methods
.method constructor <init>(Lrx/Observable;)V
    .locals 0

    .prologue
    .line 6027
    .local p0, "this":Lrx/Observable$16;, "Lrx/Observable.16;"
    iput-object p1, p0, Lrx/Observable$16;->this$0:Lrx/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 6027
    .local p0, "this":Lrx/Observable$16;, "Lrx/Observable.16;"
    invoke-virtual {p0}, Lrx/Observable$16;->call()Lrx/subjects/Subject;

    move-result-object v0

    return-object v0
.end method

.method public final call()Lrx/subjects/Subject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/subjects/Subject",
            "<TT;TT;>;"
        }
    .end annotation

    .prologue
    .line 6030
    .local p0, "this":Lrx/Observable$16;, "Lrx/Observable.16;"
    invoke-static {}, Lrx/subjects/ReplaySubject;->create()Lrx/subjects/ReplaySubject;

    move-result-object v0

    return-object v0
.end method
