.class public final Lcom/upsight/android/googlepushservices/internal/PushIntentService;
.super Landroid/app/IntentService;
.source "PushIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/googlepushservices/internal/PushIntentService$1;,
        Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;,
        Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;,
        Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;
    }
.end annotation


# static fields
.field private static final ACTION_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final ACTION_CONTENT_UNIT:Ljava/lang/String; = "content_id"

.field private static final ACTION_PLACEMENT:Ljava/lang/String; = "placement"

.field private static final CONTENT_UNRENDERED_CONTENT_PROVIDER_KEY_NAME:Ljava/lang/String; = "name"

.field private static final CONTENT_UNRENDERED_CONTENT_PROVIDER_KEY_PARAMETERS:Ljava/lang/String; = "parameters"

.field private static final CONTENT_UNRENDERED_CONTENT_PROVIDER_PARAMETERS_KEY_CONTENT_ID:Ljava/lang/String; = "content_id"

.field private static final INVALID_MSG_ID:Ljava/lang/Integer;

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final SERVICE_NAME:Ljava/lang/String; = "UpsightGcmPushIntentService"

.field private static final URI_HOST:Ljava/lang/String; = "com.playhaven.android"

.field private static final URI_SCHEME:Ljava/lang/String; = "playhaven"


# instance fields
.field mGcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->LOG_TAG:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->INVALID_MSG_ID:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "UpsightGcmPushIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method private interpretPushEvent(Landroid/os/Bundle;)V
    .locals 20
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 124
    const/16 v18, 0x0

    .line 126
    .local v18, "uri":Landroid/net/Uri;
    sget-object v3, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->uri:Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    invoke-virtual {v3}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 127
    .local v19, "uriString":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 128
    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 131
    :cond_0
    if-eqz v18, :cond_1

    .line 132
    invoke-static/range {p0 .. p0}, Lcom/upsight/android/Upsight;->createContext(Landroid/content/Context;)Lcom/upsight/android/UpsightContext;

    move-result-object v17

    .line 133
    .local v17, "upsight":Lcom/upsight/android/UpsightContext;
    invoke-virtual/range {v17 .. v17}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v13

    .line 135
    .local v13, "logger":Lcom/upsight/android/logger/UpsightLogger;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2, v13}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->parsePushIds(Landroid/net/Uri;Landroid/os/Bundle;Lcom/upsight/android/logger/UpsightLogger;)Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;

    move-result-object v12

    .line 136
    .local v12, "ids":Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;
    const/4 v4, 0x0

    .line 137
    .local v4, "messageIntent":Landroid/content/Intent;
    sget-object v3, Lcom/upsight/android/googlepushservices/internal/PushIntentService$1;->$SwitchMap$com$upsight$android$googlepushservices$internal$PushIntentService$UriTypes:[I

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v13, v1}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->checkUri(Lcom/upsight/android/logger/UpsightLogger;Landroid/net/Uri;)Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    move-result-object v5

    invoke-virtual {v5}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    .line 181
    :goto_0
    if-eqz v4, :cond_1

    .line 182
    sget-object v3, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->title:Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    invoke-virtual {v3}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 183
    .local v7, "title":Ljava/lang/String;
    sget-object v3, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->text:Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    invoke-virtual {v3}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 184
    .local v8, "text":Ljava/lang/String;
    iget-object v5, v12, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;->campaignId:Ljava/lang/Integer;

    iget-object v6, v12, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;->messageId:Ljava/lang/Integer;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->showNotification(Landroid/content/Intent;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .end local v4    # "messageIntent":Landroid/content/Intent;
    .end local v7    # "title":Ljava/lang/String;
    .end local v8    # "text":Ljava/lang/String;
    .end local v12    # "ids":Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;
    .end local v13    # "logger":Lcom/upsight/android/logger/UpsightLogger;
    .end local v17    # "upsight":Lcom/upsight/android/UpsightContext;
    :cond_1
    return-void

    .line 139
    .restart local v4    # "messageIntent":Landroid/content/Intent;
    .restart local v12    # "ids":Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;
    .restart local v13    # "logger":Lcom/upsight/android/logger/UpsightLogger;
    .restart local v17    # "upsight":Lcom/upsight/android/UpsightContext;
    :pswitch_0
    new-instance v4, Landroid/content/Intent;

    .end local v4    # "messageIntent":Landroid/content/Intent;
    const-string v3, "android.intent.action.VIEW"

    move-object/from16 v0, v18

    invoke-direct {v4, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 140
    .restart local v4    # "messageIntent":Landroid/content/Intent;
    goto :goto_0

    .line 143
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 144
    goto :goto_0

    .line 148
    :pswitch_2
    :try_start_0
    const-string v3, "activity"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 149
    .local v9, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v14, Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "messageIntent":Landroid/content/Intent;
    .local v14, "messageIntent":Landroid/content/Intent;
    move-object v4, v14

    .line 152
    .end local v14    # "messageIntent":Landroid/content/Intent;
    .restart local v4    # "messageIntent":Landroid/content/Intent;
    goto :goto_0

    .line 150
    .end local v9    # "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v11

    .line 151
    .local v11, "e":Ljava/lang/ClassNotFoundException;
    sget-object v3, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Could not parse class name"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v13, v3, v11, v5, v6}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 155
    .end local v11    # "e":Ljava/lang/ClassNotFoundException;
    :pswitch_3
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 157
    .local v10, "contentProviderBundle":Lorg/json/JSONObject;
    :try_start_1
    const-string v3, "name"

    const-string v5, "upsight"

    invoke-virtual {v10, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 161
    .local v15, "parameters":Lorg/json/JSONObject;
    const-string v3, "content_id"

    iget-object v5, v12, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;->contentId:Ljava/lang/Integer;

    invoke-virtual {v15, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    const-string v3, "parameters"

    invoke-virtual {v10, v3, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 167
    .end local v15    # "parameters":Lorg/json/JSONObject;
    :goto_1
    invoke-static {v10}, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent;->createBuilder(Lorg/json/JSONObject;)Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;

    move-result-object v3

    const-string v5, "com_upsight_push_scope"

    invoke-virtual {v3, v5}, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->setScope(Ljava/lang/String;)Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;

    move-result-object v16

    .line 172
    .local v16, "unrenderedEvent":Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;
    iget-object v3, v12, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;->campaignId:Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 173
    iget-object v3, v12, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;->campaignId:Ljava/lang/Integer;

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->setCampaignId(Ljava/lang/Integer;)Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;

    .line 175
    :cond_2
    invoke-virtual/range {v16 .. v17}, Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;->record(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    goto/16 :goto_0

    .line 163
    .end local v16    # "unrenderedEvent":Lcom/upsight/android/analytics/event/content/UpsightContentUnrenderedEvent$Builder;
    :catch_1
    move-exception v11

    .line 164
    .local v11, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Could not construct \"content_provider\" bundle in \"upsight.content.unrendered\""

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v13, v3, v11, v5, v6}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static parseAsInt(Ljava/lang/String;Ljava/lang/Integer;Lcom/upsight/android/logger/UpsightLogger;)Ljava/lang/Integer;
    .locals 7
    .param p0, "stringValue"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/Integer;
    .param p2, "logger"    # Lcom/upsight/android/logger/UpsightLogger;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 68
    move-object v1, p1

    .line 69
    .local v1, "integerValue":Ljava/lang/Integer;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 80
    :cond_0
    :goto_0
    return-object v1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/NumberFormatException;
    if-nez p1, :cond_1

    .line 74
    sget-object v2, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Could not parse %s. Setting to null."

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {p2, v2, v0, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 76
    :cond_1
    sget-object v2, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Could not parse %s. Setting to %d."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    aput-object p1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {p2, v2, v0, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private showNotification(Landroid/content/Intent;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "messageIntent"    # Landroid/content/Intent;
    .param p2, "campaignId"    # Ljava/lang/Integer;
    .param p3, "messageId"    # Ljava/lang/Integer;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "text"    # Ljava/lang/String;

    .prologue
    .line 241
    const/4 v3, 0x0

    invoke-static {p0, p1, p2, p3}, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;->newIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x10000000

    invoke-static {p0, v3, v4, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 245
    .local v2, "notifyIntent":Landroid/app/PendingIntent;
    new-instance v3, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v3, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, p5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    new-instance v4, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v4}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v4, p5}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 254
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 255
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 256
    return-void
.end method


# virtual methods
.method public checkUri(Lcom/upsight/android/logger/UpsightLogger;Landroid/net/Uri;)Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;
    .locals 9
    .param p1, "logger"    # Lcom/upsight/android/logger/UpsightLogger;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 199
    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "host":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "scheme":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 203
    :cond_0
    sget-object v5, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Invalid URI, host or scheme is null or empty: %s."

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {p1, v5, v6, v7}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    sget-object v5, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;->INVALID:Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    .line 230
    :goto_0
    return-object v5

    .line 207
    :cond_1
    const-string v5, "playhaven"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "com.playhaven.android"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 208
    const-string v5, "activity"

    invoke-virtual {p2, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 209
    sget-object v5, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;->ACTIVITY:Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    goto :goto_0

    .line 211
    :cond_2
    const-string v5, "placement"

    invoke-virtual {p2, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 212
    sget-object v5, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;->PLACEMENT:Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    goto :goto_0

    .line 214
    :cond_3
    const-string v5, "content_id"

    invoke-virtual {p2, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 215
    sget-object v5, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;->PLACEMENT:Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    goto :goto_0

    .line 217
    :cond_4
    sget-object v5, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;->DEFAULT:Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    goto :goto_0

    .line 223
    :cond_5
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v5, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    .line 224
    .local v4, "testIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 230
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    if-nez v2, :cond_6

    sget-object v5, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;->INVALID:Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    goto :goto_0

    .line 225
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    .end local v4    # "testIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Nothing registered for %s"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p2, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {p1, v5, v6, v7}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    sget-object v5, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;->INVALID:Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    goto :goto_0

    .line 230
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v4    # "testIntent":Landroid/content/Intent;
    :cond_6
    sget-object v5, Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;->CUSTOM:Lcom/upsight/android/googlepushservices/internal/PushIntentService$UriTypes;

    goto :goto_0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 85
    invoke-static {p0}, Lcom/upsight/android/Upsight;->createContext(Landroid/content/Context;)Lcom/upsight/android/UpsightContext;

    move-result-object v2

    const-string v3, "com.upsight.extension.googlepushservices"

    invoke-virtual {v2, v3}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/UpsightGooglePushServicesExtension;

    check-cast v2, Lcom/upsight/android/UpsightGooglePushServicesExtension;

    invoke-virtual {v2}, Lcom/upsight/android/UpsightGooglePushServicesExtension;->getComponent()Lcom/upsight/android/UpsightExtension$BaseComponent;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesComponent;

    invoke-interface {v2, p0}, Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesComponent;->inject(Lcom/upsight/android/googlepushservices/internal/PushIntentService;)V

    .line 89
    iget-object v2, p0, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->mGcm:Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getMessageType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "messageType":Ljava/lang/String;
    const-string v2, "gcm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 93
    .local v0, "extras":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->message_id:Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    invoke-virtual {v2}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 94
    invoke-direct {p0, v0}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->interpretPushEvent(Landroid/os/Bundle;)V

    .line 97
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_0
    invoke-static {p1}, Lcom/upsight/android/googlepushservices/internal/PushBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 98
    return-void
.end method

.method parsePushIds(Landroid/net/Uri;Landroid/os/Bundle;Lcom/upsight/android/logger/UpsightLogger;)Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "logger"    # Lcom/upsight/android/logger/UpsightLogger;

    .prologue
    const/4 v5, 0x0

    .line 111
    sget-object v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->message_id:Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    invoke-virtual {v0}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->INVALID_MSG_ID:Ljava/lang/Integer;

    invoke-static {v0, v1, p3}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->parseAsInt(Ljava/lang/String;Ljava/lang/Integer;Lcom/upsight/android/logger/UpsightLogger;)Ljava/lang/Integer;

    move-result-object v2

    .line 114
    .local v2, "messageId":Ljava/lang/Integer;
    sget-object v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->msg_campaign_id:Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    invoke-virtual {v0}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5, p3}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->parseAsInt(Ljava/lang/String;Ljava/lang/Integer;Lcom/upsight/android/logger/UpsightLogger;)Ljava/lang/Integer;

    move-result-object v3

    .line 117
    .local v3, "campaignId":Ljava/lang/Integer;
    sget-object v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->content_id:Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;

    invoke-virtual {v0}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushParams;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5, p3}, Lcom/upsight/android/googlepushservices/internal/PushIntentService;->parseAsInt(Ljava/lang/String;Ljava/lang/Integer;Lcom/upsight/android/logger/UpsightLogger;)Ljava/lang/Integer;

    move-result-object v4

    .line 120
    .local v4, "contentId":Ljava/lang/Integer;
    new-instance v0, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/upsight/android/googlepushservices/internal/PushIntentService$PushIds;-><init>(Lcom/upsight/android/googlepushservices/internal/PushIntentService;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/upsight/android/googlepushservices/internal/PushIntentService$1;)V

    return-object v0
.end method
