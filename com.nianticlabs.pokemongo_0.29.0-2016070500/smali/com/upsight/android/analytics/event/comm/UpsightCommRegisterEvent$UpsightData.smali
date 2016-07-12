.class Lcom/upsight/android/analytics/event/comm/UpsightCommRegisterEvent$UpsightData;
.super Ljava/lang/Object;
.source "UpsightCommRegisterEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/event/comm/UpsightCommRegisterEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpsightData"
.end annotation


# instance fields
.field token:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
        value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "token"
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method protected constructor <init>(Lcom/upsight/android/analytics/event/comm/UpsightCommRegisterEvent$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/upsight/android/analytics/event/comm/UpsightCommRegisterEvent$Builder;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    # getter for: Lcom/upsight/android/analytics/event/comm/UpsightCommRegisterEvent$Builder;->token:Ljava/lang/String;
    invoke-static {p1}, Lcom/upsight/android/analytics/event/comm/UpsightCommRegisterEvent$Builder;->access$000(Lcom/upsight/android/analytics/event/comm/UpsightCommRegisterEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommRegisterEvent$UpsightData;->token:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/upsight/android/analytics/event/comm/UpsightCommRegisterEvent$UpsightData;->token:Ljava/lang/String;

    return-object v0
.end method
