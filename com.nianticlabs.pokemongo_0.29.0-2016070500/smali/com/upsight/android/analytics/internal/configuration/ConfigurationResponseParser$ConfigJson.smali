.class public Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser$ConfigJson;
.super Ljava/lang/Object;
.source "ConfigurationResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigJson"
.end annotation


# instance fields
.field public configuration:Lcom/fasterxml/jackson/databind/JsonNode;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "configuration"
    .end annotation
.end field

.field public type:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
