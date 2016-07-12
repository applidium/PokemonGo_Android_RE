.class Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$Logger;
.super Ljava/lang/Object;
.source "GoogleInAppBillingProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Logger"
.end annotation


# instance fields
.field private final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/Class;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$Logger;->tag:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method assertOnServiceThread(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-static {}, Lcom/nianticlabs/nia/contextservice/ContextService;->onServiceThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$Logger;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Must be on the service thread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "error":Ljava/lang/String;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/nianticlabs/nia/iap/GoogleInAppBillingProvider$Logger;->severe(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    .end local v0    # "error":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method varargs dev(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 65
    return-void
.end method

.method varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 55
    return-void
.end method

.method varargs severe(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 60
    return-void
.end method

.method varargs warning(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 50
    return-void
.end method
