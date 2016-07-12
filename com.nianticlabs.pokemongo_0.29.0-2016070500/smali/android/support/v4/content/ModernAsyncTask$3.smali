.class Landroid/support/v4/content/ModernAsyncTask$3;
.super Ljava/util/concurrent/FutureTask;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/content/ModernAsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/content/ModernAsyncTask;


# direct methods
.method constructor <init>(Landroid/support/v4/content/ModernAsyncTask;Ljava/util/concurrent/Callable;)V
    .locals 0

    .prologue
    .line 132
    .local p0, "this":Landroid/support/v4/content/ModernAsyncTask$3;, "Landroid/support/v4/content/ModernAsyncTask.3;"
    .local p2, "x0":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TResult;>;"
    iput-object p1, p0, Landroid/support/v4/content/ModernAsyncTask$3;->this$0:Landroid/support/v4/content/ModernAsyncTask;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 6

    .prologue
    .line 136
    .local p0, "this":Landroid/support/v4/content/ModernAsyncTask$3;, "Landroid/support/v4/content/ModernAsyncTask.3;"
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/content/ModernAsyncTask$3;->get()Ljava/lang/Object;

    move-result-object v1

    .line 138
    .local v1, "result":Ljava/lang/Object;, "TResult;"
    iget-object v3, p0, Landroid/support/v4/content/ModernAsyncTask$3;->this$0:Landroid/support/v4/content/ModernAsyncTask;

    # invokes: Landroid/support/v4/content/ModernAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V
    invoke-static {v3, v1}, Landroid/support/v4/content/ModernAsyncTask;->access$300(Landroid/support/v4/content/ModernAsyncTask;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 150
    .end local v1    # "result":Ljava/lang/Object;, "TResult;"
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "AsyncTask"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 141
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 142
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "An error occurred while executing doInBackground()"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 144
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v0

    .line 145
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    iget-object v3, p0, Landroid/support/v4/content/ModernAsyncTask$3;->this$0:Landroid/support/v4/content/ModernAsyncTask;

    const/4 v4, 0x0

    # invokes: Landroid/support/v4/content/ModernAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V
    invoke-static {v3, v4}, Landroid/support/v4/content/ModernAsyncTask;->access$300(Landroid/support/v4/content/ModernAsyncTask;Ljava/lang/Object;)V

    goto :goto_0

    .line 146
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    :catch_3
    move-exception v2

    .line 147
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "An error occurred while executing doInBackground()"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
