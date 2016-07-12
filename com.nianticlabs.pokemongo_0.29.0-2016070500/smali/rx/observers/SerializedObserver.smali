.class public Lrx/observers/SerializedObserver;
.super Ljava/lang/Object;
.source "SerializedObserver.java"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/observers/SerializedObserver$ErrorSentinel;,
        Lrx/observers/SerializedObserver$FastList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observer",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final COMPLETE_SENTINEL:Ljava/lang/Object;

.field private static final MAX_DRAIN_ITERATION:I = 0x7fffffff

.field private static final NULL_SENTINEL:Ljava/lang/Object;


# instance fields
.field private final actual:Lrx/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observer",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private emitting:Z

.field private queue:Lrx/observers/SerializedObserver$FastList;

.field private terminated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/observers/SerializedObserver;->NULL_SENTINEL:Ljava/lang/Object;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/observers/SerializedObserver;->COMPLETE_SENTINEL:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrx/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/observers/SerializedObserver;, "Lrx/observers/SerializedObserver<TT;>;"
    .local p1, "s":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v0, p0, Lrx/observers/SerializedObserver;->emitting:Z

    .line 39
    iput-boolean v0, p0, Lrx/observers/SerializedObserver;->terminated:Z

    .line 76
    iput-object p1, p0, Lrx/observers/SerializedObserver;->actual:Lrx/Observer;

    .line 77
    return-void
.end method


# virtual methods
.method drainQueue(Lrx/observers/SerializedObserver$FastList;)V
    .locals 7
    .param p1, "list"    # Lrx/observers/SerializedObserver$FastList;

    .prologue
    .line 193
    .local p0, "this":Lrx/observers/SerializedObserver;, "Lrx/observers/SerializedObserver<TT;>;"
    if-eqz p1, :cond_0

    iget v5, p1, Lrx/observers/SerializedObserver$FastList;->size:I

    if-nez v5, :cond_1

    .line 212
    :cond_0
    return-void

    .line 196
    :cond_1
    iget-object v0, p1, Lrx/observers/SerializedObserver$FastList;->array:[Ljava/lang/Object;

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 197
    .local v4, "v":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 200
    sget-object v5, Lrx/observers/SerializedObserver;->NULL_SENTINEL:Ljava/lang/Object;

    if-ne v4, v5, :cond_2

    .line 201
    iget-object v5, p0, Lrx/observers/SerializedObserver;->actual:Lrx/Observer;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 196
    .end local v4    # "v":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    .restart local v4    # "v":Ljava/lang/Object;
    :cond_2
    sget-object v5, Lrx/observers/SerializedObserver;->COMPLETE_SENTINEL:Ljava/lang/Object;

    if-ne v4, v5, :cond_3

    .line 203
    iget-object v5, p0, Lrx/observers/SerializedObserver;->actual:Lrx/Observer;

    invoke-interface {v5}, Lrx/Observer;->onCompleted()V

    goto :goto_1

    .line 204
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Lrx/observers/SerializedObserver$ErrorSentinel;

    if-ne v5, v6, :cond_4

    .line 205
    iget-object v5, p0, Lrx/observers/SerializedObserver;->actual:Lrx/Observer;

    check-cast v4, Lrx/observers/SerializedObserver$ErrorSentinel;

    .end local v4    # "v":Ljava/lang/Object;
    iget-object v6, v4, Lrx/observers/SerializedObserver$ErrorSentinel;->e:Ljava/lang/Throwable;

    invoke-interface {v5, v6}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 208
    .restart local v4    # "v":Ljava/lang/Object;
    :cond_4
    move-object v3, v4

    .line 209
    .local v3, "t":Ljava/lang/Object;, "TT;"
    iget-object v5, p0, Lrx/observers/SerializedObserver;->actual:Lrx/Observer;

    invoke-interface {v5, v3}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onCompleted()V
    .locals 3

    .prologue
    .line 82
    .local p0, "this":Lrx/observers/SerializedObserver;, "Lrx/observers/SerializedObserver<TT;>;"
    monitor-enter p0

    .line 83
    :try_start_0
    iget-boolean v1, p0, Lrx/observers/SerializedObserver;->terminated:Z

    if-eqz v1, :cond_0

    .line 84
    monitor-exit p0

    .line 100
    :goto_0
    return-void

    .line 86
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/observers/SerializedObserver;->terminated:Z

    .line 87
    iget-boolean v1, p0, Lrx/observers/SerializedObserver;->emitting:Z

    if-eqz v1, :cond_2

    .line 88
    iget-object v1, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    if-nez v1, :cond_1

    .line 89
    new-instance v1, Lrx/observers/SerializedObserver$FastList;

    invoke-direct {v1}, Lrx/observers/SerializedObserver$FastList;-><init>()V

    iput-object v1, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 91
    :cond_1
    iget-object v1, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    sget-object v2, Lrx/observers/SerializedObserver;->COMPLETE_SENTINEL:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lrx/observers/SerializedObserver$FastList;->add(Ljava/lang/Object;)V

    .line 92
    monitor-exit p0

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 94
    :cond_2
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lrx/observers/SerializedObserver;->emitting:Z

    .line 95
    iget-object v0, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 96
    .local v0, "list":Lrx/observers/SerializedObserver$FastList;
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 97
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    invoke-virtual {p0, v0}, Lrx/observers/SerializedObserver;->drainQueue(Lrx/observers/SerializedObserver$FastList;)V

    .line 99
    iget-object v1, p0, Lrx/observers/SerializedObserver;->actual:Lrx/Observer;

    invoke-interface {v1}, Lrx/Observer;->onCompleted()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 104
    .local p0, "this":Lrx/observers/SerializedObserver;, "Lrx/observers/SerializedObserver<TT;>;"
    invoke-static {p1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    iget-boolean v1, p0, Lrx/observers/SerializedObserver;->terminated:Z

    if-eqz v1, :cond_0

    .line 108
    monitor-exit p0

    .line 126
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-boolean v1, p0, Lrx/observers/SerializedObserver;->emitting:Z

    if-eqz v1, :cond_2

    .line 111
    iget-object v1, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    if-nez v1, :cond_1

    .line 112
    new-instance v1, Lrx/observers/SerializedObserver$FastList;

    invoke-direct {v1}, Lrx/observers/SerializedObserver$FastList;-><init>()V

    iput-object v1, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 114
    :cond_1
    iget-object v1, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    new-instance v2, Lrx/observers/SerializedObserver$ErrorSentinel;

    invoke-direct {v2, p1}, Lrx/observers/SerializedObserver$ErrorSentinel;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lrx/observers/SerializedObserver$FastList;->add(Ljava/lang/Object;)V

    .line 115
    monitor-exit p0

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 117
    :cond_2
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lrx/observers/SerializedObserver;->emitting:Z

    .line 118
    iget-object v0, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 119
    .local v0, "list":Lrx/observers/SerializedObserver$FastList;
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 120
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    invoke-virtual {p0, v0}, Lrx/observers/SerializedObserver;->drainQueue(Lrx/observers/SerializedObserver$FastList;)V

    .line 122
    iget-object v1, p0, Lrx/observers/SerializedObserver;->actual:Lrx/Observer;

    invoke-interface {v1, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    .line 123
    monitor-enter p0

    .line 124
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lrx/observers/SerializedObserver;->emitting:Z

    .line 125
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lrx/observers/SerializedObserver;, "Lrx/observers/SerializedObserver<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 133
    :try_start_0
    iget-boolean v3, p0, Lrx/observers/SerializedObserver;->terminated:Z

    if-eqz v3, :cond_1

    .line 134
    monitor-exit p0

    .line 190
    .end local p1    # "t":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_0
    return-void

    .line 136
    .restart local p1    # "t":Ljava/lang/Object;, "TT;"
    :cond_1
    iget-boolean v3, p0, Lrx/observers/SerializedObserver;->emitting:Z

    if-eqz v3, :cond_4

    .line 137
    iget-object v3, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    if-nez v3, :cond_2

    .line 138
    new-instance v3, Lrx/observers/SerializedObserver$FastList;

    invoke-direct {v3}, Lrx/observers/SerializedObserver$FastList;-><init>()V

    iput-object v3, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 140
    :cond_2
    iget-object v3, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    if-eqz p1, :cond_3

    .end local p1    # "t":Ljava/lang/Object;, "TT;"
    :goto_1
    invoke-virtual {v3, p1}, Lrx/observers/SerializedObserver$FastList;->add(Ljava/lang/Object;)V

    .line 142
    monitor-exit p0

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 140
    .restart local p1    # "t":Ljava/lang/Object;, "TT;"
    :cond_3
    :try_start_1
    sget-object p1, Lrx/observers/SerializedObserver;->NULL_SENTINEL:Ljava/lang/Object;

    goto :goto_1

    .line 145
    :cond_4
    const/4 v3, 0x1

    iput-boolean v3, p0, Lrx/observers/SerializedObserver;->emitting:Z

    .line 147
    iget-object v1, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 148
    .local v1, "list":Lrx/observers/SerializedObserver$FastList;
    const/4 v3, 0x0

    iput-object v3, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 149
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    const/4 v2, 0x0

    .line 154
    .local v2, "skipFinal":Z
    const v0, 0x7fffffff

    .line 156
    .local v0, "iter":I
    :cond_5
    :try_start_2
    invoke-virtual {p0, v1}, Lrx/observers/SerializedObserver;->drainQueue(Lrx/observers/SerializedObserver$FastList;)V

    .line 157
    const v3, 0x7fffffff

    if-ne v0, v3, :cond_6

    .line 159
    iget-object v3, p0, Lrx/observers/SerializedObserver;->actual:Lrx/Observer;

    invoke-interface {v3, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 161
    :cond_6
    add-int/lit8 v0, v0, -0x1

    .line 162
    if-lez v0, :cond_9

    .line 163
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 164
    :try_start_3
    iget-object v1, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 165
    const/4 v3, 0x0

    iput-object v3, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 166
    if-nez v1, :cond_8

    .line 167
    const/4 v3, 0x0

    iput-boolean v3, p0, Lrx/observers/SerializedObserver;->emitting:Z

    .line 168
    const/4 v2, 0x1

    .line 169
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 175
    if-nez v2, :cond_0

    .line 176
    monitor-enter p0

    .line 177
    :try_start_4
    iget-boolean v3, p0, Lrx/observers/SerializedObserver;->terminated:Z

    if-eqz v3, :cond_7

    .line 178
    iget-object v1, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 179
    const/4 v3, 0x0

    iput-object v3, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 184
    :goto_2
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 181
    :cond_7
    const/4 v3, 0x0

    :try_start_5
    iput-boolean v3, p0, Lrx/observers/SerializedObserver;->emitting:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 182
    const/4 v1, 0x0

    goto :goto_2

    .line 171
    :cond_8
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 173
    :cond_9
    if-gtz v0, :cond_5

    .line 175
    if-nez v2, :cond_a

    .line 176
    monitor-enter p0

    .line 177
    :try_start_7
    iget-boolean v3, p0, Lrx/observers/SerializedObserver;->terminated:Z

    if-eqz v3, :cond_c

    .line 178
    iget-object v1, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 179
    const/4 v3, 0x0

    iput-object v3, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 184
    :goto_3
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 189
    :cond_a
    invoke-virtual {p0, v1}, Lrx/observers/SerializedObserver;->drainQueue(Lrx/observers/SerializedObserver$FastList;)V

    goto :goto_0

    .line 171
    :catchall_2
    move-exception v3

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 175
    :catchall_3
    move-exception v3

    if-nez v2, :cond_b

    .line 176
    monitor-enter p0

    .line 177
    :try_start_a
    iget-boolean v4, p0, Lrx/observers/SerializedObserver;->terminated:Z

    if-eqz v4, :cond_d

    .line 178
    iget-object v1, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 179
    const/4 v4, 0x0

    iput-object v4, p0, Lrx/observers/SerializedObserver;->queue:Lrx/observers/SerializedObserver$FastList;

    .line 184
    :goto_4
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :cond_b
    throw v3

    .line 181
    :cond_c
    const/4 v3, 0x0

    :try_start_b
    iput-boolean v3, p0, Lrx/observers/SerializedObserver;->emitting:Z

    .line 182
    const/4 v1, 0x0

    goto :goto_3

    .line 184
    :catchall_4
    move-exception v3

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v3

    .line 181
    :cond_d
    const/4 v4, 0x0

    :try_start_c
    iput-boolean v4, p0, Lrx/observers/SerializedObserver;->emitting:Z

    .line 182
    const/4 v1, 0x0

    goto :goto_4

    .line 184
    :catchall_5
    move-exception v3

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    throw v3
.end method
