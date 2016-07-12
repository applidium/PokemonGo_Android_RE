.class public final Lcom/upsight/android/internal/DaggerCoreComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerCoreComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/internal/DaggerCoreComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private contextModule:Lcom/upsight/android/internal/ContextModule;

.field private coreModule:Lcom/upsight/android/internal/CoreModule;

.field private loggerModule:Lcom/upsight/android/internal/logger/LoggerModule;

.field private objectMapperModule:Lcom/upsight/android/internal/ObjectMapperModule;

.field private persistenceModule:Lcom/upsight/android/internal/persistence/PersistenceModule;

.field private propertiesModule:Lcom/upsight/android/internal/PropertiesModule;

.field private schedulersModule:Lcom/upsight/android/internal/SchedulersModule;

.field private storableModule:Lcom/upsight/android/internal/persistence/storable/StorableModule;

.field private upsightContextModule:Lcom/upsight/android/internal/UpsightContextModule;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/internal/DaggerCoreComponent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/internal/DaggerCoreComponent$1;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/ContextModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/internal/DaggerCoreComponent$Builder;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->contextModule:Lcom/upsight/android/internal/ContextModule;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/ObjectMapperModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/internal/DaggerCoreComponent$Builder;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->objectMapperModule:Lcom/upsight/android/internal/ObjectMapperModule;

    return-object v0
.end method

.method static synthetic access$300(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/persistence/storable/StorableModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/internal/DaggerCoreComponent$Builder;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->storableModule:Lcom/upsight/android/internal/persistence/storable/StorableModule;

    return-object v0
.end method

.method static synthetic access$400(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/SchedulersModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/internal/DaggerCoreComponent$Builder;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->schedulersModule:Lcom/upsight/android/internal/SchedulersModule;

    return-object v0
.end method

.method static synthetic access$500(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/persistence/PersistenceModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/internal/DaggerCoreComponent$Builder;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->persistenceModule:Lcom/upsight/android/internal/persistence/PersistenceModule;

    return-object v0
.end method

.method static synthetic access$600(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/logger/LoggerModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/internal/DaggerCoreComponent$Builder;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->loggerModule:Lcom/upsight/android/internal/logger/LoggerModule;

    return-object v0
.end method

.method static synthetic access$700(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/PropertiesModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/internal/DaggerCoreComponent$Builder;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->propertiesModule:Lcom/upsight/android/internal/PropertiesModule;

    return-object v0
.end method

.method static synthetic access$800(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;)Lcom/upsight/android/internal/UpsightContextModule;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/internal/DaggerCoreComponent$Builder;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->upsightContextModule:Lcom/upsight/android/internal/UpsightContextModule;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/upsight/android/internal/CoreComponent;
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->coreModule:Lcom/upsight/android/internal/CoreModule;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Lcom/upsight/android/internal/CoreModule;

    invoke-direct {v0}, Lcom/upsight/android/internal/CoreModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->coreModule:Lcom/upsight/android/internal/CoreModule;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->upsightContextModule:Lcom/upsight/android/internal/UpsightContextModule;

    if-nez v0, :cond_1

    .line 123
    new-instance v0, Lcom/upsight/android/internal/UpsightContextModule;

    invoke-direct {v0}, Lcom/upsight/android/internal/UpsightContextModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->upsightContextModule:Lcom/upsight/android/internal/UpsightContextModule;

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->contextModule:Lcom/upsight/android/internal/ContextModule;

    if-nez v0, :cond_2

    .line 126
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "contextModule must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->propertiesModule:Lcom/upsight/android/internal/PropertiesModule;

    if-nez v0, :cond_3

    .line 129
    new-instance v0, Lcom/upsight/android/internal/PropertiesModule;

    invoke-direct {v0}, Lcom/upsight/android/internal/PropertiesModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->propertiesModule:Lcom/upsight/android/internal/PropertiesModule;

    .line 131
    :cond_3
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->objectMapperModule:Lcom/upsight/android/internal/ObjectMapperModule;

    if-nez v0, :cond_4

    .line 132
    new-instance v0, Lcom/upsight/android/internal/ObjectMapperModule;

    invoke-direct {v0}, Lcom/upsight/android/internal/ObjectMapperModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->objectMapperModule:Lcom/upsight/android/internal/ObjectMapperModule;

    .line 134
    :cond_4
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->schedulersModule:Lcom/upsight/android/internal/SchedulersModule;

    if-nez v0, :cond_5

    .line 135
    new-instance v0, Lcom/upsight/android/internal/SchedulersModule;

    invoke-direct {v0}, Lcom/upsight/android/internal/SchedulersModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->schedulersModule:Lcom/upsight/android/internal/SchedulersModule;

    .line 137
    :cond_5
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->storableModule:Lcom/upsight/android/internal/persistence/storable/StorableModule;

    if-nez v0, :cond_6

    .line 138
    new-instance v0, Lcom/upsight/android/internal/persistence/storable/StorableModule;

    invoke-direct {v0}, Lcom/upsight/android/internal/persistence/storable/StorableModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->storableModule:Lcom/upsight/android/internal/persistence/storable/StorableModule;

    .line 140
    :cond_6
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->persistenceModule:Lcom/upsight/android/internal/persistence/PersistenceModule;

    if-nez v0, :cond_7

    .line 141
    new-instance v0, Lcom/upsight/android/internal/persistence/PersistenceModule;

    invoke-direct {v0}, Lcom/upsight/android/internal/persistence/PersistenceModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->persistenceModule:Lcom/upsight/android/internal/persistence/PersistenceModule;

    .line 143
    :cond_7
    iget-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->loggerModule:Lcom/upsight/android/internal/logger/LoggerModule;

    if-nez v0, :cond_8

    .line 144
    new-instance v0, Lcom/upsight/android/internal/logger/LoggerModule;

    invoke-direct {v0}, Lcom/upsight/android/internal/logger/LoggerModule;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->loggerModule:Lcom/upsight/android/internal/logger/LoggerModule;

    .line 146
    :cond_8
    new-instance v0, Lcom/upsight/android/internal/DaggerCoreComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/upsight/android/internal/DaggerCoreComponent;-><init>(Lcom/upsight/android/internal/DaggerCoreComponent$Builder;Lcom/upsight/android/internal/DaggerCoreComponent$1;)V

    return-object v0
.end method

.method public contextModule(Lcom/upsight/android/internal/ContextModule;)Lcom/upsight/android/internal/DaggerCoreComponent$Builder;
    .locals 2
    .param p1, "contextModule"    # Lcom/upsight/android/internal/ContextModule;

    .prologue
    .line 166
    if-nez p1, :cond_0

    .line 167
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "contextModule"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->contextModule:Lcom/upsight/android/internal/ContextModule;

    .line 170
    return-object p0
.end method

.method public coreModule(Lcom/upsight/android/internal/CoreModule;)Lcom/upsight/android/internal/DaggerCoreComponent$Builder;
    .locals 2
    .param p1, "coreModule"    # Lcom/upsight/android/internal/CoreModule;

    .prologue
    .line 150
    if-nez p1, :cond_0

    .line 151
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "coreModule"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->coreModule:Lcom/upsight/android/internal/CoreModule;

    .line 154
    return-object p0
.end method

.method public loggerModule(Lcom/upsight/android/internal/logger/LoggerModule;)Lcom/upsight/android/internal/DaggerCoreComponent$Builder;
    .locals 2
    .param p1, "loggerModule"    # Lcom/upsight/android/internal/logger/LoggerModule;

    .prologue
    .line 214
    if-nez p1, :cond_0

    .line 215
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "loggerModule"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->loggerModule:Lcom/upsight/android/internal/logger/LoggerModule;

    .line 218
    return-object p0
.end method

.method public objectMapperModule(Lcom/upsight/android/internal/ObjectMapperModule;)Lcom/upsight/android/internal/DaggerCoreComponent$Builder;
    .locals 2
    .param p1, "objectMapperModule"    # Lcom/upsight/android/internal/ObjectMapperModule;

    .prologue
    .line 182
    if-nez p1, :cond_0

    .line 183
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "objectMapperModule"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->objectMapperModule:Lcom/upsight/android/internal/ObjectMapperModule;

    .line 186
    return-object p0
.end method

.method public persistenceModule(Lcom/upsight/android/internal/persistence/PersistenceModule;)Lcom/upsight/android/internal/DaggerCoreComponent$Builder;
    .locals 2
    .param p1, "persistenceModule"    # Lcom/upsight/android/internal/persistence/PersistenceModule;

    .prologue
    .line 206
    if-nez p1, :cond_0

    .line 207
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "persistenceModule"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->persistenceModule:Lcom/upsight/android/internal/persistence/PersistenceModule;

    .line 210
    return-object p0
.end method

.method public propertiesModule(Lcom/upsight/android/internal/PropertiesModule;)Lcom/upsight/android/internal/DaggerCoreComponent$Builder;
    .locals 2
    .param p1, "propertiesModule"    # Lcom/upsight/android/internal/PropertiesModule;

    .prologue
    .line 174
    if-nez p1, :cond_0

    .line 175
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "propertiesModule"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->propertiesModule:Lcom/upsight/android/internal/PropertiesModule;

    .line 178
    return-object p0
.end method

.method public schedulersModule(Lcom/upsight/android/internal/SchedulersModule;)Lcom/upsight/android/internal/DaggerCoreComponent$Builder;
    .locals 2
    .param p1, "schedulersModule"    # Lcom/upsight/android/internal/SchedulersModule;

    .prologue
    .line 190
    if-nez p1, :cond_0

    .line 191
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "schedulersModule"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->schedulersModule:Lcom/upsight/android/internal/SchedulersModule;

    .line 194
    return-object p0
.end method

.method public storableModule(Lcom/upsight/android/internal/persistence/storable/StorableModule;)Lcom/upsight/android/internal/DaggerCoreComponent$Builder;
    .locals 2
    .param p1, "storableModule"    # Lcom/upsight/android/internal/persistence/storable/StorableModule;

    .prologue
    .line 198
    if-nez p1, :cond_0

    .line 199
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "storableModule"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->storableModule:Lcom/upsight/android/internal/persistence/storable/StorableModule;

    .line 202
    return-object p0
.end method

.method public upsightContextModule(Lcom/upsight/android/internal/UpsightContextModule;)Lcom/upsight/android/internal/DaggerCoreComponent$Builder;
    .locals 2
    .param p1, "upsightContextModule"    # Lcom/upsight/android/internal/UpsightContextModule;

    .prologue
    .line 158
    if-nez p1, :cond_0

    .line 159
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "upsightContextModule"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->upsightContextModule:Lcom/upsight/android/internal/UpsightContextModule;

    .line 162
    return-object p0
.end method
