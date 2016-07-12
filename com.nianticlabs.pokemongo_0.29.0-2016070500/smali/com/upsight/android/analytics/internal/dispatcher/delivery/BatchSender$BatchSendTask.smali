.class Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;
.super Ljava/lang/Object;
.source "BatchSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatchSendTask"
.end annotation


# static fields
.field public static final NETWORK_ERROR:Ljava/lang/String; = "Network communication problems"


# instance fields
.field private mRequest:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;

.field final synthetic this$0:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;


# direct methods
.method public constructor <init>(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;)V
    .locals 0
    .param p2, "request"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;->mRequest:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;

    .line 294
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 298
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mUpsight:Lcom/upsight/android/UpsightContext;
    invoke-static {v0}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->access$000(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;)Lcom/upsight/android/UpsightContext;

    move-result-object v0

    invoke-static {v0}, Lcom/upsight/android/internal/util/NetworkHelper;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;->mRequest:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;

    sget-object v2, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;->NETWORK:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;

    const-string v3, "Network communication problems"

    # invokes: Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->sendFailed(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->access$100(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;Ljava/lang/String;)V

    .line 323
    :goto_0
    return-void

    .line 304
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mEndpoint:Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;
    invoke-static {v0}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->access$500(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;

    move-result-object v9

    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mUpsight:Lcom/upsight/android/UpsightContext;
    invoke-static {v1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->access$000(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;)Lcom/upsight/android/UpsightContext;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;->mRequest:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;
    invoke-static {v3}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->access$200(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v3

    iget-object v4, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mClock:Lcom/upsight/android/analytics/internal/session/Clock;
    invoke-static {v4}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->access$300(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;)Lcom/upsight/android/analytics/internal/session/Clock;

    move-result-object v4

    iget-object v5, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mLogger:Lcom/upsight/android/logger/UpsightLogger;
    invoke-static {v5}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->access$400(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;)Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;-><init>(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;Lcom/fasterxml/jackson/databind/ObjectMapper;Lcom/upsight/android/analytics/internal/session/Clock;Lcom/upsight/android/logger/UpsightLogger;)V

    invoke-virtual {v9, v0}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint;->send(Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightRequest;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint$Response;

    move-result-object v7

    .line 307
    .local v7, "resp":Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint$Response;
    const/4 v8, 0x0

    .line 308
    .local v8, "response":Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$Response;
    iget-object v0, v7, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint$Response;->body:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mResponseParser:Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser;
    invoke-static {v0}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->access$600(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser;

    move-result-object v0

    iget-object v1, v7, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint$Response;->body:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser;->parse(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$Response;

    move-result-object v8

    .line 310
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    iget-object v1, v8, Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$Response;->responses:Ljava/util/Collection;

    # invokes: Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->notifyResponseListener(Ljava/util/Collection;)V
    invoke-static {v0, v1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->access$700(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;Ljava/util/Collection;)V

    .line 313
    :cond_1
    invoke-virtual {v7}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint$Response;->isOk()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;->mRequest:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;

    # invokes: Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->sendSucceeded(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;)V
    invoke-static {v0, v1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->access$800(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 320
    .end local v7    # "resp":Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint$Response;
    .end local v8    # "response":Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$Response;
    :catch_0
    move-exception v6

    .line 321
    .local v6, "e":Ljava/io/IOException;
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;->mRequest:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;

    sget-object v2, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;->NETWORK:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;

    const-string v3, "Network communication problems"

    # invokes: Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->sendFailed(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->access$100(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;Ljava/lang/String;)V

    goto :goto_0

    .line 316
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v7    # "resp":Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint$Response;
    .restart local v8    # "response":Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$Response;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    # getter for: Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->mLogger:Lcom/upsight/android/logger/UpsightLogger;
    invoke-static {v0}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->access$400(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;)Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v0

    const-string v1, "BatchSender"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v7, Lcom/upsight/android/analytics/internal/dispatcher/delivery/UpsightEndpoint$Response;->statusCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " HTTP response code from server"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$BatchSendTask;->mRequest:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;

    sget-object v3, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;->SERVER:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;

    if-eqz v8, :cond_3

    iget-object v0, v8, Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$Response;->error:Ljava/lang/String;

    :goto_1
    # invokes: Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->sendFailed(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;Ljava/lang/String;)V
    invoke-static {v1, v2, v3, v0}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->access$100(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$FailReason;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
