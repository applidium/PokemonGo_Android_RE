.class public Lcom/upsight/android/analytics/internal/association/Association$UpsightDataFilter;
.super Ljava/lang/Object;
.source "Association.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/association/Association;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpsightDataFilter"
.end annotation


# instance fields
.field matchKey:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "match_key"
    .end annotation
.end field

.field matchValues:Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "match_values"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMatchKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/association/Association$UpsightDataFilter;->matchKey:Ljava/lang/String;

    return-object v0
.end method

.method public getMatchValues()Lcom/fasterxml/jackson/databind/node/ArrayNode;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/association/Association$UpsightDataFilter;->matchValues:Lcom/fasterxml/jackson/databind/node/ArrayNode;

    return-object v0
.end method
