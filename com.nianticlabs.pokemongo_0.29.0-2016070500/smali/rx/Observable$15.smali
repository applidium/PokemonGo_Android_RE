.class Lrx/Observable$15;
.super Ljava/lang/Object;
.source "Observable.java"

# interfaces
.implements Lrx/functions/Func0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Observable;->replay()Lrx/observables/ConnectableObservable;
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
        "<-TT;+TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lrx/Observable;


# direct methods
.method constructor <init>(Lrx/Observable;)V
    .locals 0

    .prologue
    .line 5993
    .local p0, "this":Lrx/Observable$15;, "Lrx/Observable.15;"
    iput-object p1, p0, Lrx/Observable$15;->this$0:Lrx/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5993
    .local p0, "this":Lrx/Observable$15;, "Lrx/Observable.15;"
    invoke-virtual {p0}, Lrx/Observable$15;->call()Lrx/subjects/Subject;

    move-result-object v0

    return-object v0
.end method

.method public call()Lrx/subjects/Subject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/subjects/Subject",
            "<-TT;+TT;>;"
        }
    .end annotation

    .prologue
    .line 5997
    .local p0, "this":Lrx/Observable$15;, "Lrx/Observable.15;"
    invoke-static {}, Lrx/subjects/ReplaySubject;->create()Lrx/subjects/ReplaySubject;

    move-result-object v0

    return-object v0
.end method
