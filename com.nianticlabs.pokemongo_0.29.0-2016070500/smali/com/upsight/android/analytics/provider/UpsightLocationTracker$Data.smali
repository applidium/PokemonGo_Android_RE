.class public final Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;
.super Ljava/lang/Object;
.source "UpsightLocationTracker.java"


# annotations
.annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableType;
    value = "upsight.model.location"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/provider/UpsightLocationTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Data"
.end annotation


# instance fields
.field id:Ljava/lang/String;
    .annotation runtime Lcom/upsight/android/persistence/annotation/UpsightStorableIdentifier;
    .end annotation
.end field

.field latitude:D
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field

.field longitude:D
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field

.field timeZone:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    return-void
.end method

.method private constructor <init>(DDLjava/lang/String;)V
    .locals 1
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-wide p1, p0, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->latitude:D

    .line 102
    iput-wide p3, p0, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->longitude:D

    .line 103
    iput-object p5, p0, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->timeZone:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public static create(DD)Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;
    .locals 8
    .param p0, "latitude"    # D
    .param p2, "longitude"    # D

    .prologue
    .line 95
    new-instance v1, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;

    const/4 v6, 0x0

    move-wide v2, p0

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;-><init>(DDLjava/lang/String;)V

    return-object v1
.end method

.method public static create(DDLjava/lang/String;)Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;
    .locals 8
    .param p0, "latitude"    # D
    .param p2, "longitude"    # D
    .param p4, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 85
    new-instance v1, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;

    move-wide v2, p0

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;-><init>(DDLjava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 170
    if-ne p0, p1, :cond_1

    .line 184
    :cond_0
    :goto_0
    return v1

    .line 174
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 175
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 178
    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;

    .line 180
    .local v0, "that":Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;
    iget-object v3, p0, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->id:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 181
    goto :goto_0

    .line 180
    :cond_4
    iget-object v3, v0, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->id:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->longitude:D

    return-wide v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->timeZone:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLatitude(D)V
    .locals 1
    .param p1, "latitude"    # D

    .prologue
    .line 143
    iput-wide p1, p0, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->latitude:D

    .line 144
    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .param p1, "longitude"    # D

    .prologue
    .line 152
    iput-wide p1, p0, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->longitude:D

    .line 153
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .param p1, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->timeZone:Ljava/lang/String;

    .line 166
    return-void
.end method
