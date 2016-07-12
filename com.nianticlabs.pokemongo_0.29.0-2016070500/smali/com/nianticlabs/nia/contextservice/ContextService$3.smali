.class Lcom/nianticlabs/nia/contextservice/ContextService$3;
.super Ljava/lang/Object;
.source "ContextService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticlabs/nia/contextservice/ContextService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticlabs/nia/contextservice/ContextService;


# direct methods
.method constructor <init>(Lcom/nianticlabs/nia/contextservice/ContextService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticlabs/nia/contextservice/ContextService;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/nianticlabs/nia/contextservice/ContextService$3;->this$0:Lcom/nianticlabs/nia/contextservice/ContextService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/nianticlabs/nia/contextservice/ContextService$3;->this$0:Lcom/nianticlabs/nia/contextservice/ContextService;

    invoke-virtual {v0}, Lcom/nianticlabs/nia/contextservice/ContextService;->onPause()V

    .line 216
    return-void
.end method
