.class public Lrx/observables/GroupedObservable;
.super Lrx/Observable;
.source "GroupedObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Observable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Lrx/Observable$OnSubscribe;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lrx/observables/GroupedObservable;, "Lrx/observables/GroupedObservable<TK;TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "onSubscribe":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    invoke-direct {p0, p2}, Lrx/Observable;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 94
    iput-object p1, p0, Lrx/observables/GroupedObservable;->key:Ljava/lang/Object;

    .line 95
    return-void
.end method

.method public static final create(Ljava/lang/Object;Lrx/Observable$OnSubscribe;)Lrx/observables/GroupedObservable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;)",
            "Lrx/observables/GroupedObservable",
            "<TK;TT;>;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "key":Ljava/lang/Object;, "TK;"
    .local p1, "f":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    new-instance v0, Lrx/observables/GroupedObservable;

    invoke-direct {v0, p0, p1}, Lrx/observables/GroupedObservable;-><init>(Ljava/lang/Object;Lrx/Observable$OnSubscribe;)V

    return-object v0
.end method

.method public static from(Ljava/lang/Object;Lrx/Observable;)Lrx/observables/GroupedObservable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lrx/Observable",
            "<TT;>;)",
            "Lrx/observables/GroupedObservable",
            "<TK;TT;>;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "key":Ljava/lang/Object;, "TK;"
    .local p1, "o":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/observables/GroupedObservable;

    new-instance v1, Lrx/observables/GroupedObservable$1;

    invoke-direct {v1, p1}, Lrx/observables/GroupedObservable$1;-><init>(Lrx/Observable;)V

    invoke-direct {v0, p0, v1}, Lrx/observables/GroupedObservable;-><init>(Ljava/lang/Object;Lrx/Observable$OnSubscribe;)V

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lrx/observables/GroupedObservable;, "Lrx/observables/GroupedObservable<TK;TT;>;"
    iget-object v0, p0, Lrx/observables/GroupedObservable;->key:Ljava/lang/Object;

    return-object v0
.end method
