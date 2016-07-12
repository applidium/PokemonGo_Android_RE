.class public final Lrx/subjects/BehaviorSubject;
.super Lrx/subjects/Subject;
.source "BehaviorSubject.java"


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
.field private final nl:Lrx/internal/operators/NotificationLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/NotificationLite",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final state:Lrx/subjects/SubjectSubscriptionManager;
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
    .line 118
    .local p0, "this":Lrx/subjects/BehaviorSubject;, "Lrx/subjects/BehaviorSubject<TT;>;"
    .local p1, "onSubscribe":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    .local p2, "state":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    invoke-direct {p0, p1}, Lrx/subjects/Subject;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 115
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v0

    iput-object v0, p0, Lrx/subjects/BehaviorSubject;->nl:Lrx/internal/operators/NotificationLite;

    .line 119
    iput-object p2, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    .line 120
    return-void
.end method

.method public static create()Lrx/subjects/BehaviorSubject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/subjects/BehaviorSubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 81
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lrx/subjects/BehaviorSubject;->create(Ljava/lang/Object;Z)Lrx/subjects/BehaviorSubject;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/Object;)Lrx/subjects/BehaviorSubject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/subjects/BehaviorSubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "defaultValue":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lrx/subjects/BehaviorSubject;->create(Ljava/lang/Object;Z)Lrx/subjects/BehaviorSubject;

    move-result-object v0

    return-object v0
.end method

.method private static create(Ljava/lang/Object;Z)Lrx/subjects/BehaviorSubject;
    .locals 2
    .param p1, "hasDefault"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;Z)",
            "Lrx/subjects/BehaviorSubject",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "defaultValue":Ljava/lang/Object;, "TT;"
    new-instance v0, Lrx/subjects/SubjectSubscriptionManager;

    invoke-direct {v0}, Lrx/subjects/SubjectSubscriptionManager;-><init>()V

    .line 99
    .local v0, "state":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    if-eqz p1, :cond_0

    .line 100
    invoke-static {}, Lrx/internal/operators/NotificationLite;->instance()Lrx/internal/operators/NotificationLite;

    move-result-object v1

    invoke-virtual {v1, p0}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/subjects/SubjectSubscriptionManager;->set(Ljava/lang/Object;)V

    .line 102
    :cond_0
    new-instance v1, Lrx/subjects/BehaviorSubject$1;

    invoke-direct {v1, v0}, Lrx/subjects/BehaviorSubject$1;-><init>(Lrx/subjects/SubjectSubscriptionManager;)V

    iput-object v1, v0, Lrx/subjects/SubjectSubscriptionManager;->onAdded:Lrx/functions/Action1;

    .line 110
    iget-object v1, v0, Lrx/subjects/SubjectSubscriptionManager;->onAdded:Lrx/functions/Action1;

    iput-object v1, v0, Lrx/subjects/SubjectSubscriptionManager;->onTerminated:Lrx/functions/Action1;

    .line 111
    new-instance v1, Lrx/subjects/BehaviorSubject;

    invoke-direct {v1, v0, v0}, Lrx/subjects/BehaviorSubject;-><init>(Lrx/Observable$OnSubscribe;Lrx/subjects/SubjectSubscriptionManager;)V

    return-object v1
.end method


# virtual methods
.method public getThrowable()Ljava/lang/Throwable;
    .locals 2
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 232
    .local p0, "this":Lrx/subjects/BehaviorSubject;, "Lrx/subjects/BehaviorSubject<TT;>;"
    iget-object v1, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v1}, Lrx/subjects/SubjectSubscriptionManager;->get()Ljava/lang/Object;

    move-result-object v0

    .line 233
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lrx/subjects/BehaviorSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, v0}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lrx/subjects/BehaviorSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, v0}, Lrx/internal/operators/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 236
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 218
    .local p0, "this":Lrx/subjects/BehaviorSubject;, "Lrx/subjects/BehaviorSubject<TT;>;"
    iget-object v1, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v1}, Lrx/subjects/SubjectSubscriptionManager;->get()Ljava/lang/Object;

    move-result-object v0

    .line 219
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lrx/subjects/BehaviorSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, v0}, Lrx/internal/operators/NotificationLite;->isNext(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lrx/subjects/BehaviorSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, v0}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 222
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .local p0, "this":Lrx/subjects/BehaviorSubject;, "Lrx/subjects/BehaviorSubject<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 242
    iget-object v1, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v1}, Lrx/subjects/SubjectSubscriptionManager;->get()Ljava/lang/Object;

    move-result-object v0

    .line 243
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lrx/subjects/BehaviorSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, v0}, Lrx/internal/operators/NotificationLite;->isNext(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 244
    array-length v1, p1

    if-nez v1, :cond_0

    .line 245
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object p1, v1

    check-cast p1, [Ljava/lang/Object;

    .line 247
    :cond_0
    iget-object v1, p0, Lrx/subjects/BehaviorSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, v0}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v3

    .line 248
    array-length v1, p1

    if-le v1, v2, :cond_1

    .line 249
    aput-object v4, p1, v2

    .line 255
    :cond_1
    :goto_0
    return-object p1

    .line 252
    :cond_2
    array-length v1, p1

    if-lez v1, :cond_1

    .line 253
    aput-object v4, p1, v3

    goto :goto_0
.end method

.method public hasCompleted()Z
    .locals 2
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 203
    .local p0, "this":Lrx/subjects/BehaviorSubject;, "Lrx/subjects/BehaviorSubject<TT;>;"
    iget-object v1, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v1}, Lrx/subjects/SubjectSubscriptionManager;->get()Ljava/lang/Object;

    move-result-object v0

    .line 204
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lrx/subjects/BehaviorSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, v0}, Lrx/internal/operators/NotificationLite;->isCompleted(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hasObservers()Z
    .locals 1

    .prologue
    .line 171
    .local p0, "this":Lrx/subjects/BehaviorSubject;, "Lrx/subjects/BehaviorSubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

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
    .line 193
    .local p0, "this":Lrx/subjects/BehaviorSubject;, "Lrx/subjects/BehaviorSubject<TT;>;"
    iget-object v1, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v1}, Lrx/subjects/SubjectSubscriptionManager;->get()Ljava/lang/Object;

    move-result-object v0

    .line 194
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lrx/subjects/BehaviorSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, v0}, Lrx/internal/operators/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hasValue()Z
    .locals 2
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 183
    .local p0, "this":Lrx/subjects/BehaviorSubject;, "Lrx/subjects/BehaviorSubject<TT;>;"
    iget-object v1, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v1}, Lrx/subjects/SubjectSubscriptionManager;->get()Ljava/lang/Object;

    move-result-object v0

    .line 184
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lrx/subjects/BehaviorSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, v0}, Lrx/internal/operators/NotificationLite;->isNext(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public onCompleted()V
    .locals 7

    .prologue
    .line 124
    .local p0, "this":Lrx/subjects/BehaviorSubject;, "Lrx/subjects/BehaviorSubject<TT;>;"
    iget-object v6, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v6}, Lrx/subjects/SubjectSubscriptionManager;->get()Ljava/lang/Object;

    move-result-object v3

    .line 125
    .local v3, "last":Ljava/lang/Object;
    if-eqz v3, :cond_0

    iget-object v6, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    iget-boolean v6, v6, Lrx/subjects/SubjectSubscriptionManager;->active:Z

    if-eqz v6, :cond_1

    .line 126
    :cond_0
    iget-object v6, p0, Lrx/subjects/BehaviorSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v6}, Lrx/internal/operators/NotificationLite;->completed()Ljava/lang/Object;

    move-result-object v5

    .line 127
    .local v5, "n":Ljava/lang/Object;
    iget-object v6, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v6, v5}, Lrx/subjects/SubjectSubscriptionManager;->terminate(Ljava/lang/Object;)[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    move-result-object v0

    .local v0, "arr$":[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v0, v2

    .line 128
    .local v1, "bo":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    iget-object v6, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    iget-object v6, v6, Lrx/subjects/SubjectSubscriptionManager;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, v5, v6}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitNext(Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    .end local v0    # "arr$":[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    .end local v1    # "bo":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "n":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 135
    .local p0, "this":Lrx/subjects/BehaviorSubject;, "Lrx/subjects/BehaviorSubject<TT;>;"
    iget-object v8, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v8}, Lrx/subjects/SubjectSubscriptionManager;->get()Ljava/lang/Object;

    move-result-object v5

    .line 136
    .local v5, "last":Ljava/lang/Object;
    if-eqz v5, :cond_0

    iget-object v8, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    iget-boolean v8, v8, Lrx/subjects/SubjectSubscriptionManager;->active:Z

    if-eqz v8, :cond_3

    .line 137
    :cond_0
    iget-object v8, p0, Lrx/subjects/BehaviorSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v8, p1}, Lrx/internal/operators/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v7

    .line 138
    .local v7, "n":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 139
    .local v3, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    iget-object v8, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v8, v7}, Lrx/subjects/SubjectSubscriptionManager;->terminate(Ljava/lang/Object;)[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    move-result-object v0

    .local v0, "arr$":[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v1, v0, v4

    .line 141
    .local v1, "bo":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    :try_start_0
    iget-object v8, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    iget-object v8, v8, Lrx/subjects/SubjectSubscriptionManager;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, v7, v8}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitNext(Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 142
    :catch_0
    move-exception v2

    .line 143
    .local v2, "e2":Ljava/lang/Throwable;
    if-nez v3, :cond_1

    .line 144
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .restart local v3    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_1
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 150
    .end local v1    # "bo":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    .end local v2    # "e2":Ljava/lang/Throwable;
    :cond_2
    invoke-static {v3}, Lrx/exceptions/Exceptions;->throwIfAny(Ljava/util/List;)V

    .line 152
    .end local v0    # "arr$":[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    .end local v3    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "n":Ljava/lang/Object;
    :cond_3
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "this":Lrx/subjects/BehaviorSubject;, "Lrx/subjects/BehaviorSubject<TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iget-object v6, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v6}, Lrx/subjects/SubjectSubscriptionManager;->get()Ljava/lang/Object;

    move-result-object v3

    .line 157
    .local v3, "last":Ljava/lang/Object;
    if-eqz v3, :cond_0

    iget-object v6, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    iget-boolean v6, v6, Lrx/subjects/SubjectSubscriptionManager;->active:Z

    if-eqz v6, :cond_1

    .line 158
    :cond_0
    iget-object v6, p0, Lrx/subjects/BehaviorSubject;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v6, p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 159
    .local v5, "n":Ljava/lang/Object;
    iget-object v6, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v6, v5}, Lrx/subjects/SubjectSubscriptionManager;->next(Ljava/lang/Object;)[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    move-result-object v0

    .local v0, "arr$":[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v0, v2

    .line 160
    .local v1, "bo":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    iget-object v6, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    iget-object v6, v6, Lrx/subjects/SubjectSubscriptionManager;->nl:Lrx/internal/operators/NotificationLite;

    invoke-virtual {v1, v5, v6}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->emitNext(Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    .end local v0    # "arr$":[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;
    .end local v1    # "bo":Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "n":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method subscriberCount()I
    .locals 1

    .prologue
    .line 166
    .local p0, "this":Lrx/subjects/BehaviorSubject;, "Lrx/subjects/BehaviorSubject<TT;>;"
    iget-object v0, p0, Lrx/subjects/BehaviorSubject;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v0}, Lrx/subjects/SubjectSubscriptionManager;->observers()[Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    move-result-object v0

    array-length v0, v0

    return v0
.end method
