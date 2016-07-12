.class public interface abstract Lcom/upsight/android/analytics/internal/session/SessionManager;
.super Ljava/lang/Object;
.source "SessionManager.java"


# static fields
.field public static final CONFIGURATION_SUBTYPE:Ljava/lang/String; = "upsight.configuration.session_manager"

.field public static final DEFAULT_CONFIGURATION:Ljava/lang/String; = "{\"session_gap\": 120}"

.field public static final SESSION_CAMPAIGN_ID:Ljava/lang/String; = "campaign_id"

.field public static final SESSION_EXTRA:Ljava/lang/String; = "session_extra"

.field public static final SESSION_MESSAGE_ID:Ljava/lang/String; = "message_id"


# virtual methods
.method public abstract getCurrentSession()Lcom/upsight/android/analytics/internal/session/Session;
.end method

.method public abstract startSession(Lcom/upsight/android/analytics/internal/session/SessionInitializer;)Lcom/upsight/android/analytics/internal/session/Session;
.end method

.method public abstract stopSession()V
.end method
