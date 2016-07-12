.class Lcom/upsight/android/analytics/internal/Analytics;
.super Ljava/lang/Object;
.source "Analytics.java"

# interfaces
.implements Lcom/upsight/android/analytics/UpsightAnalyticsApi;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final SEQUENCE_ID_FIELD_NAME:Ljava/lang/String; = "seq_id"

.field private static final USER_ATTRIBUTES_FIELD_NAME:Ljava/lang/String; = "user_attributes"


# instance fields
.field private final mAssociationManager:Lcom/upsight/android/analytics/internal/association/AssociationManager;

.field private final mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

.field private final mDefaultUserAttributes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mGooglePlayHelper:Lcom/upsight/android/analytics/UpsightGooglePlayHelper;

.field private final mLocationTracker:Lcom/upsight/android/analytics/provider/UpsightLocationTracker;

.field private final mLogger:Lcom/upsight/android/logger/UpsightLogger;

.field private final mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

.field private final mOptOutStatus:Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;

.field private final mSchemaSelector:Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;

.field private final mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;

.field private final mUpsight:Lcom/upsight/android/UpsightContext;

.field private final mUserAttributes:Lcom/upsight/android/analytics/provider/UpsightUserAttributes;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/upsight/android/analytics/internal/Analytics;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upsight/android/analytics/internal/Analytics;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/analytics/internal/session/SessionManager;Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;Lcom/upsight/android/analytics/internal/association/AssociationManager;Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;Lcom/upsight/android/analytics/provider/UpsightLocationTracker;Lcom/upsight/android/analytics/provider/UpsightUserAttributes;Lcom/upsight/android/analytics/UpsightGooglePlayHelper;)V
    .locals 1
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p2, "sessionManager"    # Lcom/upsight/android/analytics/internal/session/SessionManager;
    .param p3, "schemaSelector"    # Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;
    .param p4, "associationManager"    # Lcom/upsight/android/analytics/internal/association/AssociationManager;
    .param p5, "optOutStatus"    # Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;
    .param p6, "locationTracker"    # Lcom/upsight/android/analytics/provider/UpsightLocationTracker;
    .param p7, "userAttributes"    # Lcom/upsight/android/analytics/provider/UpsightUserAttributes;
    .param p8, "googlePlayHelper"    # Lcom/upsight/android/analytics/UpsightGooglePlayHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 82
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getDataStore()Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    .line 83
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/Analytics;->mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;

    .line 84
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;

    move-result-object v0

    invoke-interface {v0}, Lcom/upsight/android/UpsightCoreComponent;->objectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 85
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 86
    iput-object p3, p0, Lcom/upsight/android/analytics/internal/Analytics;->mSchemaSelector:Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;

    .line 87
    iput-object p4, p0, Lcom/upsight/android/analytics/internal/Analytics;->mAssociationManager:Lcom/upsight/android/analytics/internal/association/AssociationManager;

    .line 88
    iput-object p5, p0, Lcom/upsight/android/analytics/internal/Analytics;->mOptOutStatus:Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;

    .line 89
    iput-object p6, p0, Lcom/upsight/android/analytics/internal/Analytics;->mLocationTracker:Lcom/upsight/android/analytics/provider/UpsightLocationTracker;

    .line 90
    iput-object p7, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUserAttributes:Lcom/upsight/android/analytics/provider/UpsightUserAttributes;

    .line 91
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUserAttributes:Lcom/upsight/android/analytics/provider/UpsightUserAttributes;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->getDefault()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mDefaultUserAttributes:Ljava/util/Set;

    .line 92
    iput-object p8, p0, Lcom/upsight/android/analytics/internal/Analytics;->mGooglePlayHelper:Lcom/upsight/android/analytics/UpsightGooglePlayHelper;

    .line 93
    return-void
.end method

.method private appendAssociationData(Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;)V
    .locals 1
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "eventNode"    # Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mAssociationManager:Lcom/upsight/android/analytics/internal/association/AssociationManager;

    invoke-interface {v0, p1, p2}, Lcom/upsight/android/analytics/internal/association/AssociationManager;->associate(Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;)V

    .line 128
    return-void
.end method

.method private getAllAsJsonNode(Ljava/util/Set;)Lcom/fasterxml/jackson/databind/JsonNode;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/JsonNode;"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, "defaultUserAttributes":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;>;"
    sget-object v3, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->instance:Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v2

    .line 211
    .local v2, "o":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    .line 212
    .local v0, "entry":Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;
    const-class v3, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 213
    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUpsight:Lcom/upsight/android/UpsightContext;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.upsight.user_attribute."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getDefaultValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v5, v6, v3}, Lcom/upsight/android/internal/util/PreferencesHelper;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_0

    .line 216
    :cond_1
    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 217
    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUpsight:Lcom/upsight/android/UpsightContext;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.upsight.user_attribute."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getDefaultValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v5, v6, v3}, Lcom/upsight/android/internal/util/PreferencesHelper;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;I)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto :goto_0

    .line 220
    :cond_2
    const-class v3, Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 221
    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUpsight:Lcom/upsight/android/UpsightContext;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.upsight.user_attribute."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getDefaultValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v5, v6, v3}, Lcom/upsight/android/internal/util/PreferencesHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v4, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Z)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto/16 :goto_0

    .line 224
    :cond_3
    const-class v3, Ljava/lang/Float;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 225
    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUpsight:Lcom/upsight/android/UpsightContext;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.upsight.user_attribute."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getDefaultValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v5, v6, v3}, Lcom/upsight/android/internal/util/PreferencesHelper;->getFloat(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v3

    invoke-virtual {v2, v4, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;F)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    goto/16 :goto_0

    .line 230
    .end local v0    # "entry":Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;
    :cond_4
    return-object v2
.end method

.method private toJsonNode(Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 4
    .param p1, "event"    # Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/Analytics;->mObjectMapper:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->valueToTree(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 121
    .local v0, "node":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    const-string v1, "seq_id"

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v2}, Lcom/upsight/android/analytics/internal/EventSequenceId;->getAndIncrement(Landroid/content/Context;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;J)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 122
    const-string v1, "user_attributes"

    iget-object v2, p0, Lcom/upsight/android/analytics/internal/Analytics;->mDefaultUserAttributes:Ljava/util/Set;

    invoke-direct {p0, v2}, Lcom/upsight/android/analytics/internal/Analytics;->getAllAsJsonNode(Ljava/util/Set;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->put(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;

    .line 123
    return-object v0
.end method


# virtual methods
.method public getBooleanUserAttribute(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUserAttributes:Lcom/upsight/android/analytics/provider/UpsightUserAttributes;

    invoke-virtual {v0, p1}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultUserAttributes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUserAttributes:Lcom/upsight/android/analytics/provider/UpsightUserAttributes;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->getDefault()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getFloatUserAttribute(Ljava/lang/String;)Ljava/lang/Float;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUserAttributes:Lcom/upsight/android/analytics/provider/UpsightUserAttributes;

    invoke-virtual {v0, p1}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getIntUserAttribute(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUserAttributes:Lcom/upsight/android/analytics/provider/UpsightUserAttributes;

    invoke-virtual {v0, p1}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getOptOutStatus()Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mOptOutStatus:Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;->get()Z

    move-result v0

    return v0
.end method

.method public getStringUserAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUserAttributes:Lcom/upsight/android/analytics/provider/UpsightUserAttributes;

    invoke-virtual {v0, p1}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public purgeLocation()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mLocationTracker:Lcom/upsight/android/analytics/provider/UpsightLocationTracker;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightLocationTracker;->purge()V

    .line 153
    return-void
.end method

.method public putUserAttribute(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUserAttributes:Lcom/upsight/android/analytics/provider/UpsightUserAttributes;

    invoke-virtual {v0, p1, p2}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 168
    return-void
.end method

.method public putUserAttribute(Ljava/lang/String;Ljava/lang/Float;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Float;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUserAttributes:Lcom/upsight/android/analytics/provider/UpsightUserAttributes;

    invoke-virtual {v0, p1, p2}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 173
    return-void
.end method

.method public putUserAttribute(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Integer;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUserAttributes:Lcom/upsight/android/analytics/provider/UpsightUserAttributes;

    invoke-virtual {v0, p1, p2}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 163
    return-void
.end method

.method public putUserAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mUserAttributes:Lcom/upsight/android/analytics/provider/UpsightUserAttributes;

    invoke-virtual {v0, p1, p2}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public record(Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;)V
    .locals 16
    .param p1, "event"    # Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;

    .prologue
    .line 98
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/upsight/android/analytics/internal/Analytics;->mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;

    invoke-interface {v1}, Lcom/upsight/android/analytics/internal/session/SessionManager;->getCurrentSession()Lcom/upsight/android/analytics/internal/session/Session;

    move-result-object v11

    .line 99
    .local v11, "currentSession":Lcom/upsight/android/analytics/internal/session/Session;
    invoke-interface {v11}, Lcom/upsight/android/analytics/internal/session/Session;->getTimeStamp()J

    move-result-wide v2

    .line 100
    .local v2, "sessionStart":J
    invoke-interface {v11}, Lcom/upsight/android/analytics/internal/session/Session;->getMessageID()Ljava/lang/Integer;

    move-result-object v4

    .line 101
    .local v4, "messageID":Ljava/lang/Integer;
    invoke-interface {v11}, Lcom/upsight/android/analytics/internal/session/Session;->getCampaignID()Ljava/lang/Integer;

    move-result-object v5

    .line 102
    .local v5, "campaignID":Ljava/lang/Integer;
    invoke-interface {v11}, Lcom/upsight/android/analytics/internal/session/Session;->getSessionNumber()I

    move-result v6

    .line 103
    .local v6, "sessionNum":I
    invoke-interface {v11}, Lcom/upsight/android/analytics/internal/session/Session;->getPreviousTos()J

    move-result-wide v7

    .line 105
    .local v7, "prevTos":J
    invoke-direct/range {p0 .. p1}, Lcom/upsight/android/analytics/internal/Analytics;->toJsonNode(Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object v13

    .line 106
    .local v13, "eventNode":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    invoke-virtual/range {p1 .. p1}, Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;->getType()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v13}, Lcom/upsight/android/analytics/internal/Analytics;->appendAssociationData(Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;)V

    .line 108
    sget-object v1, Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;->Created:Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;

    invoke-virtual {v13}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v1 .. v10}, Lcom/upsight/android/analytics/internal/DataStoreRecord;->create(Lcom/upsight/android/analytics/internal/DataStoreRecord$Action;JLjava/lang/Integer;Ljava/lang/Integer;IJLjava/lang/String;Ljava/lang/String;)Lcom/upsight/android/analytics/internal/DataStoreRecord;

    move-result-object v14

    .line 110
    .local v14, "record":Lcom/upsight/android/analytics/internal/DataStoreRecord;
    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/upsight/android/analytics/internal/DynamicIdentifiers;

    if-eqz v1, :cond_0

    .line 111
    check-cast p1, Lcom/upsight/android/analytics/internal/DynamicIdentifiers;

    .end local p1    # "event":Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;
    invoke-interface/range {p1 .. p1}, Lcom/upsight/android/analytics/internal/DynamicIdentifiers;->getIdentifiersName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/upsight/android/analytics/internal/DataStoreRecord;->setIdentifiers(Ljava/lang/String;)V

    .line 113
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/upsight/android/analytics/internal/Analytics;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    invoke-interface {v1, v14}, Lcom/upsight/android/persistence/UpsightDataStore;->store(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v2    # "sessionStart":J
    .end local v4    # "messageID":Ljava/lang/Integer;
    .end local v5    # "campaignID":Ljava/lang/Integer;
    .end local v6    # "sessionNum":I
    .end local v7    # "prevTos":J
    .end local v11    # "currentSession":Lcom/upsight/android/analytics/internal/session/Session;
    .end local v13    # "eventNode":Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .end local v14    # "record":Lcom/upsight/android/analytics/internal/DataStoreRecord;
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v12

    .line 115
    .local v12, "e":Lcom/fasterxml/jackson/core/JsonProcessingException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/upsight/android/analytics/internal/Analytics;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    sget-object v9, Lcom/upsight/android/analytics/internal/Analytics;->LOG_TAG:Ljava/lang/String;

    const-string v10, "Failed to record event."

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-interface {v1, v9, v12, v10, v15}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public registerDataProvider(Lcom/upsight/android/analytics/provider/UpsightDataProvider;)V
    .locals 1
    .param p1, "provider"    # Lcom/upsight/android/analytics/provider/UpsightDataProvider;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mSchemaSelector:Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;

    invoke-virtual {v0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;->registerDataProvider(Lcom/upsight/android/analytics/provider/UpsightDataProvider;)V

    .line 143
    return-void
.end method

.method public setOptOutStatus(Z)V
    .locals 1
    .param p1, "optOut"    # Z

    .prologue
    .line 132
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mOptOutStatus:Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;

    invoke-virtual {v0, p1}, Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;->set(Z)V

    .line 133
    return-void
.end method

.method public trackLocation(Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;)V
    .locals 1
    .param p1, "locationData"    # Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/Analytics;->mLocationTracker:Lcom/upsight/android/analytics/provider/UpsightLocationTracker;

    invoke-virtual {v0, p1}, Lcom/upsight/android/analytics/provider/UpsightLocationTracker;->track(Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;)V

    .line 148
    return-void
.end method

.method public trackPurchase(ILjava/lang/String;DDLjava/lang/String;Landroid/content/Intent;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V
    .locals 11
    .param p1, "quantity"    # I
    .param p2, "currency"    # Ljava/lang/String;
    .param p3, "price"    # D
    .param p5, "totalPrice"    # D
    .param p7, "product"    # Ljava/lang/String;
    .param p8, "responseData"    # Landroid/content/Intent;
    .param p9, "publisherData"    # Lcom/upsight/android/analytics/event/UpsightPublisherData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/upsight/android/UpsightException;
        }
    .end annotation

    .prologue
    .line 203
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/Analytics;->mGooglePlayHelper:Lcom/upsight/android/analytics/UpsightGooglePlayHelper;

    move v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/upsight/android/analytics/UpsightGooglePlayHelper;->trackPurchase(ILjava/lang/String;DDLjava/lang/String;Landroid/content/Intent;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V

    .line 204
    return-void
.end method
