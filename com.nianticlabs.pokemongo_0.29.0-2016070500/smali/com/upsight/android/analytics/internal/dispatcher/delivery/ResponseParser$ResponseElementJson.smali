.class public Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$ResponseElementJson;
.super Ljava/lang/Object;
.source "ResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResponseElementJson"
.end annotation


# instance fields
.field public content:Lcom/fasterxml/jackson/databind/JsonNode;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "content"
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
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
