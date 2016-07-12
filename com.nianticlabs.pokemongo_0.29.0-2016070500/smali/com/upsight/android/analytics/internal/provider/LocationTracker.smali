.class final Lcom/upsight/android/analytics/internal/provider/LocationTracker;
.super Lcom/upsight/android/analytics/provider/UpsightLocationTracker;
.source "LocationTracker.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

.field private mLogger:Lcom/upsight/android/logger/UpsightLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/upsight/android/analytics/internal/provider/LocationTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upsight/android/analytics/internal/provider/LocationTracker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/upsight/android/UpsightContext;)V
    .locals 1
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/upsight/android/analytics/provider/UpsightLocationTracker;-><init>()V

    .line 34
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getDataStore()Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/provider/LocationTracker;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    .line 35
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/provider/LocationTracker;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/upsight/android/analytics/internal/provider/LocationTracker;)Lcom/upsight/android/persistence/UpsightDataStore;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/provider/LocationTracker;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/LocationTracker;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/upsight/android/analytics/internal/provider/LocationTracker;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/upsight/android/analytics/internal/provider/LocationTracker;)Lcom/upsight/android/logger/UpsightLogger;
    .locals 1
    .param p0, "x0"    # Lcom/upsight/android/analytics/internal/provider/LocationTracker;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/LocationTracker;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    return-object v0
.end method


# virtual methods
.method public purge()V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/LocationTracker;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    const-class v1, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;

    new-instance v2, Lcom/upsight/android/analytics/internal/provider/LocationTracker$2;

    invoke-direct {v2, p0}, Lcom/upsight/android/analytics/internal/provider/LocationTracker$2;-><init>(Lcom/upsight/android/analytics/internal/provider/LocationTracker;)V

    invoke-interface {v0, v1, v2}, Lcom/upsight/android/persistence/UpsightDataStore;->fetch(Ljava/lang/Class;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 80
    return-void
.end method

.method public track(Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;)V
    .locals 3
    .param p1, "newLocation"    # Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/LocationTracker;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;

    const-class v1, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;

    new-instance v2, Lcom/upsight/android/analytics/internal/provider/LocationTracker$1;

    invoke-direct {v2, p0, p1}, Lcom/upsight/android/analytics/internal/provider/LocationTracker$1;-><init>(Lcom/upsight/android/analytics/internal/provider/LocationTracker;Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;)V

    invoke-interface {v0, v1, v2}, Lcom/upsight/android/persistence/UpsightDataStore;->fetch(Ljava/lang/Class;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 63
    return-void
.end method
