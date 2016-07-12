.class public Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;
.super Landroid/app/IntentService;
.source "PushClickIntentService.java"


# static fields
.field private static final BUNDLE_KEY_MESSAGE_INTENT:Ljava/lang/String; = "messageIntent"

.field private static final NO_CMP_ID:Ljava/lang/Integer;

.field private static final NO_MSG_ID:Ljava/lang/Integer;

.field private static final SERVICE_NAME:Ljava/lang/String; = "UpsightGcmPushClickIntentService"


# instance fields
.field mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;->NO_MSG_ID:Ljava/lang/Integer;

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;->NO_CMP_ID:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "UpsightGcmPushClickIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method protected static appendMessageIntentBundle(Landroid/content/Intent;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/content/Intent;
    .locals 3
    .param p0, "messageIntent"    # Landroid/content/Intent;
    .param p1, "campaignId"    # Ljava/lang/Integer;
    .param p2, "messageId"    # Ljava/lang/Integer;

    .prologue
    .line 87
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 88
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p1, :cond_0

    .line 89
    const-string v1, "campaign_id"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    :cond_0
    if-eqz p2, :cond_1

    .line 92
    const-string v1, "message_id"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 96
    :cond_1
    const-string v1, "pushMessage"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 97
    const/high16 v1, 0x10000000

    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 98
    const-string v1, "session_extra"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method static newIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messageIntent"    # Landroid/content/Intent;
    .param p2, "campaignId"    # Ljava/lang/Integer;
    .param p3, "messageId"    # Ljava/lang/Integer;

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "messageIntent"

    invoke-static {p1, p2, p3}, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;->appendMessageIntentBundle(Landroid/content/Intent;Ljava/lang/Integer;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 50
    invoke-static {p0}, Lcom/upsight/android/Upsight;->createContext(Landroid/content/Context;)Lcom/upsight/android/UpsightContext;

    move-result-object v5

    .line 52
    .local v5, "upsight":Lcom/upsight/android/UpsightContext;
    const-string v6, "com.upsight.extension.googlepushservices"

    invoke-virtual {v5, v6}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v6

    check-cast v6, Lcom/upsight/android/UpsightGooglePushServicesExtension;

    check-cast v6, Lcom/upsight/android/UpsightGooglePushServicesExtension;

    invoke-virtual {v6}, Lcom/upsight/android/UpsightGooglePushServicesExtension;->getComponent()Lcom/upsight/android/UpsightExtension$BaseComponent;

    move-result-object v6

    check-cast v6, Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesComponent;

    invoke-interface {v6, p0}, Lcom/upsight/android/googlepushservices/UpsightGooglePushServicesComponent;->inject(Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;)V

    .line 56
    const-string v6, "messageIntent"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 57
    .local v3, "messageIntent":Landroid/content/Intent;
    const-string v6, "session_extra"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 60
    .local v2, "extras":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;->mSessionManager:Lcom/upsight/android/analytics/internal/session/SessionManager;

    .line 61
    .local v4, "sessionManager":Lcom/upsight/android/analytics/internal/session/SessionManager;
    sget-object v6, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;->BACKGROUND:Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    invoke-virtual {v6}, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/upsight/android/UpsightContext;->getDataStore()Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v6

    const-class v8, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;

    invoke-interface {v6, v8}, Lcom/upsight/android/persistence/UpsightDataStore;->fetchObservable(Ljava/lang/Class;)Lrx/Observable;

    move-result-object v6

    invoke-virtual {v6}, Lrx/Observable;->toBlocking()Lrx/observables/BlockingObservable;

    move-result-object v6

    invoke-virtual {v6}, Lrx/observables/BlockingObservable;->first()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;

    invoke-virtual {v6}, Lcom/upsight/android/analytics/internal/session/ApplicationStatus;->getState()Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;

    move-result-object v6

    invoke-virtual {v6}, Lcom/upsight/android/analytics/internal/session/ApplicationStatus$State;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 63
    invoke-static {v2}, Lcom/upsight/android/analytics/internal/session/SessionInitializerImpl;->fromPush(Landroid/os/Bundle;)Lcom/upsight/android/analytics/internal/session/SessionInitializer;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/upsight/android/analytics/internal/session/SessionManager;->startSession(Lcom/upsight/android/analytics/internal/session/SessionInitializer;)Lcom/upsight/android/analytics/internal/session/Session;

    .line 67
    :cond_0
    const-string v6, "message_id"

    sget-object v7, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;->NO_MSG_ID:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent;->createBuilder(Ljava/lang/Integer;)Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;

    move-result-object v1

    .line 71
    .local v1, "eventBuilder":Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;
    const-string v6, "campaign_id"

    sget-object v7, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;->NO_CMP_ID:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 72
    .local v0, "campaignId":Ljava/lang/Integer;
    sget-object v6, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;->NO_CMP_ID:Ljava/lang/Integer;

    invoke-virtual {v0, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 73
    invoke-virtual {v1, v0}, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;->setMsgCampaignId(Ljava/lang/Integer;)Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;

    .line 77
    :cond_1
    invoke-static {p0}, Lcom/upsight/android/Upsight;->createContext(Landroid/content/Context;)Lcom/upsight/android/UpsightContext;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/upsight/android/analytics/event/comm/UpsightCommClickEvent$Builder;->record(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/event/UpsightAnalyticsEvent;

    .line 80
    invoke-virtual {p0, v3}, Lcom/upsight/android/googlepushservices/internal/PushClickIntentService;->startActivity(Landroid/content/Intent;)V

    .line 81
    return-void
.end method
