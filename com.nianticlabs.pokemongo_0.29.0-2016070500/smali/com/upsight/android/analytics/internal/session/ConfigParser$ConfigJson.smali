.class public Lcom/upsight/android/analytics/internal/session/ConfigParser$ConfigJson;
.super Ljava/lang/Object;
.source "ConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/session/ConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigJson"
.end annotation


# instance fields
.field public session_gap:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "session_gap"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
