.class Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent$UpsightData;
.super Ljava/lang/Object;
.source "UpsightMilestoneEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpsightData"
.end annotation


# instance fields
.field scope:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "scope"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method protected constructor <init>(Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent$Builder;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    # getter for: Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent$Builder;->scope:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent$Builder;->access$000(Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent$UpsightData;->scope:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public getScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent$UpsightData;->scope:Ljava/lang/String;

    return-object v0
.end method
