.class Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$1;
.super Ljava/lang/Object;
.source "Batcher.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;


# direct methods
.method constructor <init>(Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$1;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$1;->this$0:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;

    # invokes: Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->sendCurrentBatch()V
    invoke-static {v0}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;->access$000(Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher;)V

    .line 144
    return-void
.end method
