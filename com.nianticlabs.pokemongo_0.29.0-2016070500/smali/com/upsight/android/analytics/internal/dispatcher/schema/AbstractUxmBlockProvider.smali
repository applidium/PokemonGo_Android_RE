.class public abstract Lcom/upsight/android/analytics/internal/dispatcher/schema/AbstractUxmBlockProvider;
.super Lcom/upsight/android/analytics/provider/UpsightDataProvider;
.source "AbstractUxmBlockProvider.java"


# static fields
.field public static final BUNDLE_HASH:Ljava/lang/String; = "bundle.hash"

.field public static final BUNDLE_ID:Ljava/lang/String; = "bundle.id"

.field public static final BUNDLE_SCHEMA_HASH:Ljava/lang/String; = "bundle.schema_hash"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/upsight/android/analytics/provider/UpsightDataProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public availableKeys()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "bundle.schema_hash"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "bundle.id"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "bundle.hash"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public abstract getBundleHash()Ljava/lang/String;
.end method

.method public abstract getBundleId()Ljava/lang/String;
.end method

.method public abstract getBundleSchemaHash()Ljava/lang/String;
.end method
