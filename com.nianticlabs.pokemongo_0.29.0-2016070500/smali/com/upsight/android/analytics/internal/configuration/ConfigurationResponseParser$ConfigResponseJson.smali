.class public Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser$ConfigResponseJson;
.super Ljava/lang/Object;
.source "ConfigurationResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigResponseJson"
.end annotation


# instance fields
.field public configs:[Lcom/upsight/android/analytics/internal/configuration/ConfigurationResponseParser$ConfigJson;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "configurationList"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
