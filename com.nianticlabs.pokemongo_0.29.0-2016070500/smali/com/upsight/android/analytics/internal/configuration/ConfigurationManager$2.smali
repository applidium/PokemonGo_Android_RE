.class Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$2;
.super Ljava/lang/Object;
.source "ConfigurationManager.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;


# direct methods
.method constructor <init>(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$2;->this$0:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 234
    invoke-static {}, Lcom/upsight/android/analytics/event/config/UpsightConfigExpiredEvent;->createBuilder()Lcom/upsight/android/analytics/event/config/UpsightConfigExpiredEvent$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$2;->this$0:Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;

    # getter for: Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->mUpsight:Lcom/upsight/android/UpsightContext;
    invoke-static {v1}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;->access$400(Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;)Lcom/upsight/android/UpsightContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/event/config/UpsightConfigExpiredEvent$Builder;->record(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;

    .line 235
    return-void
.end method
