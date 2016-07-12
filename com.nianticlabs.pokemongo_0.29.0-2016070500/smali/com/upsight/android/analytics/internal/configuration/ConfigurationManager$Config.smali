.class public final Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;
.super Ljava/lang/Object;
.source "ConfigurationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation


# instance fields
.field public final requestInterval:J


# direct methods
.method constructor <init>(J)V
    .locals 1
    .param p1, "requestInterval"    # J

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-wide p1, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;->requestInterval:J

    .line 48
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    if-ne p0, p1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v1

    .line 67
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 68
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 71
    check-cast v0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;

    .line 73
    .local v0, "that":Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;
    iget-wide v4, v0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;->requestInterval:J

    iget-wide v6, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;->requestInterval:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public isValid()Z
    .locals 4

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationManager$Config;->requestInterval:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
