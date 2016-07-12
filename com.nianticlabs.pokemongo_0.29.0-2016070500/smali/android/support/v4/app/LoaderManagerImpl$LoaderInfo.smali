.class final Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
.super Ljava/lang/Object;
.source "LoaderManager.java"

# interfaces
.implements Landroid/support/v4/content/Loader$OnLoadCanceledListener;
.implements Landroid/support/v4/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/LoaderManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LoaderInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/content/Loader$OnLoadCompleteListener",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Landroid/support/v4/content/Loader$OnLoadCanceledListener",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final mArgs:Landroid/os/Bundle;

.field mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mData:Ljava/lang/Object;

.field mDeliveredData:Z

.field mDestroyed:Z

.field mHaveData:Z

.field final mId:I

.field mListenerRegistered:Z

.field mLoader:Landroid/support/v4/content/Loader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

.field mReportNextStart:Z

.field mRetaining:Z

.field mRetainingStarted:Z

.field mStarted:Z

.field final synthetic this$0:Landroid/support/v4/app/LoaderManagerImpl;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/LoaderManagerImpl;ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)V
    .locals 0
    .param p2, "id"    # I
    .param p3, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p4, "callbacks":Landroid/support/v4/app/LoaderManager$LoaderCallbacks;, "Landroid/support/v4/app/LoaderManager$LoaderCallbacks<Ljava/lang/Object;>;"
    iput-object p1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput p2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    .line 237
    iput-object p3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    .line 238
    iput-object p4, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 239
    return-void
.end method


# virtual methods
.method callOnLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 4
    .param p2, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 467
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/lang/Object;>;"
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    if-eqz v1, :cond_3

    .line 468
    const/4 v0, 0x0

    .line 469
    .local v0, "lastBecause":Ljava/lang/String;
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    # getter for: Landroid/support/v4/app/LoaderManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
    invoke-static {v1}, Landroid/support/v4/app/LoaderManagerImpl;->access$000(Landroid/support/v4/app/LoaderManagerImpl;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 470
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    # getter for: Landroid/support/v4/app/LoaderManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
    invoke-static {v1}, Landroid/support/v4/app/LoaderManagerImpl;->access$000(Landroid/support/v4/app/LoaderManagerImpl;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v1, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    .line 471
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    # getter for: Landroid/support/v4/app/LoaderManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
    invoke-static {v1}, Landroid/support/v4/app/LoaderManagerImpl;->access$000(Landroid/support/v4/app/LoaderManagerImpl;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    const-string v2, "onLoadFinished"

    iput-object v2, v1, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    .line 474
    :cond_0
    :try_start_0
    sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  onLoadFinished in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, p2}, Landroid/support/v4/content/Loader;->dataToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-interface {v1, p1, p2}, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;->onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    # getter for: Landroid/support/v4/app/LoaderManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
    invoke-static {v1}, Landroid/support/v4/app/LoaderManagerImpl;->access$000(Landroid/support/v4/app/LoaderManagerImpl;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 479
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    # getter for: Landroid/support/v4/app/LoaderManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
    invoke-static {v1}, Landroid/support/v4/app/LoaderManagerImpl;->access$000(Landroid/support/v4/app/LoaderManagerImpl;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object v0, v1, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    .line 482
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    .line 484
    .end local v0    # "lastBecause":Ljava/lang/String;
    :cond_3
    return-void

    .line 478
    .restart local v0    # "lastBecause":Ljava/lang/String;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    # getter for: Landroid/support/v4/app/LoaderManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
    invoke-static {v2}, Landroid/support/v4/app/LoaderManagerImpl;->access$000(Landroid/support/v4/app/LoaderManagerImpl;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 479
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    # getter for: Landroid/support/v4/app/LoaderManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
    invoke-static {v2}, Landroid/support/v4/app/LoaderManagerImpl;->access$000(Landroid/support/v4/app/LoaderManagerImpl;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v2

    iget-object v2, v2, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object v0, v2, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    :cond_4
    throw v1
.end method

.method cancel()V
    .locals 3

    .prologue
    .line 336
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Canceling: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->cancelLoad()Z

    move-result v0

    if-nez v0, :cond_1

    .line 339
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->onLoadCanceled(Landroid/support/v4/content/Loader;)V

    .line 342
    :cond_1
    return-void
.end method

.method destroy()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 345
    sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Destroying: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z

    .line 347
    iget-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    .line 348
    .local v1, "needReset":Z
    iput-boolean v5, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    .line 349
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    .line 350
    sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Reseting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_1
    const/4 v0, 0x0

    .line 352
    .local v0, "lastBecause":Ljava/lang/String;
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    # getter for: Landroid/support/v4/app/LoaderManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
    invoke-static {v2}, Landroid/support/v4/app/LoaderManagerImpl;->access$000(Landroid/support/v4/app/LoaderManagerImpl;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 353
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    # getter for: Landroid/support/v4/app/LoaderManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
    invoke-static {v2}, Landroid/support/v4/app/LoaderManagerImpl;->access$000(Landroid/support/v4/app/LoaderManagerImpl;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v2

    iget-object v2, v2, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v2, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    .line 354
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    # getter for: Landroid/support/v4/app/LoaderManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
    invoke-static {v2}, Landroid/support/v4/app/LoaderManagerImpl;->access$000(Landroid/support/v4/app/LoaderManagerImpl;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v2

    iget-object v2, v2, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    const-string v3, "onLoaderReset"

    iput-object v3, v2, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    .line 357
    :cond_2
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    iget-object v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-interface {v2, v3}, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;->onLoaderReset(Landroid/support/v4/content/Loader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    # getter for: Landroid/support/v4/app/LoaderManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
    invoke-static {v2}, Landroid/support/v4/app/LoaderManagerImpl;->access$000(Landroid/support/v4/app/LoaderManagerImpl;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 360
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    # getter for: Landroid/support/v4/app/LoaderManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
    invoke-static {v2}, Landroid/support/v4/app/LoaderManagerImpl;->access$000(Landroid/support/v4/app/LoaderManagerImpl;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v2

    iget-object v2, v2, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object v0, v2, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    .line 364
    .end local v0    # "lastBecause":Ljava/lang/String;
    :cond_3
    iput-object v6, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 365
    iput-object v6, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    .line 366
    iput-boolean v5, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    .line 367
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    if-eqz v2, :cond_5

    .line 368
    iget-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    if-eqz v2, :cond_4

    .line 369
    iput-boolean v5, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    .line 370
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v2, p0}, Landroid/support/v4/content/Loader;->unregisterListener(Landroid/support/v4/content/Loader$OnLoadCompleteListener;)V

    .line 371
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v2, p0}, Landroid/support/v4/content/Loader;->unregisterOnLoadCanceledListener(Landroid/support/v4/content/Loader$OnLoadCanceledListener;)V

    .line 373
    :cond_4
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v2}, Landroid/support/v4/content/Loader;->reset()V

    .line 375
    :cond_5
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v2, :cond_6

    .line 376
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 378
    :cond_6
    return-void

    .line 359
    .restart local v0    # "lastBecause":Ljava/lang/String;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    # getter for: Landroid/support/v4/app/LoaderManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
    invoke-static {v3}, Landroid/support/v4/app/LoaderManagerImpl;->access$000(Landroid/support/v4/app/LoaderManagerImpl;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 360
    iget-object v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    # getter for: Landroid/support/v4/app/LoaderManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
    invoke-static {v3}, Landroid/support/v4/app/LoaderManagerImpl;->access$000(Landroid/support/v4/app/LoaderManagerImpl;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v3

    iget-object v3, v3, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object v0, v3, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    :cond_7
    throw v2
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 500
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 501
    const-string v0, " mArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 502
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCallbacks="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 503
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoader="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 504
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/content/Loader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 507
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    if-eqz v0, :cond_2

    .line 508
    :cond_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHaveData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 509
    const-string v0, "  mDeliveredData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 510
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mData="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 512
    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 513
    const-string v0, " mReportNextStart="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 514
    const-string v0, " mDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 515
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 516
    const-string v0, " mRetainingStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 517
    const-string v0, " mListenerRegistered="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 518
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v0, :cond_3

    .line 519
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Loader "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 523
    :cond_3
    return-void
.end method

.method finishRetain()V
    .locals 3

    .prologue
    .line 286
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    if-eqz v0, :cond_1

    .line 287
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Finished Retaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    .line 289
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    iget-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    if-eq v0, v1, :cond_1

    .line 290
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-nez v0, :cond_1

    .line 294
    invoke-virtual {p0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->stop()V

    .line 299
    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    if-nez v0, :cond_2

    .line 306
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    .line 308
    :cond_2
    return-void
.end method

.method public onLoadCanceled(Landroid/support/v4/content/Loader;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .line 382
    sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLoadCanceled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_0
    iget-boolean v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z

    if-eqz v1, :cond_2

    .line 385
    sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "LoaderManager"

    const-string v2, "  Ignoring load canceled -- destroyed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_1
    :goto_0
    return-void

    .line 389
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v1, v1, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    iget v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v1, v2}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p0, :cond_3

    .line 392
    sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "LoaderManager"

    const-string v2, "  Ignoring load canceled -- not active"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 396
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 397
    .local v0, "pending":Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    if-eqz v0, :cond_1

    .line 401
    sget-boolean v1, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "LoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Switching to pending loader: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_4
    iput-object v4, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 403
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v1, v1, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    iget v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v1, v2, v4}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 404
    invoke-virtual {p0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 405
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/LoaderManagerImpl;->installLoader(Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;)V

    goto :goto_0
.end method

.method public onLoadComplete(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 6
    .param p2, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "loader":Landroid/support/v4/content/Loader;, "Landroid/support/v4/content/Loader<Ljava/lang/Object;>;"
    const/4 v5, 0x0

    .line 411
    sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLoadComplete: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_0
    iget-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDestroyed:Z

    if-eqz v2, :cond_2

    .line 414
    sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "LoaderManager"

    const-string v3, "  Ignoring load complete -- destroyed"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_1
    :goto_0
    return-void

    .line 418
    :cond_2
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    iget v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v2, v3}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_3

    .line 421
    sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "LoaderManager"

    const-string v3, "  Ignoring load complete -- not active"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 425
    :cond_3
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 426
    .local v1, "pending":Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    if-eqz v1, :cond_5

    .line 430
    sget-boolean v2, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Switching to pending loader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_4
    iput-object v5, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 432
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mLoaders:Landroid/support/v4/util/SparseArrayCompat;

    iget v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v2, v3, v5}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 433
    invoke-virtual {p0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 434
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v2, v1}, Landroid/support/v4/app/LoaderManagerImpl;->installLoader(Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;)V

    goto :goto_0

    .line 440
    :cond_5
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    if-ne v2, p2, :cond_6

    iget-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-nez v2, :cond_7

    .line 441
    :cond_6
    iput-object p2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    .line 442
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    .line 443
    iget-boolean v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-eqz v2, :cond_7

    .line 444
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    .line 454
    :cond_7
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;

    iget v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v2, v3}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 455
    .local v0, "info":Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;
    if-eqz v0, :cond_8

    if-eq v0, p0, :cond_8

    .line 456
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    .line 457
    invoke-virtual {v0}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 458
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    iget-object v2, v2, Landroid/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Landroid/support/v4/util/SparseArrayCompat;

    iget v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v2, v3}, Landroid/support/v4/util/SparseArrayCompat;->remove(I)V

    .line 461
    :cond_8
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    # getter for: Landroid/support/v4/app/LoaderManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
    invoke-static {v2}, Landroid/support/v4/app/LoaderManagerImpl;->access$000(Landroid/support/v4/app/LoaderManagerImpl;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v2

    if-nez v2, :cond_1

    .line 462
    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->this$0:Landroid/support/v4/app/LoaderManagerImpl;

    # getter for: Landroid/support/v4/app/LoaderManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
    invoke-static {v2}, Landroid/support/v4/app/LoaderManagerImpl;->access$000(Landroid/support/v4/app/LoaderManagerImpl;)Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v2

    iget-object v2, v2, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    goto/16 :goto_0
.end method

.method reportStart()V
    .locals 2

    .prologue
    .line 311
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-eqz v0, :cond_0

    .line 312
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    if-eqz v0, :cond_0

    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    .line 314
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    .line 319
    :cond_0
    return-void
.end method

.method retain()V
    .locals 3

    .prologue
    .line 278
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Retaining: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    .line 280
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 283
    return-void
.end method

.method start()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 242
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetainingStarted:Z

    if-eqz v0, :cond_1

    .line 246
    iput-boolean v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-nez v0, :cond_0

    .line 255
    iput-boolean v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    .line 257
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Starting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    if-eqz v0, :cond_3

    .line 259
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    iget v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mArgs:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    .line 261
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 264
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_4
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    if-nez v0, :cond_5

    .line 269
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    iget v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v1, p0}, Landroid/support/v4/content/Loader;->registerListener(ILandroid/support/v4/content/Loader$OnLoadCompleteListener;)V

    .line 270
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/Loader;->registerOnLoadCanceledListener(Landroid/support/v4/content/Loader$OnLoadCanceledListener;)V

    .line 271
    iput-boolean v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    .line 273
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->startLoading()V

    goto/16 :goto_0
.end method

.method stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 322
    sget-boolean v0, Landroid/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Stopping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_0
    iput-boolean v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    .line 324
    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mRetaining:Z

    if-nez v0, :cond_1

    .line 325
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    if-eqz v0, :cond_1

    .line 327
    iput-boolean v3, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mListenerRegistered:Z

    .line 328
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/Loader;->unregisterListener(Landroid/support/v4/content/Loader$OnLoadCompleteListener;)V

    .line 329
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v0, p0}, Landroid/support/v4/content/Loader;->unregisterOnLoadCanceledListener(Landroid/support/v4/content/Loader$OnLoadCanceledListener;)V

    .line 330
    iget-object v0, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->stopLoading()V

    .line 333
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 489
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    iget v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 493
    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    iget-object v1, p0, Landroid/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Landroid/support/v4/content/Loader;

    invoke-static {v1, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 495
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
