.class Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$RetryTask;
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
    name = "RetryTask"
.end annotation


# instance fields
.field private mRequest:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;

.field final synthetic this$0:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;


# direct methods
.method public constructor <init>(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;)V
    .locals 0
    .param p2, "request"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$RetryTask;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$RetryTask;->mRequest:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;

    .line 275
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$RetryTask;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$RetryTask;->mRequest:Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;

    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;->submitRequest(Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;)V

    .line 280
    return-void
.end method
