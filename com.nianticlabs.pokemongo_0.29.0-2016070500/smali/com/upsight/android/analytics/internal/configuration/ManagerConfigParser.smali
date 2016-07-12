.class public Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;
.super Ljava/lang/Object;
.source "ManagerConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser$ConfigJson;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;


# direct methods
.method constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 0
    .param p1, "mapper"    # Lcom/fasterxml/jackson/databind/ObjectMapper;
        .annotation runtime Ljavax/inject/Named;
            value = "config-mapper"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;->mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 29
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;
    .locals 6
    .param p1, "configJson"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser;->mMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    const-class v2, Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser$ConfigJson;

    invoke-virtual {v1, p1, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser$ConfigJson;

    .line 42
    .local v0, "config":Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser$ConfigJson;
    new-instance v1, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, v0, Lcom/upsight/android/analytics/internal/configuration/ManagerConfigParser$ConfigJson;->requestInterval:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;-><init>(J)V

    return-object v1
.end method
