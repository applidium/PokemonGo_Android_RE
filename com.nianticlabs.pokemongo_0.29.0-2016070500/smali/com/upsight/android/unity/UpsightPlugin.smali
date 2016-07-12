.class public Lcom/upsight/android/unity/UpsightPlugin;
.super Lcom/upsight/android/unity/AbstractUpsightPlugin;
.source "UpsightPlugin.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static sInstance:Lcom/upsight/android/unity/UpsightPlugin;


# instance fields
.field private mBillboardHandler:Lcom/upsight/android/unity/BillboardHandler;

.field private mBillboardMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/upsight/android/marketing/UpsightBillboard;",
            ">;"
        }
    .end annotation
.end field

.field private mHasActiveBillboard:Z

.field private mJettisonedBillboardScopes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPushBillboard:Lcom/upsight/android/marketing/UpsightBillboard;

.field private mShouldSynchronizeManagedVariables:Z

.field private mUpsight:Lcom/upsight/android/UpsightContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/upsight/android/unity/AbstractUpsightPlugin;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/unity/UpsightPlugin;->mBillboardMap:Ljava/util/Map;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/upsight/android/unity/UpsightPlugin;->mHasActiveBillboard:Z

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/upsight/android/unity/UpsightPlugin;->mShouldSynchronizeManagedVariables:Z

    return-void
.end method

.method public static declared-synchronized instance()Lcom/upsight/android/unity/UpsightPlugin;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 67
    const-class v2, Lcom/upsight/android/unity/UpsightPlugin;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/upsight/android/unity/UpsightPlugin;->sInstance:Lcom/upsight/android/unity/UpsightPlugin;

    if-nez v1, :cond_0

    .line 68
    new-instance v1, Lcom/upsight/android/unity/UpsightPlugin;

    invoke-direct {v1}, Lcom/upsight/android/unity/UpsightPlugin;-><init>()V

    sput-object v1, Lcom/upsight/android/unity/UpsightPlugin;->sInstance:Lcom/upsight/android/unity/UpsightPlugin;

    .line 69
    sget-object v1, Lcom/upsight/android/unity/UpsightPlugin;->sInstance:Lcom/upsight/android/unity/UpsightPlugin;

    invoke-virtual {v1}, Lcom/upsight/android/unity/UpsightPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 70
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 71
    sget-object v1, Lcom/upsight/android/unity/UpsightPlugin;->sInstance:Lcom/upsight/android/unity/UpsightPlugin;

    invoke-static {v0}, Lcom/upsight/android/Upsight;->createContext(Landroid/content/Context;)Lcom/upsight/android/UpsightContext;

    move-result-object v3

    iput-object v3, v1, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 72
    sget-object v1, Lcom/upsight/android/unity/UpsightPlugin;->sInstance:Lcom/upsight/android/unity/UpsightPlugin;

    new-instance v3, Lcom/upsight/android/unity/BillboardHandler;

    sget-object v4, Lcom/upsight/android/unity/UpsightPlugin;->sInstance:Lcom/upsight/android/unity/UpsightPlugin;

    invoke-direct {v3, v0, v4}, Lcom/upsight/android/unity/BillboardHandler;-><init>(Landroid/app/Activity;Lcom/upsight/android/unity/UpsightPlugin;)V

    iput-object v3, v1, Lcom/upsight/android/unity/UpsightPlugin;->mBillboardHandler:Lcom/upsight/android/unity/BillboardHandler;

    .line 74
    const-string v1, "Upsight"

    const-string v3, "creating UpsightPushBillboard"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object v1, Lcom/upsight/android/unity/UpsightPlugin;->sInstance:Lcom/upsight/android/unity/UpsightPlugin;

    sget-object v3, Lcom/upsight/android/unity/UpsightPlugin;->sInstance:Lcom/upsight/android/unity/UpsightPlugin;

    iget-object v3, v3, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    sget-object v4, Lcom/upsight/android/unity/UpsightPlugin;->sInstance:Lcom/upsight/android/unity/UpsightPlugin;

    iget-object v4, v4, Lcom/upsight/android/unity/UpsightPlugin;->mBillboardHandler:Lcom/upsight/android/unity/BillboardHandler;

    invoke-static {v3, v4}, Lcom/upsight/android/googlepushservices/UpsightPushBillboard;->create(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/marketing/UpsightBillboard$Handler;)Lcom/upsight/android/marketing/UpsightBillboard;

    move-result-object v3

    iput-object v3, v1, Lcom/upsight/android/unity/UpsightPlugin;->mPushBillboard:Lcom/upsight/android/marketing/UpsightBillboard;

    .line 78
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v1, v3, :cond_0

    .line 79
    const-string v1, "Upsight"

    const-string v3, "wiring up an ActivityLifecycleCallback listener since we are on API 14+"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    sget-object v3, Lcom/upsight/android/unity/UpsightPlugin;->sInstance:Lcom/upsight/android/unity/UpsightPlugin;

    invoke-virtual {v1, v3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 85
    :cond_0
    sget-object v1, Lcom/upsight/android/unity/UpsightPlugin;->sInstance:Lcom/upsight/android/unity/UpsightPlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 67
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static publisherDataFromJsonString(Ljava/lang/String;)Lcom/upsight/android/analytics/event/UpsightPublisherData;
    .locals 8
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 89
    new-instance v4, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    invoke-direct {v4}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;-><init>()V

    .line 91
    .local v4, "pubData":Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 93
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 95
    .local v2, "jObject":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 96
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 97
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 99
    .local v3, "key":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 100
    .local v5, "value":Ljava/lang/Object;
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 101
    check-cast v5, Ljava/lang/String;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-virtual {v4, v3, v5}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 115
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v2    # "jObject":Lorg/json/JSONObject;
    .end local v3    # "key":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 116
    .restart local v0    # "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 120
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    invoke-virtual {v4}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->build()Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v6

    return-object v6

    .line 102
    .restart local v1    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v2    # "jObject":Lorg/json/JSONObject;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_2
    :try_start_3
    instance-of v6, v5, Ljava/lang/Float;

    if-eqz v6, :cond_3

    .line 103
    check-cast v5, Ljava/lang/Float;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v4, v3, v6}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->put(Ljava/lang/String;F)Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    goto :goto_0

    .line 104
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v6, v5, Ljava/lang/Double;

    if-eqz v6, :cond_4

    .line 105
    check-cast v5, Ljava/lang/Double;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v4, v3, v6, v7}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->put(Ljava/lang/String;D)Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    goto :goto_0

    .line 106
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v6, v5, Ljava/lang/Long;

    if-eqz v6, :cond_5

    .line 107
    check-cast v5, Ljava/lang/Long;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v3, v6, v7}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->put(Ljava/lang/String;J)Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    goto :goto_0

    .line 108
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v6, v5, Ljava/lang/Boolean;

    if-eqz v6, :cond_0

    .line 109
    check-cast v5, Ljava/lang/Boolean;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v4, v3, v6}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->put(Ljava/lang/String;Z)Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public destroyBillboard(Ljava/lang/String;)V
    .locals 4
    .param p1, "scope"    # Ljava/lang/String;

    .prologue
    .line 426
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin;->mBillboardMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/upsight/android/unity/UpsightPlugin;->getHasActiveBillboard()Z

    move-result v1

    if-nez v1, :cond_0

    .line 427
    const-string v1, "Upsight"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destroying billboard for scope: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin;->mBillboardMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/UpsightBillboard;

    .line 429
    .local v0, "billboard":Lcom/upsight/android/marketing/UpsightBillboard;
    invoke-virtual {v0}, Lcom/upsight/android/marketing/UpsightBillboard;->destroy()V

    .line 431
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin;->mBillboardMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    .end local v0    # "billboard":Lcom/upsight/android/marketing/UpsightBillboard;
    :cond_0
    return-void
.end method

.method public getAppToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v0}, Lcom/upsight/android/UpsightContext;->getApplicationToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getHasActiveBillboard()Z
    .locals 1

    .prologue
    .line 522
    iget-boolean v0, p0, Lcom/upsight/android/unity/UpsightPlugin;->mHasActiveBillboard:Z

    return v0
.end method

.method public getManagedBool(Ljava/lang/String;)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 333
    const/4 v2, 0x0

    .line 335
    .local v2, "val":Z
    :try_start_0
    iget-object v3, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v3, p1}, Lcom/upsight/android/managedvariables/type/UpsightManagedBoolean;->fetch(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Lcom/upsight/android/managedvariables/type/UpsightManagedBoolean;

    move-result-object v1

    .line 336
    .local v1, "managedBoolean":Lcom/upsight/android/managedvariables/type/UpsightManagedBoolean;
    if-eqz v1, :cond_0

    .line 337
    invoke-virtual {v1}, Lcom/upsight/android/managedvariables/type/UpsightManagedBoolean;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 344
    .end local v1    # "managedBoolean":Lcom/upsight/android/managedvariables/type/UpsightManagedBoolean;
    :goto_0
    return v2

    .line 339
    .restart local v1    # "managedBoolean":Lcom/upsight/android/managedvariables/type/UpsightManagedBoolean;
    :cond_0
    const-string v3, "Upsight"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for managed bool, please check your UXM schema"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 341
    .end local v1    # "managedBoolean":Lcom/upsight/android/managedvariables/type/UpsightManagedBoolean;
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getManagedFloat(Ljava/lang/String;)F
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 303
    const/4 v2, 0x0

    .line 305
    .local v2, "val":F
    :try_start_0
    iget-object v3, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v3, p1}, Lcom/upsight/android/managedvariables/type/UpsightManagedFloat;->fetch(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Lcom/upsight/android/managedvariables/type/UpsightManagedFloat;

    move-result-object v1

    .line 306
    .local v1, "managedFloat":Lcom/upsight/android/managedvariables/type/UpsightManagedFloat;
    if-eqz v1, :cond_0

    .line 307
    invoke-virtual {v1}, Lcom/upsight/android/managedvariables/type/UpsightManagedFloat;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 314
    .end local v1    # "managedFloat":Lcom/upsight/android/managedvariables/type/UpsightManagedFloat;
    :goto_0
    return v2

    .line 309
    .restart local v1    # "managedFloat":Lcom/upsight/android/managedvariables/type/UpsightManagedFloat;
    :cond_0
    const-string v3, "Upsight"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for managed float, please check your UXM schema"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 311
    .end local v1    # "managedFloat":Lcom/upsight/android/managedvariables/type/UpsightManagedFloat;
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getManagedInt(Ljava/lang/String;)I
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 318
    const/4 v2, 0x0

    .line 320
    .local v2, "val":I
    :try_start_0
    iget-object v3, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v3, p1}, Lcom/upsight/android/managedvariables/type/UpsightManagedInt;->fetch(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Lcom/upsight/android/managedvariables/type/UpsightManagedInt;

    move-result-object v1

    .line 321
    .local v1, "managedInt":Lcom/upsight/android/managedvariables/type/UpsightManagedInt;
    if-eqz v1, :cond_0

    .line 322
    invoke-virtual {v1}, Lcom/upsight/android/managedvariables/type/UpsightManagedInt;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 329
    .end local v1    # "managedInt":Lcom/upsight/android/managedvariables/type/UpsightManagedInt;
    :goto_0
    return v2

    .line 324
    .restart local v1    # "managedInt":Lcom/upsight/android/managedvariables/type/UpsightManagedInt;
    :cond_0
    const-string v3, "Upsight"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for managed int, please check your UXM schema"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 326
    .end local v1    # "managedInt":Lcom/upsight/android/managedvariables/type/UpsightManagedInt;
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getManagedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 288
    const/4 v3, 0x0

    .line 290
    .local v3, "val":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v4, p1}, Lcom/upsight/android/managedvariables/type/UpsightManagedString;->fetch(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Lcom/upsight/android/managedvariables/type/UpsightManagedString;

    move-result-object v2

    .line 291
    .local v2, "managedString":Lcom/upsight/android/managedvariables/type/UpsightManagedString;
    if-eqz v2, :cond_0

    .line 292
    invoke-virtual {v2}, Lcom/upsight/android/managedvariables/type/UpsightManagedString;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 299
    .end local v2    # "managedString":Lcom/upsight/android/managedvariables/type/UpsightManagedString;
    :goto_0
    return-object v3

    .line 294
    .restart local v2    # "managedString":Lcom/upsight/android/managedvariables/type/UpsightManagedString;
    :cond_0
    const-string v4, "Upsight"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown tag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for managed string, please check your UXM schema"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 296
    .end local v2    # "managedString":Lcom/upsight/android/managedvariables/type/UpsightManagedString;
    :catch_0
    move-exception v1

    .line 297
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getOptOutStatus()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v0}, Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;->get(Lcom/upsight/android/UpsightContext;)Z

    move-result v0

    return v0
.end method

.method public getPluginVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v0}, Lcom/upsight/android/UpsightContext;->getSdkPlugin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v0}, Lcom/upsight/android/UpsightContext;->getPublicKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShouldSynchronizeManagedVariables()Z
    .locals 1

    .prologue
    .line 452
    iget-boolean v0, p0, Lcom/upsight/android/unity/UpsightPlugin;->mShouldSynchronizeManagedVariables:Z

    return v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v0}, Lcom/upsight/android/UpsightContext;->getSid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAttributesBool(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 274
    :try_start_0
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v1, p1}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->getBoolean(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 279
    :goto_0
    return v1

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 279
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUserAttributesFloat(Ljava/lang/String;)F
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 254
    :try_start_0
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v1, p1}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->getFloat(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 259
    :goto_0
    return v1

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 259
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUserAttributesInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v1, p1}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->getInteger(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 269
    :goto_0
    return v1

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 269
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUserAttributesString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 244
    :try_start_0
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v1, p1}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->getString(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 249
    :goto_0
    return-object v1

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 249
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isContentReadyForBillboardWithScope(Ljava/lang/String;)Z
    .locals 1
    .param p1, "scope"    # Ljava/lang/String;

    .prologue
    .line 401
    iget-object v0, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v0, p1}, Lcom/upsight/android/marketing/UpsightMarketingContentStore;->isContentReady(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 462
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 466
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 471
    iget-object v3, p0, Lcom/upsight/android/unity/UpsightPlugin;->mPushBillboard:Lcom/upsight/android/marketing/UpsightBillboard;

    invoke-virtual {v3}, Lcom/upsight/android/marketing/UpsightBillboard;->destroy()V

    .line 472
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/upsight/android/unity/UpsightPlugin;->mPushBillboard:Lcom/upsight/android/marketing/UpsightBillboard;

    .line 475
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/upsight/android/unity/UpsightPlugin;->mJettisonedBillboardScopes:Ljava/util/List;

    .line 477
    iget-object v3, p0, Lcom/upsight/android/unity/UpsightPlugin;->mBillboardMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 478
    .local v2, "scope":Ljava/lang/String;
    iget-object v3, p0, Lcom/upsight/android/unity/UpsightPlugin;->mJettisonedBillboardScopes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    iget-object v3, p0, Lcom/upsight/android/unity/UpsightPlugin;->mBillboardMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/UpsightBillboard;

    .line 480
    .local v0, "billboard":Lcom/upsight/android/marketing/UpsightBillboard;
    invoke-virtual {v0}, Lcom/upsight/android/marketing/UpsightBillboard;->destroy()V

    goto :goto_0

    .line 483
    .end local v0    # "billboard":Lcom/upsight/android/marketing/UpsightBillboard;
    .end local v2    # "scope":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/upsight/android/unity/UpsightPlugin;->mBillboardMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 484
    const-string v3, "Upsight"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tombstoned "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/upsight/android/unity/UpsightPlugin;->mJettisonedBillboardScopes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " scopes when pausing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 489
    const-string v2, "Upsight"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resurrecting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/upsight/android/unity/UpsightPlugin;->mJettisonedBillboardScopes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " scopes when resuming and push billboard"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v2, p0, Lcom/upsight/android/unity/UpsightPlugin;->mPushBillboard:Lcom/upsight/android/marketing/UpsightBillboard;

    if-nez v2, :cond_0

    .line 491
    iget-object v2, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    iget-object v3, p0, Lcom/upsight/android/unity/UpsightPlugin;->mBillboardHandler:Lcom/upsight/android/unity/BillboardHandler;

    invoke-static {v2, v3}, Lcom/upsight/android/googlepushservices/UpsightPushBillboard;->create(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/marketing/UpsightBillboard$Handler;)Lcom/upsight/android/marketing/UpsightBillboard;

    move-result-object v2

    iput-object v2, p0, Lcom/upsight/android/unity/UpsightPlugin;->mPushBillboard:Lcom/upsight/android/marketing/UpsightBillboard;

    .line 494
    :cond_0
    iget-object v2, p0, Lcom/upsight/android/unity/UpsightPlugin;->mJettisonedBillboardScopes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 495
    .local v1, "scope":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/upsight/android/unity/UpsightPlugin;->prepareBillboard(Ljava/lang/String;)V

    goto :goto_0

    .line 497
    .end local v1    # "scope":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/upsight/android/unity/UpsightPlugin;->mJettisonedBillboardScopes:Ljava/util/List;

    .line 498
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 502
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 506
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 510
    return-void
.end method

.method public prepareBillboard(Ljava/lang/String;)V
    .locals 6
    .param p1, "scope"    # Ljava/lang/String;

    .prologue
    .line 406
    iget-object v3, p0, Lcom/upsight/android/unity/UpsightPlugin;->mBillboardMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/upsight/android/unity/UpsightPlugin;->getHasActiveBillboard()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    iget-object v3, p0, Lcom/upsight/android/unity/UpsightPlugin;->mBillboardMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 412
    iget-object v3, p0, Lcom/upsight/android/unity/UpsightPlugin;->mBillboardMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 413
    .local v2, "s":Ljava/lang/String;
    const-string v3, "Upsight"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearing out cached billboard ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] to make room for the new billboard: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v3, p0, Lcom/upsight/android/unity/UpsightPlugin;->mBillboardMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/marketing/UpsightBillboard;

    .line 415
    .local v0, "billboard":Lcom/upsight/android/marketing/UpsightBillboard;
    invoke-virtual {v0}, Lcom/upsight/android/marketing/UpsightBillboard;->destroy()V

    goto :goto_1

    .line 417
    .end local v0    # "billboard":Lcom/upsight/android/marketing/UpsightBillboard;
    .end local v2    # "s":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/upsight/android/unity/UpsightPlugin;->mBillboardMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 421
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v3, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    iget-object v4, p0, Lcom/upsight/android/unity/UpsightPlugin;->mBillboardHandler:Lcom/upsight/android/unity/BillboardHandler;

    invoke-static {v3, p1, v4}, Lcom/upsight/android/marketing/UpsightBillboard;->create(Lcom/upsight/android/UpsightContext;Ljava/lang/String;Lcom/upsight/android/marketing/UpsightBillboard$Handler;)Lcom/upsight/android/marketing/UpsightBillboard;

    move-result-object v0

    .line 422
    .restart local v0    # "billboard":Lcom/upsight/android/marketing/UpsightBillboard;
    iget-object v3, p0, Lcom/upsight/android/unity/UpsightPlugin;->mBillboardMap:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public purgeLocation()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v0}, Lcom/upsight/android/analytics/provider/UpsightLocationTracker;->purge(Lcom/upsight/android/UpsightContext;)V

    .line 173
    return-void
.end method

.method public recordAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "properties"    # Ljava/lang/String;

    .prologue
    .line 353
    invoke-static {p1}, Lcom/upsight/android/analytics/event/UpsightCustomEvent;->createBuilder(Ljava/lang/String;)Lcom/upsight/android/analytics/event/UpsightCustomEvent$Builder;

    move-result-object v0

    .line 354
    .local v0, "builder":Lcom/upsight/android/analytics/event/UpsightCustomEvent$Builder;
    invoke-static {p2}, Lcom/upsight/android/unity/UpsightPlugin;->publisherDataFromJsonString(Ljava/lang/String;)Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/event/UpsightCustomEvent$Builder;->put(Lcom/upsight/android/analytics/event/UpsightPublisherData;)Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;

    .line 355
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/event/UpsightCustomEvent$Builder;->record(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;

    .line 356
    return-void
.end method

.method public recordGooglePlayPurchase(ILjava/lang/String;DDLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "quantity"    # I
    .param p2, "currency"    # Ljava/lang/String;
    .param p3, "price"    # D
    .param p5, "totalPrice"    # D
    .param p7, "product"    # Ljava/lang/String;
    .param p8, "reponseCode"    # I
    .param p9, "inAppPurchaseData"    # Ljava/lang/String;
    .param p10, "inAppDataSignature"    # Ljava/lang/String;
    .param p11, "properties"    # Ljava/lang/String;

    .prologue
    .line 385
    new-instance v2, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    invoke-direct {v2}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;-><init>()V

    .line 386
    .local v2, "builder":Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;
    invoke-static/range {p11 .. p11}, Lcom/upsight/android/unity/UpsightPlugin;->publisherDataFromJsonString(Ljava/lang/String;)Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->put(Lcom/upsight/android/analytics/event/UpsightPublisherData;)Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;

    .line 389
    :try_start_0
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 390
    .local v11, "responseData":Landroid/content/Intent;
    const-string v3, "RESPONSE_CODE"

    move/from16 v0, p8

    invoke-virtual {v11, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 391
    const-string v3, "INAPP_PURCHASE_DATA"

    move-object/from16 v0, p9

    invoke-virtual {v11, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    const-string v3, "INAPP_DATA_SIGNATURE"

    move-object/from16 v0, p10

    invoke-virtual {v11, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    iget-object v3, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v2}, Lcom/upsight/android/analytics/event/UpsightPublisherData$Builder;->build()Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v12

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-static/range {v3 .. v12}, Lcom/upsight/android/analytics/UpsightGooglePlayHelper;->trackPurchase(Lcom/upsight/android/UpsightContext;ILjava/lang/String;DDLjava/lang/String;Landroid/content/Intent;Lcom/upsight/android/analytics/event/UpsightPublisherData;)V
    :try_end_0
    .catch Lcom/upsight/android/UpsightException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    .end local v11    # "responseData":Landroid/content/Intent;
    :goto_0
    return-void

    .line 394
    :catch_0
    move-exception v13

    .line 395
    .local v13, "e":Lcom/upsight/android/UpsightException;
    const-string v3, "Upsight"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to recordGooglePlayPurchase: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Lcom/upsight/android/UpsightException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-virtual {v13}, Lcom/upsight/android/UpsightException;->printStackTrace()V

    goto :goto_0
.end method

.method public recordMilestoneEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "properties"    # Ljava/lang/String;

    .prologue
    .line 359
    invoke-static {p1}, Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent;->createBuilder(Ljava/lang/String;)Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent$Builder;

    move-result-object v0

    .line 360
    .local v0, "builder":Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent$Builder;
    invoke-static {p2}, Lcom/upsight/android/unity/UpsightPlugin;->publisherDataFromJsonString(Ljava/lang/String;)Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent$Builder;->put(Lcom/upsight/android/analytics/event/UpsightPublisherData;)Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;

    .line 361
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/event/milestone/UpsightMilestoneEvent$Builder;->record(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;

    .line 362
    return-void
.end method

.method public recordMonetizationEvent(DLjava/lang/String;Ljava/lang/String;DLjava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "totalPrice"    # D
    .param p3, "currency"    # Ljava/lang/String;
    .param p4, "product"    # Ljava/lang/String;
    .param p5, "price"    # D
    .param p7, "resolution"    # Ljava/lang/String;
    .param p8, "quantity"    # I
    .param p9, "properties"    # Ljava/lang/String;

    .prologue
    .line 365
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent;->createBuilder(Ljava/lang/Double;Ljava/lang/String;)Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;

    move-result-object v0

    .line 366
    .local v0, "builder":Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;
    invoke-static {p9}, Lcom/upsight/android/unity/UpsightPlugin;->publisherDataFromJsonString(Ljava/lang/String;)Lcom/upsight/android/analytics/event/UpsightPublisherData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->put(Lcom/upsight/android/analytics/event/UpsightPublisherData;)Lcom/upsight/android/analytics/internal/AnalyticsEvent$Builder;

    .line 368
    if-eqz p4, :cond_0

    .line 369
    invoke-virtual {v0, p4}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->setProduct(Ljava/lang/String;)Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;

    .line 371
    :cond_0
    const-wide/16 v2, 0x0

    cmpl-double v1, p5, v2

    if-ltz v1, :cond_1

    .line 372
    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->setPrice(Ljava/lang/Double;)Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;

    .line 374
    :cond_1
    if-eqz p7, :cond_2

    .line 375
    invoke-virtual {v0, p7}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->setResolution(Ljava/lang/String;)Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;

    .line 377
    :cond_2
    if-lez p8, :cond_3

    .line 378
    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->setQuantity(Ljava/lang/Integer;)Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;

    .line 380
    :cond_3
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v0, v1}, Lcom/upsight/android/analytics/event/monetization/UpsightMonetizationEvent$Builder;->record(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;

    .line 381
    return-void
.end method

.method public registerForPushNotifications()V
    .locals 2

    .prologue
    .line 191
    const-string v0, "Upsight"

    const-string v1, "registering for push notifications"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    new-instance v1, Lcom/upsight/android/unity/UpsightPlugin$2;

    invoke-direct {v1, p0}, Lcom/upsight/android/unity/UpsightPlugin$2;-><init>(Lcom/upsight/android/unity/UpsightPlugin;)V

    invoke-static {v0, v1}, Lcom/upsight/android/googlepushservices/UpsightGooglePushServices;->register(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;)V

    .line 203
    return-void
.end method

.method public removeBillboardFromMap(Ljava/lang/String;)V
    .locals 3
    .param p1, "scope"    # Ljava/lang/String;

    .prologue
    .line 436
    iget-object v0, p0, Lcom/upsight/android/unity/UpsightPlugin;->mBillboardMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    const-string v0, "Upsight"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing used billboard from internal map for scope: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v0, p0, Lcom/upsight/android/unity/UpsightPlugin;->mBillboardMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    :cond_0
    return-void
.end method

.method setHasActiveBillboard(Z)V
    .locals 0
    .param p1, "hasActiveBillboard"    # Z

    .prologue
    .line 518
    iput-boolean p1, p0, Lcom/upsight/android/unity/UpsightPlugin;->mHasActiveBillboard:Z

    .line 519
    return-void
.end method

.method public setLocation(DDLjava/lang/String;)V
    .locals 3
    .param p1, "lat"    # D
    .param p3, "lon"    # D
    .param p5, "timezone"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-static {p1, p2, p3, p4}, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->create(DD)Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;

    move-result-object v0

    .line 165
    .local v0, "data":Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 166
    invoke-virtual {v0, p5}, Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;->setTimeZone(Ljava/lang/String;)V

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v1, v0}, Lcom/upsight/android/analytics/provider/UpsightLocationTracker;->track(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/analytics/provider/UpsightLocationTracker$Data;)V

    .line 169
    return-void
.end method

.method public setLoggerLevel(Ljava/lang/String;)V
    .locals 4
    .param p1, "logLevel"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "verbose"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    const-string v1, "Upsight"

    const-string v2, "enabling verbose logs"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v2, "Upsight"

    const-class v3, Lcom/upsight/android/logger/UpsightLogger$Level;

    invoke-static {v3}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->setLogLevel(Ljava/lang/String;Ljava/util/EnumSet;)V

    .line 148
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-static {p1}, Lcom/upsight/android/logger/UpsightLogger$Level;->valueOf(Ljava/lang/String;)Lcom/upsight/android/logger/UpsightLogger$Level;

    move-result-object v1

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 146
    .local v0, "logLevels":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/upsight/android/logger/UpsightLogger$Level;>;"
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v2, "Upsight"

    invoke-interface {v1, v2, v0}, Lcom/upsight/android/logger/UpsightLogger;->setLogLevel(Ljava/lang/String;Ljava/util/EnumSet;)V

    goto :goto_0
.end method

.method public setOptOutStatus(Z)V
    .locals 1
    .param p1, "optOutStatus"    # Z

    .prologue
    .line 159
    iget-object v0, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v0, p1}, Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;->set(Lcom/upsight/android/UpsightContext;Z)V

    .line 160
    return-void
.end method

.method public setShouldSynchronizeManagedVariables(Z)V
    .locals 0
    .param p1, "shouldSynchronizeManagedVariables"    # Z

    .prologue
    .line 448
    iput-boolean p1, p0, Lcom/upsight/android/unity/UpsightPlugin;->mShouldSynchronizeManagedVariables:Z

    .line 449
    return-void
.end method

.method public setUserAttributesBool(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->put(Lcom/upsight/android/UpsightContext;Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setUserAttributesFloat(Ljava/lang/String;F)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->put(Lcom/upsight/android/UpsightContext;Ljava/lang/String;Ljava/lang/Float;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setUserAttributesInt(Ljava/lang/String;I)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->put(Lcom/upsight/android/UpsightContext;Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setUserAttributesString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 212
    :try_start_0
    iget-object v1, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v1, p1, p2}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;->put(Lcom/upsight/android/UpsightContext;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public unregisterForPushNotifications()V
    .locals 2

    .prologue
    .line 176
    const-string v0, "Upsight"

    const-string v1, "unregistering for push notifications"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/upsight/android/unity/UpsightPlugin;->mUpsight:Lcom/upsight/android/UpsightContext;

    new-instance v1, Lcom/upsight/android/unity/UpsightPlugin$1;

    invoke-direct {v1, p0}, Lcom/upsight/android/unity/UpsightPlugin$1;-><init>(Lcom/upsight/android/unity/UpsightPlugin;)V

    invoke-static {v0, v1}, Lcom/upsight/android/googlepushservices/UpsightGooglePushServices;->unregister(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;)V

    .line 188
    return-void
.end method
