.class public final Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerAnalyticsComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private analyticsApiModule:Lcom/upsight/android/analytics/internal/AnalyticsApiModule;

.field private analyticsModule:Lcom/upsight/android/analytics/internal/AnalyticsModule;

.field private analyticsSchedulersModule:Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule;

.field private associationModule:Lcom/upsight/android/analytics/internal/association/AssociationModule;

.field private baseAnalyticsModule:Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;

.field private configObjectMapperModule:Lcom/upsight/android/analytics/internal/ConfigObjectMapperModule;

.field private configurationModule:Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule;

.field private deliveryModule:Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;

.field private dispatchModule:Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule;

.field private lifecycleTrackerModule:Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule;

.field private providerModule:Lcom/upsight/android/analytics/internal/provider/ProviderModule;

.field private routingModule:Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingModule;

.field private schemaModule:Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaModule;

.field private sessionModule:Lcom/upsight/android/analytics/internal/session/SessionModule;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$1;

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->baseAnalyticsModule:Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->analyticsSchedulersModule:Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->deliveryModule:Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->routingModule:Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingModule;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->dispatchModule:Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/ConfigObjectMapperModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->configObjectMapperModule:Lcom/upsight/android/analytics/internal/ConfigObjectMapperModule;

    return-object v0
.end method

.method static synthetic access$300(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/session/SessionModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->sessionModule:Lcom/upsight/android/analytics/internal/session/SessionModule;

    return-object v0
.end method

.method static synthetic access$400(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->schemaModule:Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaModule;

    return-object v0
.end method

.method static synthetic access$500(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/association/AssociationModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->associationModule:Lcom/upsight/android/analytics/internal/association/AssociationModule;

    return-object v0
.end method

.method static synthetic access$600(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/provider/ProviderModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->providerModule:Lcom/upsight/android/analytics/internal/provider/ProviderModule;

    return-object v0
.end method

.method static synthetic access$700(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/AnalyticsApiModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->analyticsApiModule:Lcom/upsight/android/analytics/internal/AnalyticsApiModule;

    return-object v0
.end method

.method static synthetic access$800(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->lifecycleTrackerModule:Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule;

    return-object v0
.end method

.method static synthetic access$900(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;)Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->configurationModule:Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule;

    return-object v0
.end method


# virtual methods
.method public analyticsApiModule(Lcom/upsight/android/analytics/internal/AnalyticsApiModule;)Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;
    .locals 2
    .param p1, "analyticsApiModule"    # Lcom/upsight/android/analytics/internal/AnalyticsApiModule;

    .prologue
    .line 243
    if-nez p1, :cond_0

    .line 244
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "analyticsApiModule"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->analyticsApiModule:Lcom/upsight/android/analytics/internal/AnalyticsApiModule;

    .line 247
    return-object p0
.end method

.method public analyticsModule(Lcom/upsight/android/analytics/internal/AnalyticsModule;)Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;
    .locals 2
    .param p1, "analyticsModule"    # Lcom/upsight/android/analytics/internal/AnalyticsModule;

    .prologue
    .line 235
    if-nez p1, :cond_0

    .line 236
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "analyticsModule"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->analyticsModule:Lcom/upsight/android/analytics/internal/AnalyticsModule;

    .line 239
    return-object p0
.end method

.method public analyticsSchedulersModule(Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule;)Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;
    .locals 2
    .param p1, "analyticsSchedulersModule"    # Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule;

    .prologue
    .line 251
    if-nez p1, :cond_0

    .line 252
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "analyticsSchedulersModule"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->analyticsSchedulersModule:Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule;

    .line 255
    return-object p0
.end method

.method public associationModule(Lcom/upsight/android/analytics/internal/association/AssociationModule;)Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;
    .locals 2
    .param p1, "associationModule"    # Lcom/upsight/android/analytics/internal/association/AssociationModule;

    .prologue
    .line 331
    if-nez p1, :cond_0

    .line 332
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "associationModule"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->associationModule:Lcom/upsight/android/analytics/internal/association/AssociationModule;

    .line 335
    return-object p0
.end method

.method public baseAnalyticsModule(Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;)Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;
    .locals 2
    .param p1, "baseAnalyticsModule"    # Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;

    .prologue
    .line 339
    if-nez p1, :cond_0

    .line 340
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "baseAnalyticsModule"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->baseAnalyticsModule:Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;

    .line 343
    return-object p0
.end method

.method public build()Lcom/upsight/android/analytics/internal/AnalyticsComponent;
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->analyticsModule:Lcom/upsight/android/analytics/internal/AnalyticsModule;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Lcom/upsight/android/analytics/internal/AnalyticsModule;

    invoke-direct {v0}, Lcom/upsight/android/analytics/internal/AnalyticsModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->analyticsModule:Lcom/upsight/android/analytics/internal/AnalyticsModule;

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->analyticsApiModule:Lcom/upsight/android/analytics/internal/AnalyticsApiModule;

    if-nez v0, :cond_1

    .line 193
    new-instance v0, Lcom/upsight/android/analytics/internal/AnalyticsApiModule;

    invoke-direct {v0}, Lcom/upsight/android/analytics/internal/AnalyticsApiModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->analyticsApiModule:Lcom/upsight/android/analytics/internal/AnalyticsApiModule;

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->analyticsSchedulersModule:Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule;

    if-nez v0, :cond_2

    .line 196
    new-instance v0, Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule;

    invoke-direct {v0}, Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->analyticsSchedulersModule:Lcom/upsight/android/analytics/internal/AnalyticsSchedulersModule;

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->configObjectMapperModule:Lcom/upsight/android/analytics/internal/ConfigObjectMapperModule;

    if-nez v0, :cond_3

    .line 199
    new-instance v0, Lcom/upsight/android/analytics/internal/ConfigObjectMapperModule;

    invoke-direct {v0}, Lcom/upsight/android/analytics/internal/ConfigObjectMapperModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->configObjectMapperModule:Lcom/upsight/android/analytics/internal/ConfigObjectMapperModule;

    .line 201
    :cond_3
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->dispatchModule:Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule;

    if-nez v0, :cond_4

    .line 202
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule;

    invoke-direct {v0}, Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->dispatchModule:Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule;

    .line 204
    :cond_4
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->deliveryModule:Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;

    if-nez v0, :cond_5

    .line 205
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;

    invoke-direct {v0}, Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->deliveryModule:Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;

    .line 207
    :cond_5
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->routingModule:Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingModule;

    if-nez v0, :cond_6

    .line 208
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingModule;

    invoke-direct {v0}, Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->routingModule:Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingModule;

    .line 210
    :cond_6
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->schemaModule:Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaModule;

    if-nez v0, :cond_7

    .line 211
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaModule;

    invoke-direct {v0}, Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->schemaModule:Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaModule;

    .line 213
    :cond_7
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->configurationModule:Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule;

    if-nez v0, :cond_8

    .line 214
    new-instance v0, Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule;

    invoke-direct {v0}, Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->configurationModule:Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule;

    .line 216
    :cond_8
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->sessionModule:Lcom/upsight/android/analytics/internal/session/SessionModule;

    if-nez v0, :cond_9

    .line 217
    new-instance v0, Lcom/upsight/android/analytics/internal/session/SessionModule;

    invoke-direct {v0}, Lcom/upsight/android/analytics/internal/session/SessionModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->sessionModule:Lcom/upsight/android/analytics/internal/session/SessionModule;

    .line 219
    :cond_9
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->lifecycleTrackerModule:Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule;

    if-nez v0, :cond_a

    .line 220
    new-instance v0, Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule;

    invoke-direct {v0}, Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->lifecycleTrackerModule:Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule;

    .line 222
    :cond_a
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->providerModule:Lcom/upsight/android/analytics/internal/provider/ProviderModule;

    if-nez v0, :cond_b

    .line 223
    new-instance v0, Lcom/upsight/android/analytics/internal/provider/ProviderModule;

    invoke-direct {v0}, Lcom/upsight/android/analytics/internal/provider/ProviderModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->providerModule:Lcom/upsight/android/analytics/internal/provider/ProviderModule;

    .line 225
    :cond_b
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->associationModule:Lcom/upsight/android/analytics/internal/association/AssociationModule;

    if-nez v0, :cond_c

    .line 226
    new-instance v0, Lcom/upsight/android/analytics/internal/association/AssociationModule;

    invoke-direct {v0}, Lcom/upsight/android/analytics/internal/association/AssociationModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->associationModule:Lcom/upsight/android/analytics/internal/association/AssociationModule;

    .line 228
    :cond_c
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->baseAnalyticsModule:Lcom/upsight/android/analytics/internal/BaseAnalyticsModule;

    if-nez v0, :cond_d

    .line 229
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "baseAnalyticsModule must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_d
    new-instance v0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent;-><init>(Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$1;)V

    return-object v0
.end method

.method public configObjectMapperModule(Lcom/upsight/android/analytics/internal/ConfigObjectMapperModule;)Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;
    .locals 2
    .param p1, "configObjectMapperModule"    # Lcom/upsight/android/analytics/internal/ConfigObjectMapperModule;

    .prologue
    .line 259
    if-nez p1, :cond_0

    .line 260
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "configObjectMapperModule"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->configObjectMapperModule:Lcom/upsight/android/analytics/internal/ConfigObjectMapperModule;

    .line 263
    return-object p0
.end method

.method public configurationModule(Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule;)Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;
    .locals 2
    .param p1, "configurationModule"    # Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule;

    .prologue
    .line 299
    if-nez p1, :cond_0

    .line 300
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "configurationModule"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->configurationModule:Lcom/upsight/android/analytics/internal/configuration/ConfigurationModule;

    .line 303
    return-object p0
.end method

.method public deliveryModule(Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;)Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;
    .locals 2
    .param p1, "deliveryModule"    # Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;

    .prologue
    .line 275
    if-nez p1, :cond_0

    .line 276
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "deliveryModule"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->deliveryModule:Lcom/upsight/android/analytics/internal/dispatcher/delivery/DeliveryModule;

    .line 279
    return-object p0
.end method

.method public dispatchModule(Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule;)Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;
    .locals 2
    .param p1, "dispatchModule"    # Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule;

    .prologue
    .line 267
    if-nez p1, :cond_0

    .line 268
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dispatchModule"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->dispatchModule:Lcom/upsight/android/analytics/internal/dispatcher/DispatchModule;

    .line 271
    return-object p0
.end method

.method public lifecycleTrackerModule(Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule;)Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;
    .locals 2
    .param p1, "lifecycleTrackerModule"    # Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule;

    .prologue
    .line 315
    if-nez p1, :cond_0

    .line 316
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "lifecycleTrackerModule"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->lifecycleTrackerModule:Lcom/upsight/android/analytics/internal/session/LifecycleTrackerModule;

    .line 319
    return-object p0
.end method

.method public providerModule(Lcom/upsight/android/analytics/internal/provider/ProviderModule;)Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;
    .locals 2
    .param p1, "providerModule"    # Lcom/upsight/android/analytics/internal/provider/ProviderModule;

    .prologue
    .line 323
    if-nez p1, :cond_0

    .line 324
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "providerModule"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->providerModule:Lcom/upsight/android/analytics/internal/provider/ProviderModule;

    .line 327
    return-object p0
.end method

.method public routingModule(Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingModule;)Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;
    .locals 2
    .param p1, "routingModule"    # Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingModule;

    .prologue
    .line 283
    if-nez p1, :cond_0

    .line 284
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "routingModule"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->routingModule:Lcom/upsight/android/analytics/internal/dispatcher/routing/RoutingModule;

    .line 287
    return-object p0
.end method

.method public schemaModule(Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaModule;)Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;
    .locals 2
    .param p1, "schemaModule"    # Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaModule;

    .prologue
    .line 291
    if-nez p1, :cond_0

    .line 292
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "schemaModule"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->schemaModule:Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaModule;

    .line 295
    return-object p0
.end method

.method public sessionModule(Lcom/upsight/android/analytics/internal/session/SessionModule;)Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;
    .locals 2
    .param p1, "sessionModule"    # Lcom/upsight/android/analytics/internal/session/SessionModule;

    .prologue
    .line 307
    if-nez p1, :cond_0

    .line 308
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sessionModule"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/DaggerAnalyticsComponent$Builder;->sessionModule:Lcom/upsight/android/analytics/internal/session/SessionModule;

    .line 311
    return-object p0
.end method
