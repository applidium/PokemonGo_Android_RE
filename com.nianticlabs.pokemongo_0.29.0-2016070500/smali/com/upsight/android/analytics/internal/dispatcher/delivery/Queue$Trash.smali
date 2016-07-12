.class public final Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue$Trash;
.super Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue;
.source "Queue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Trash"
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "trash"


# instance fields
.field private mOnDeliveryListener:Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnDeliveryListener;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 32
    const-string v1, "trash"

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue;-><init>(Ljava/lang/String;Lcom/upsight/android/analytics/internal/dispatcher/util/Selector;Lcom/upsight/android/analytics/internal/dispatcher/util/Selector;Lcom/upsight/android/analytics/internal/dispatcher/delivery/Batcher$Factory;Lcom/upsight/android/analytics/internal/dispatcher/delivery/BatchSender;)V

    .line 33
    return-void
.end method


# virtual methods
.method public enqueuePacket(Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;)V
    .locals 1
    .param p1, "packet"    # Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;

    .prologue
    .line 48
    invoke-virtual {p1}, Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;->markTrashed()V

    .line 51
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue$Trash;->mOnDeliveryListener:Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnDeliveryListener;

    .line 52
    .local v0, "listener":Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnDeliveryListener;
    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnDeliveryListener;->onDelivery(Lcom/upsight/android/analytics/internal/dispatcher/routing/Packet;)V

    .line 55
    :cond_0
    return-void
.end method

.method public setOnDeliveryListener(Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnDeliveryListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnDeliveryListener;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/Queue$Trash;->mOnDeliveryListener:Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnDeliveryListener;

    .line 38
    return-void
.end method

.method public setOnResponseListener(Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnResponseListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/OnResponseListener;

    .prologue
    .line 43
    return-void
.end method
