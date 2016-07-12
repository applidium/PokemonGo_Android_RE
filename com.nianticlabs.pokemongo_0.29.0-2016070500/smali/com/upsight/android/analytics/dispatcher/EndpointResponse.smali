.class public final Lcom/upsight/android/analytics/dispatcher/EndpointResponse;
.super Ljava/lang/Object;
.source "EndpointResponse.java"


# annotations
.annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableType;
    value = "upsight.dispatcher.response"
.end annotation


# instance fields
.field id:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation

    .annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableIdentifier;
    .end annotation
.end field

.field private mContent:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "content"
    .end annotation
.end field

.field private mType:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "type"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/upsight/android/analytics/dispatcher/EndpointResponse;->mType:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/upsight/android/analytics/dispatcher/EndpointResponse;->mContent:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lcom/upsight/android/analytics/dispatcher/EndpointResponse;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 18
    new-instance v0, Lcom/upsight/android/analytics/dispatcher/EndpointResponse;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/analytics/dispatcher/EndpointResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 55
    if-ne p0, p1, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v1

    .line 59
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 60
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 63
    check-cast v0, Lcom/upsight/android/analytics/dispatcher/EndpointResponse;

    .line 65
    .local v0, "that":Lcom/upsight/android/analytics/dispatcher/EndpointResponse;
    iget-object v3, p0, Lcom/upsight/android/analytics/dispatcher/EndpointResponse;->id:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/upsight/android/analytics/dispatcher/EndpointResponse;->id:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/upsight/android/analytics/dispatcher/EndpointResponse;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/upsight/android/analytics/dispatcher/EndpointResponse;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/upsight/android/analytics/dispatcher/EndpointResponse;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/upsight/android/analytics/dispatcher/EndpointResponse;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/upsight/android/analytics/dispatcher/EndpointResponse;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upsight/android/analytics/dispatcher/EndpointResponse;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
