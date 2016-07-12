.class Lcom/nianticlabs/nia/iap/NianticBillingManager$1;
.super Ljava/lang/Object;
.source "NianticBillingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticlabs/nia/iap/NianticBillingManager;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/nia/iap/NianticBillingManager;


# direct methods
.method constructor <init>(Lcom/nianticlabs/nia/iap/NianticBillingManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticlabs/nia/iap/NianticBillingManager;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/nianticlabs/nia/iap/NianticBillingManager$1;->this$0:Lcom/nianticlabs/nia/iap/NianticBillingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nianticlabs/nia/iap/NianticBillingManager$1;->this$0:Lcom/nianticlabs/nia/iap/NianticBillingManager;

    # invokes: Lcom/nianticlabs/nia/iap/NianticBillingManager;->nativeInitializeCallback()V
    invoke-static {v0}, Lcom/nianticlabs/nia/iap/NianticBillingManager;->access$000(Lcom/nianticlabs/nia/iap/NianticBillingManager;)V

    .line 48
    return-void
.end method
