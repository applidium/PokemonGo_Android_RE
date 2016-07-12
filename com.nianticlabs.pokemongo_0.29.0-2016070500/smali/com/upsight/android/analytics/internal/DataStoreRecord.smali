.class public final Lcom/upsight/android/analytics/internal/DataStoreRecord;
.super Ljava/lang/Object;
.source "DataStoreRecord.java"


# annotations
.annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableType;
    value = "upsight.datastore.record"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;
    }
.end annotation


# instance fields
.field action:Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "action"
    .end annotation
.end field

.field campaignID:Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "campaign_id"
    .end annotation
.end field

.field id:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation

    .annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableIdentifier;
    .end annotation
.end field

.field identifiers:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "identifiers"
    .end annotation
.end field

.field messageID:Ljava/lang/Integer;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "message_id"
    .end annotation
.end field

.field pastSessionTime:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "past_session_time"
    .end annotation
.end field

.field sessionID:J
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "session_id"
    .end annotation
.end field

.field sessionNumber:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "session_num"
    .end annotation
.end field

.field source:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "source"
    .end annotation
.end field

.field sourceType:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "source_type"
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method private constructor <init>(Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;JLjava/lang/Integer;Ljava/lang/Integer;IJLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;
    .param p2, "sessionID"    # J
    .param p4, "messageID"    # Ljava/lang/Integer;
    .param p5, "campaignID"    # Ljava/lang/Integer;
    .param p6, "sessionNumber"    # I
    .param p7, "pastSessionTime"    # J
    .param p9, "source"    # Ljava/lang/String;
    .param p10, "sourceType"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->action:Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;

    .line 92
    iput-wide p2, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->sessionID:J

    .line 93
    iput-object p4, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->messageID:Ljava/lang/Integer;

    .line 94
    iput-object p5, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->campaignID:Ljava/lang/Integer;

    .line 95
    iput-object p9, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->source:Ljava/lang/String;

    .line 96
    iput-object p10, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->sourceType:Ljava/lang/String;

    .line 97
    iput p6, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->sessionNumber:I

    .line 98
    iput-wide p7, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->pastSessionTime:J

    .line 99
    return-void
.end method

.method public static create(Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;JIJLjava/lang/String;Ljava/lang/String;)Lcom/upsight/android/analytics/internal/DataStoreRecord;
    .locals 10
    .param p0, "action"    # Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;
    .param p1, "sessionID"    # J
    .param p3, "sessionNumber"    # I
    .param p4, "pastSessionTime"    # J
    .param p6, "source"    # Ljava/lang/String;
    .param p7, "sourceType"    # Ljava/lang/String;

    .prologue
    .line 36
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-static/range {v0 .. v9}, Lcom/upsight/android/analytics/internal/DataStoreRecord;->create(Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;JLjava/lang/Integer;Ljava/lang/Integer;IJLjava/lang/String;Ljava/lang/String;)Lcom/upsight/android/analytics/internal/DataStoreRecord;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;JLjava/lang/Integer;Ljava/lang/Integer;IJLjava/lang/String;Ljava/lang/String;)Lcom/upsight/android/analytics/internal/DataStoreRecord;
    .locals 11
    .param p0, "action"    # Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;
    .param p1, "sessionID"    # J
    .param p3, "messageID"    # Ljava/lang/Integer;
    .param p4, "campaignID"    # Ljava/lang/Integer;
    .param p5, "sessionNumber"    # I
    .param p6, "pastSessionTime"    # J
    .param p8, "source"    # Ljava/lang/String;
    .param p9, "sourceType"    # Ljava/lang/String;

    .prologue
    .line 27
    new-instance v0, Lcom/upsight/android/analytics/internal/DataStoreRecord;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/upsight/android/analytics/internal/DataStoreRecord;-><init>(Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;JLjava/lang/Integer;Ljava/lang/Integer;IJLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 103
    if-ne p0, p1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v1

    .line 104
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 106
    check-cast v0, Lcom/upsight/android/analytics/internal/DataStoreRecord;

    .line 108
    .local v0, "that":Lcom/upsight/android/analytics/internal/DataStoreRecord;
    iget-object v3, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->id:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, v0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->id:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getAction()Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->action:Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;

    return-object v0
.end method

.method public getCampaignID()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->campaignID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifiers()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->identifiers:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageID()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->messageID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPastSessionTime()J
    .locals 2

    .prologue
    .line 139
    iget-wide v0, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->pastSessionTime:J

    return-wide v0
.end method

.method public getSessionID()J
    .locals 2

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->sessionID:J

    return-wide v0
.end method

.method public getSessionNumber()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->sessionNumber:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->sourceType:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIdentifiers(Ljava/lang/String;)V
    .locals 0
    .param p1, "identifiers"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/DataStoreRecord;->identifiers:Ljava/lang/String;

    .line 156
    return-void
.end method
