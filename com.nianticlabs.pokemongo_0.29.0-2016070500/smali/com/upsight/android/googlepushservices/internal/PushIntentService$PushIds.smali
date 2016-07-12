.class Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;
.super Ljava/lang/Object;
.source "PushIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/googlepushservices/internal/PushIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PushIds"
.end annotation


# instance fields
.field final campaignId:Ljava/lang/Integer;

.field final contentId:Ljava/lang/Integer;

.field final messageId:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/upsight/android/googlepushservices/internal/PushIntentService;


# direct methods
.method private constructor <init>(Lcom/upsight/android/googlepushservices/internal/PushIntentService;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .param p2, "messageId"    # Ljava/lang/Integer;
    .param p3, "campaignId"    # Ljava/lang/Integer;
    .param p4, "contentId"    # Ljava/lang/Integer;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;->this$0:Lcom/upsight/android/googlepushservices/internal/PushIntentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput-object p2, p0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;->messageId:Ljava/lang/Integer;

    .line 292
    iput-object p3, p0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;->campaignId:Ljava/lang/Integer;

    .line 293
    iput-object p4, p0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;->contentId:Ljava/lang/Integer;

    .line 294
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/googlepushservices/internal/PushIntentService;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/upsight/android/googlepushservices/internal/PushIntentService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/googlepushservices/internal/PushIntentService;
    .param p2, "x1"    # Ljava/lang/Integer;
    .param p3, "x2"    # Ljava/lang/Integer;
    .param p4, "x3"    # Ljava/lang/Integer;
    .param p5, "x4"    # Lcom/upsight/android/googlepushservices/internal/PushIntentService$1;

    .prologue
    .line 285
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;-><init>(Lcom/upsight/android/googlepushservices/internal/PushIntentService;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method
