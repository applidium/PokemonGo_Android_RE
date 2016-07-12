.class public final Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;
.super Ljava/lang/Object;
.source "BatchSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation


# instance fields
.field public final batch:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;

.field public final schema:Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;


# direct methods
.method public constructor <init>(Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;)V
    .locals 0
    .param p1, "batch"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;
    .param p2, "schema"    # Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;->batch:Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batch;

    .line 43
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender$Request;->schema:Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;

    .line 44
    return-void
.end method
