.class public abstract Lrx/subjects/Subject;
.super Lrx/Observable;
.source "Subject.java"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Observable",
        "<TR;>;",
        "Lrx/Observer",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_ARRAY:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lrx/subjects/Subject;->EMPTY_ARRAY:[Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lrx/Observable$OnSubscribe;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable$OnSubscribe",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TR;>;"
    .local p1, "onSubscribe":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TR;>;"
    invoke-direct {p0, p1}, Lrx/Observable;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getThrowable()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TR;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 121
    .local p0, "this":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TR;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getValues()[Ljava/lang/Object;
    .locals 2
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 135
    .local p0, "this":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TR;>;"
    sget-object v1, Lrx/subjects/Subject;->EMPTY_ARRAY:[Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lrx/subjects/Subject;->getValues([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 136
    .local v0, "r":[Ljava/lang/Object;, "[TT;"
    sget-object v1, Lrx/subjects/Subject;->EMPTY_ARRAY:[Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 137
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/Object;

    .line 139
    .end local v0    # "r":[Ljava/lang/Object;, "[TT;"
    :cond_0
    return-object v0
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 156
    .local p0, "this":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TR;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasCompleted()Z
    .locals 1
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TR;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract hasObservers()Z
.end method

.method public hasThrowable()Z
    .locals 1
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TR;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasValue()Z
    .locals 1
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 105
    .local p0, "this":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TR;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final toSerialized()Lrx/subjects/SerializedSubject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/subjects/SerializedSubject",
            "<TT;TR;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TR;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lrx/subjects/SerializedSubject;

    if-ne v0, v1, :cond_0

    .line 55
    check-cast p0, Lrx/subjects/SerializedSubject;

    .line 57
    .end local p0    # "this":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TR;>;"
    :goto_0
    return-object p0

    .restart local p0    # "this":Lrx/subjects/Subject;, "Lrx/subjects/Subject<TT;TR;>;"
    :cond_0
    new-instance v0, Lrx/subjects/SerializedSubject;

    invoke-direct {v0, p0}, Lrx/subjects/SerializedSubject;-><init>(Lrx/subjects/Subject;)V

    move-object p0, v0

    goto :goto_0
.end method
