.class public Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$Response;
.super Ljava/lang/Object;
.source "ResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# instance fields
.field public final error:Ljava/lang/String;

.field public final responses:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/upsight/android/analytics/dispatcher/EndpointResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;Ljava/lang/String;)V
    .locals 0
    .param p2, "error"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/upsight/android/analytics/dispatcher/EndpointResponse;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "responses":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/upsight/android/analytics/dispatcher/EndpointResponse;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$Response;->responses:Ljava/util/Collection;

    .line 42
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/ResponseParser$Response;->error:Ljava/lang/String;

    .line 43
    return-void
.end method
