.class public Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema$Default;
.super Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;
.source "Schema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# static fields
.field static final DEFAULT_REQUEST_ATTRIBUTES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema$Default$1;

    invoke-direct {v0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema$Default$1;-><init>()V

    sput-object v0, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema$Default;->DEFAULT_REQUEST_ATTRIBUTES:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/upsight/android/analytics/provider/UpsightDataProvider;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "dataProviders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/upsight/android/analytics/provider/UpsightDataProvider;>;"
    const/4 v1, 0x0

    .line 56
    sget-object v0, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema$Default;->DEFAULT_REQUEST_ATTRIBUTES:Ljava/util/Set;

    invoke-direct {p0, v1, v0, p1, v1}, Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;Lcom/upsight/android/analytics/internal/dispatcher/schema/Schema$1;)V

    .line 57
    return-void
.end method
