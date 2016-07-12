.class public abstract Lrx/plugins/RxJavaErrorHandler;
.super Ljava/lang/Object;
.source "RxJavaErrorHandler.java"


# static fields
.field protected static final ERROR_IN_RENDERING_SUFFIX:Ljava/lang/String; = ".errorRendering"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 49
    return-void
.end method

.method public final handleOnNextValueRendering(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "item"    # Ljava/lang/Object;
    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 74
    :try_start_0
    invoke-virtual {p0, p1}, Lrx/plugins/RxJavaErrorHandler;->render(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 80
    :goto_0
    return-object v2

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 80
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".errorRendering"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 77
    :catch_1
    move-exception v1

    .line 78
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected render(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method
