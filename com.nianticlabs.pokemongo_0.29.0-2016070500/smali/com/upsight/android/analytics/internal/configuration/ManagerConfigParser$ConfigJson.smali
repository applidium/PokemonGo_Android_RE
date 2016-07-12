.class public Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser$ConfigJson;
.super Ljava/lang/Object;
.source "ManagerConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigJson"
.end annotation


# instance fields
.field public requestInterval:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "requestInterval"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
