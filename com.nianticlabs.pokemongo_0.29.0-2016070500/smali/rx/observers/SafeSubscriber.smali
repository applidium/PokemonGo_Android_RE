.class public Lrx/observers/SafeSubscriber;
.super Lrx/Subscriber;
.source "SafeSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation
.end field

.field done:Z


# direct methods
.method public constructor <init>(Lrx/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lrx/observers/SafeSubscriber;, "Lrx/observers/SafeSubscriber<TT;>;"
    .local p1, "actual":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0, p1}, Lrx/Subscriber;-><init>(Lrx/Subscriber;)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/observers/SafeSubscriber;->done:Z

    .line 68
    iput-object p1, p0, Lrx/observers/SafeSubscriber;->actual:Lrx/Subscriber;

    .line 69
    return-void
.end method

.method private handlePluginException(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "pluginException"    # Ljava/lang/Throwable;

    .prologue
    .line 223
    .local p0, "this":Lrx/observers/SafeSubscriber;, "Lrx/observers/SafeSubscriber<TT;>;"
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RxJavaErrorHandler threw an Exception. It shouldn\'t. => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 225
    return-void
.end method


# virtual methods
.method protected _onError(Ljava/lang/Throwable;)V
    .locals 10
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .local p0, "this":Lrx/observers/SafeSubscriber;, "Lrx/observers/SafeSubscriber<TT;>;"
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 149
    :try_start_0
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v3

    invoke-virtual {v3}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v3

    invoke-virtual {v3, p1}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    :try_start_1
    iget-object v3, p0, Lrx/observers/SafeSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v3, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 206
    :try_start_2
    invoke-virtual {p0}, Lrx/observers/SafeSubscriber;->unsubscribe()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_7

    .line 215
    return-void

    .line 150
    :catch_0
    move-exception v1

    .line 151
    .local v1, "pluginException":Ljava/lang/Throwable;
    invoke-direct {p0, v1}, Lrx/observers/SafeSubscriber;->handlePluginException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 155
    .end local v1    # "pluginException":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 156
    .local v0, "e2":Ljava/lang/Throwable;
    instance-of v3, v0, Lrx/exceptions/OnErrorNotImplementedException;

    if-eqz v3, :cond_0

    .line 169
    :try_start_3
    invoke-virtual {p0}, Lrx/observers/SafeSubscriber;->unsubscribe()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 178
    check-cast v0, Lrx/exceptions/OnErrorNotImplementedException;

    .end local v0    # "e2":Ljava/lang/Throwable;
    throw v0

    .line 170
    .restart local v0    # "e2":Ljava/lang/Throwable;
    :catch_2
    move-exception v2

    .line 172
    .local v2, "unsubscribeException":Ljava/lang/Throwable;
    :try_start_4
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v3

    invoke-virtual {v3}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    .line 176
    :goto_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Observer.onError not implemented and error while unsubscribing."

    new-instance v5, Lrx/exceptions/CompositeException;

    new-array v6, v9, [Ljava/lang/Throwable;

    aput-object p1, v6, v7

    aput-object v2, v6, v8

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 173
    :catch_3
    move-exception v1

    .line 174
    .restart local v1    # "pluginException":Ljava/lang/Throwable;
    invoke-direct {p0, v1}, Lrx/observers/SafeSubscriber;->handlePluginException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 186
    .end local v1    # "pluginException":Ljava/lang/Throwable;
    .end local v2    # "unsubscribeException":Ljava/lang/Throwable;
    :cond_0
    :try_start_5
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v3

    invoke-virtual {v3}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v3

    invoke-virtual {v3, v0}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    .line 191
    :goto_2
    :try_start_6
    invoke-virtual {p0}, Lrx/observers/SafeSubscriber;->unsubscribe()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    .line 201
    new-instance v3, Lrx/exceptions/OnErrorFailedException;

    const-string v4, "Error occurred when trying to propagate error to Observer.onError"

    new-instance v5, Lrx/exceptions/CompositeException;

    new-array v6, v9, [Ljava/lang/Throwable;

    aput-object p1, v6, v7

    aput-object v0, v6, v8

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-direct {v3, v4, v5}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 187
    :catch_4
    move-exception v1

    .line 188
    .restart local v1    # "pluginException":Ljava/lang/Throwable;
    invoke-direct {p0, v1}, Lrx/observers/SafeSubscriber;->handlePluginException(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 192
    .end local v1    # "pluginException":Ljava/lang/Throwable;
    :catch_5
    move-exception v2

    .line 194
    .restart local v2    # "unsubscribeException":Ljava/lang/Throwable;
    :try_start_7
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v3

    invoke-virtual {v3}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6

    .line 198
    :goto_3
    new-instance v3, Lrx/exceptions/OnErrorFailedException;

    const-string v4, "Error occurred when trying to propagate error to Observer.onError and during unsubscription."

    new-instance v5, Lrx/exceptions/CompositeException;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Throwable;

    aput-object p1, v6, v7

    aput-object v0, v6, v8

    aput-object v2, v6, v9

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-direct {v3, v4, v5}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 195
    :catch_6
    move-exception v1

    .line 196
    .restart local v1    # "pluginException":Ljava/lang/Throwable;
    invoke-direct {p0, v1}, Lrx/observers/SafeSubscriber;->handlePluginException(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 207
    .end local v0    # "e2":Ljava/lang/Throwable;
    .end local v1    # "pluginException":Ljava/lang/Throwable;
    .end local v2    # "unsubscribeException":Ljava/lang/Throwable;
    :catch_7
    move-exception v2

    .line 209
    .local v2, "unsubscribeException":Ljava/lang/RuntimeException;
    :try_start_8
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v3

    invoke-virtual {v3}, Lrx/plugins/RxJavaPlugins;->getErrorHandler()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lrx/plugins/RxJavaErrorHandler;->handleError(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    .line 213
    :goto_4
    new-instance v3, Lrx/exceptions/OnErrorFailedException;

    invoke-direct {v3, v2}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 210
    :catch_8
    move-exception v1

    .line 211
    .restart local v1    # "pluginException":Ljava/lang/Throwable;
    invoke-direct {p0, v1}, Lrx/observers/SafeSubscriber;->handlePluginException(Ljava/lang/Throwable;)V

    goto :goto_4
.end method

.method public getActual()Lrx/Subscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 233
    .local p0, "this":Lrx/observers/SafeSubscriber;, "Lrx/observers/SafeSubscriber<TT;>;"
    iget-object v0, p0, Lrx/observers/SafeSubscriber;->actual:Lrx/Subscriber;

    return-object v0
.end method

.method public onCompleted()V
    .locals 2

    .prologue
    .line 78
    .local p0, "this":Lrx/observers/SafeSubscriber;, "Lrx/observers/SafeSubscriber<TT;>;"
    iget-boolean v1, p0, Lrx/observers/SafeSubscriber;->done:Z

    if-nez v1, :cond_0

    .line 79
    const/4 v1, 0x1

    iput-boolean v1, p0, Lrx/observers/SafeSubscriber;->done:Z

    .line 81
    :try_start_0
    iget-object v1, p0, Lrx/observers/SafeSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->onCompleted()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-virtual {p0}, Lrx/observers/SafeSubscriber;->unsubscribe()V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 87
    invoke-virtual {p0, v0}, Lrx/observers/SafeSubscriber;->_onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    invoke-virtual {p0}, Lrx/observers/SafeSubscriber;->unsubscribe()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lrx/observers/SafeSubscriber;->unsubscribe()V

    throw v1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 108
    .local p0, "this":Lrx/observers/SafeSubscriber;, "Lrx/observers/SafeSubscriber<TT;>;"
    invoke-static {p1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 109
    iget-boolean v0, p0, Lrx/observers/SafeSubscriber;->done:Z

    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/observers/SafeSubscriber;->done:Z

    .line 111
    invoke-virtual {p0, p1}, Lrx/observers/SafeSubscriber;->_onError(Ljava/lang/Throwable;)V

    .line 113
    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Lrx/observers/SafeSubscriber;, "Lrx/observers/SafeSubscriber<TT;>;"
    .local p1, "args":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-boolean v1, p0, Lrx/observers/SafeSubscriber;->done:Z

    if-nez v1, :cond_0

    .line 130
    iget-object v1, p0, Lrx/observers/SafeSubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {v1, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 137
    invoke-virtual {p0, v0}, Lrx/observers/SafeSubscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
