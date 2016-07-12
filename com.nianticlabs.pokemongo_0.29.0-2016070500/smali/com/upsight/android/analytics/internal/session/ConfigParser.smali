.class Lcom/upsight/android/analytics/internal/session/ConfigParser;
.super Ljava/lang/Object;
.source "ConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/session/ConfigParser$ConfigJson;
    }
.end annotation


# instance fields
.field private mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 0
    .param p1, "mapper"    # Lcom/fasterxml/jackson/databind/ObjectMapper;
        .annotation runtime Ljavax/inject/Named;
            value = "config-mapper"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/session/ConfigParser;->mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 26
    return-void
.end method


# virtual methods
.method public parseConfig(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;
    .locals 4
    .param p1, "configContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/ConfigParser;->mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v2, Lcom/upsight/android/analytics/internal/session/ConfigParser$ConfigJson;

    invoke-virtual {v1, p1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/session/ConfigParser$ConfigJson;

    .line 38
    .local v0, "configJson":Lcom/upsight/android/analytics/internal/session/ConfigParser$ConfigJson;
    new-instance v1, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;

    iget v2, v0, Lcom/upsight/android/analytics/internal/session/ConfigParser$ConfigJson;->session_gap:I

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl$Config;-><init>(J)V

    return-object v1
.end method
