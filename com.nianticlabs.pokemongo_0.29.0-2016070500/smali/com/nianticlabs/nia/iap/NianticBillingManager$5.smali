.class Lcom/nianticlabs/nia/iap/NianticBillingManager$5;
.super Ljava/lang/Object;
.source "NianticBillingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/nia/iap/NianticBillingManager;->onConnectionStateChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/nia/iap/NianticBillingManager;

.field final synthetic val$connected:Z


# direct methods
.method constructor <init>(Lcom/nianticlabs/nia/iap/NianticBillingManager;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticlabs/nia/iap/NianticBillingManager;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/nianticlabs/nia/iap/NianticBillingManager$5;->this$0:Lcom/nianticlabs/nia/iap/NianticBillingManager;

    iput-boolean p2, p0, Lcom/nianticlabs/nia/iap/NianticBillingManager$5;->val$connected:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/NianticBillingManager$5;->this$0:Lcom/nianticlabs/nia/iap/NianticBillingManager;

    # getter for: Lcom/nianticlabs/nia/iap/NianticBillingManager;->callbackLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/nianticlabs/nia/iap/NianticBillingManager;->access$200(Lcom/nianticlabs/nia/iap/NianticBillingManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/NianticBillingManager$5;->this$0:Lcom/nianticlabs/nia/iap/NianticBillingManager;

    iget-boolean v2, p0, Lcom/nianticlabs/nia/iap/NianticBillingManager$5;->val$connected:Z

    # invokes: Lcom/nianticlabs/nia/iap/NianticBillingManager;->nativeOnConnectionStateChanged(Z)V
    invoke-static {v0, v2}, Lcom/nianticlabs/nia/iap/NianticBillingManager;->access$300(Lcom/nianticlabs/nia/iap/NianticBillingManager;Z)V

    .line 95
    monitor-exit v1

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
