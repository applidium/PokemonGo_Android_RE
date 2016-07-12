.class public final Lrx/subjects/AsyncSubject;
.super Lrx/subjects/Subject;
.source "AsyncSubject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/subjects/Subject",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field volatile lastValue:Ljava/lang/Object;

.field private final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field final state:Lrx/subjects/SubjectSubscriptionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/SubjectSubscriptionManager",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lrx/Observable$OnSubscribe;Lrx/subjects/SubjectSubscriptionManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;",
            "Lrx/subjects/SubjectSubscriptionManager",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lrx/subjects/AsyncSubject;, "Lrx/subjects/AsyncSubject<TT;>;"
    .local p1, "onSubscribe":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    .local p2, "state":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    invoke-direct {p0, p1}, Lrx/subjects/Subject;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 83
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/subjects/AsyncSubject;->nl:Lrx/internal/operators/NotificationLite;

    .line 87
    iput-object p2, p0, Lrx/subjects/AsyncSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    .line 88
    return-void
.end method

.method public static create()Lrx/subjects/AsyncSubject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/subjects/AsyncSubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Lrx/subjects/SubjectSubscriptionManager;

    invoke-direct {v0}, Lrx/subjects/SubjectSubscriptionManager;-><init>()V

    .line 67
    .local v0, "state":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    new-instance v1, Lrx/subjects/AsyncSubject$1;

    invoke-direct {v1, v0}, Lrx/subjects/AsyncSubject$1;-><init>(Lrx/subjects/SubjectSubscriptionManager;)V

    iput-object v1, v0, Lrx/subjects/SubjectSubscriptionManager;->onTerminated:Lrx/functions/Action1;

    .line 78
    new-instance v1, Lrx/subjects/AsyncSubject;

    invoke-direct {v1, v0, v0}, Lrx/subjects/AsyncSubject;-><init>(Lrx/Observable$OnSubscribe;Lrx/subjects/SubjectSubscriptionManager;)V

    return-object v1
.end method


# virtual methods
.method public getThrowable()Ljava/lang/Throwable;
    .locals 2
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 198
    .local p0, "this":Lrx/subjects/AsyncSubject;, "Lrx/subjects/AsyncSubject<TT;>;"
    iget-object v1, p0, Lrx/subjects/AsyncSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v1}, Lrx/subjects/SubjectSubscriptionManager;->get()Ljava/lang/Object;

    move-result-object v0

    .line 199
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lrx/subjects/AsyncSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, v0}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lrx/subjects/AsyncSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, v0}, Lrx/internal/operators/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 202
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 183
    .local p0, "this":Lrx/subjects/AsyncSubject;, "Lrx/subjects/AsyncSubject<TT;>;"
    iget-object v1, p0, Lrx/subjects/AsyncSubject;->lastValue:Ljava/lang/Object;

    .line 184
    .local v1, "v":Ljava/lang/Object;
    iget-object v2, p0, Lrx/subjects/AsyncSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v2}, Lrx/subjects/SubjectSubscriptionManager;->get()Ljava/lang/Object;

    move-result-object v0

    .line 185
    .local v0, "o":Ljava/lang/Object;
    iget-object v2, p0, Lrx/subjects/AsyncSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, v0}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lrx/subjects/AsyncSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, v1}, Lrx/internal/operators/NotificationLite;->isNext(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    iget-object v2, p0, Lrx/subjects/AsyncSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, v1}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 188
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .local p0, "this":Lrx/subjects/AsyncSubject;, "Lrx/subjects/AsyncSubject<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 208
    iget-object v1, p0, Lrx/subjects/AsyncSubject;->lastValue:Ljava/lang/Object;

    .line 209
    .local v1, "v":Ljava/lang/Object;
    iget-object v3, p0, Lrx/subjects/AsyncSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v3}, Lrx/subjects/SubjectSubscriptionManager;->get()Ljava/lang/Object;

    move-result-object v0

    .line 210
    .local v0, "o":Ljava/lang/Object;
    iget-object v3, p0, Lrx/subjects/AsyncSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3, v0}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lrx/subjects/AsyncSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3, v1}, Lrx/internal/operators/NotificationLite;->isNext(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 211
    iget-object v3, p0, Lrx/subjects/AsyncSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v3, v1}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 212
    .local v2, "val":Ljava/lang/Object;, "TT;"
    array-length v3, p1

    if-nez v3, :cond_0

    .line 213
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object p1, v3

    check-cast p1, [Ljava/lang/Object;

    .line 215
    :cond_0
    aput-object v2, p1, v5

    .line 216
    array-length v3, p1

    if-le v3, v4, :cond_1

    .line 217
    aput-object v6, p1, v4

    .line 223
    .end local v2    # "val":Ljava/lang/Object;, "TT;"
    :cond_1
    :goto_0
    return-object p1

    .line 220
    :cond_2
    array-length v3, p1

    if-lez v3, :cond_1

    .line 221
    aput-object v6, p1, v5

    goto :goto_0
.end method

.method public hasCompleted()Z
    .locals 2
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lrx/subjects/AsyncSubject;, "Lrx/subjects/AsyncSubject<TT;>;"
    iget-object v1, p0, Lrx/subjects/AsyncSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v1}, Lrx/subjects/SubjectSubscriptionManager;->get()Ljava/lang/Object;

    move-result-object v0

    .line 169
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lrx/subjects/AsyncSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, v0}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasObservers()Z
    .locals 1

    .prologue
    .line 135
    .local p0, "this":Lrx/subjects/AsyncSubject;, "Lrx/subjects/AsyncSubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/AsyncSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v0}, Lrx/subjects/SubjectSubscriptionManager;->observers()[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasThrowable()Z
    .locals 2
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lrx/subjects/AsyncSubject;, "Lrx/subjects/AsyncSubject<TT;>;"
    iget-object v1, p0, Lrx/subjects/AsyncSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v1}, Lrx/subjects/SubjectSubscriptionManager;->get()Ljava/lang/Object;

    move-result-object v0

    .line 159
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lrx/subjects/AsyncSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, v0}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hasValue()Z
    .locals 3
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lrx/subjects/AsyncSubject;, "Lrx/subjects/AsyncSubject<TT;>;"
    iget-object v1, p0, Lrx/subjects/AsyncSubject;->lastValue:Ljava/lang/Object;

    .line 148
    .local v1, "v":Ljava/lang/Object;
    iget-object v2, p0, Lrx/subjects/AsyncSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v2}, Lrx/subjects/SubjectSubscriptionManager;->get()Ljava/lang/Object;

    move-result-object v0

    .line 149
    .local v0, "o":Ljava/lang/Object;
    iget-object v2, p0, Lrx/subjects/AsyncSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, v0}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lrx/subjects/AsyncSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v2, v1}, Lrx/internal/operators/NotificationLite;->isNext(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 6

    .prologue
    .line 92
    .local p0, "this":Lrx/subjects/AsyncSubject;, "Lrx/subjects/AsyncSubject<TT;>;"
    iget-object v5, p0, Lrx/subjects/AsyncSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    iget-boolean v5, v5, Lrx/subjects/SubjectSubscriptionManager;->active:Z

    if-eqz v5, :cond_2

    .line 93
    iget-object v3, p0, Lrx/subjects/AsyncSubject;->lastValue:Ljava/lang/Object;

    .line 94
    .local v3, "last":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 95
    iget-object v5, p0, Lrx/subjects/AsyncSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v5}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v3

    .line 97
    :cond_0
    iget-object v5, p0, Lrx/subjects/AsyncSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v5, v3}, Lrx/subjects/SubjectSubscriptionManager;->terminate(Ljava/lang/Object;)[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    move-result-object v0

    .local v0, "arr$":[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v0, v2

    .line 98
    .local v1, "bo":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    iget-object v5, p0, Lrx/subjects/AsyncSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v5}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v5

    if-ne v3, v5, :cond_1

    .line 99
    invoke-virtual {v1}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->onCompleted()V

    .line 97
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    :cond_1
    iget-object v5, p0, Lrx/subjects/AsyncSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v5, v3}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->onNext(Ljava/lang/Object;)V

    .line 102
    invoke-virtual {v1}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->onCompleted()V

    goto :goto_1

    .line 106
    .end local v0    # "arr$":[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    .end local v1    # "bo":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    .end local v2    # "i$":I
    .end local v3    # "last":Ljava/lang/Object;
    .end local v4    # "len$":I
    :cond_2
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 110
    .local p0, "this":Lrx/subjects/AsyncSubject;, "Lrx/subjects/AsyncSubject<TT;>;"
    iget-object v7, p0, Lrx/subjects/AsyncSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    iget-boolean v7, v7, Lrx/subjects/SubjectSubscriptionManager;->active:Z

    if-eqz v7, :cond_2

    .line 111
    iget-object v7, p0, Lrx/subjects/AsyncSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v7, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v6

    .line 112
    .local v6, "n":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 113
    .local v3, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    iget-object v7, p0, Lrx/subjects/AsyncSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v7, v6}, Lrx/subjects/SubjectSubscriptionManager;->terminate(Ljava/lang/Object;)[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    move-result-object v0

    .local v0, "arr$":[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    .line 115
    .local v1, "bo":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    :try_start_0
    invoke-virtual {v1, p1}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 116
    :catch_0
    move-exception v2

    .line 117
    .local v2, "e2":Ljava/lang/Throwable;
    if-nez v3, :cond_0

    .line 118
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 120
    .restart local v3    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 124
    .end local v1    # "bo":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    .end local v2    # "e2":Ljava/lang/Throwable;
    :cond_1
    invoke-static {v3}, Lrx/exceptions/Exceptions;->throwIfAny(Ljava/util/List;)V

    .line 126
    .end local v0    # "arr$":[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    .end local v3    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "n":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lrx/subjects/AsyncSubject;, "Lrx/subjects/AsyncSubject<TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/subjects/AsyncSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v0, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lrx/subjects/AsyncSubject;->lastValue:Ljava/lang/Object;

    .line 131
    return-void
.end method
