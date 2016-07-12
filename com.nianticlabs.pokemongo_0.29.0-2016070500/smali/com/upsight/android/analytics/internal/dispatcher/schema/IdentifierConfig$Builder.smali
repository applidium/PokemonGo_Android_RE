.class public Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig$Builder;
.super Ljava/lang/Object;
.source "IdentifierConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private identifierFilters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private identifiers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig$Builder;->identifiers:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig$Builder;->identifierFilters:Ljava/util/Map;

    .line 29
    return-void
.end method

.method static synthetic access$100(Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig$Builder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig$Builder;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig$Builder;->identifiers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig$Builder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig$Builder;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig$Builder;->identifierFilters:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public addIdentifierFilter(Ljava/lang/String;Ljava/lang/String;)Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig$Builder;
    .locals 3
    .param p1, "filter"    # Ljava/lang/String;
    .param p2, "identifiers"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig$Builder;->identifierFilters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Identifier filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig$Builder;->identifierFilters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-object p0
.end method

.method public addIdentifiers(Ljava/lang/String;Ljava/util/Set;)Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig$Builder;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig$Builder;"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig$Builder;->identifiers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Identifiers name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig$Builder;->identifiers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-object p0
.end method

.method public build()Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig;-><init>(Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig$Builder;Lcom/upsight/android/analytics/internal/dispatcher/schema/IdentifierConfig$1;)V

    return-object v0
.end method
