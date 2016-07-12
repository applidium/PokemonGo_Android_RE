.class public final Lcom/upsight/android/analytics/internal/session/SessionModule_ProvidesSessionManagerFactory;
.super Ljava/lang/Object;
.source "SessionModule_ProvidesSessionManagerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/upsight/android/analytics/internal/session/SessionManager;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final module:Lcom/upsight/android/analytics/internal/session/SessionModule;

.field private final sessionManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/upsight/android/analytics/internal/session/SessionModule_ProvidesSessionManagerFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/upsight/android/analytics/internal/session/SessionModule_ProvidesSessionManagerFactory;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/upsight/android/analytics/internal/session/SessionModule;Ljavax/inject/Provider;)V
    .locals 1
    .param p1, "module"    # Lcom/upsight/android/analytics/internal/session/SessionModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/analytics/internal/session/SessionModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p2, "sessionManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-boolean v0, Lcom/upsight/android/analytics/internal/session/SessionModule_ProvidesSessionManagerFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 14
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/session/SessionModule_ProvidesSessionManagerFactory;->module:Lcom/upsight/android/analytics/internal/session/SessionModule;

    .line 15
    sget-boolean v0, Lcom/upsight/android/analytics/internal/session/SessionModule_ProvidesSessionManagerFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 16
    :cond_1
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/session/SessionModule_ProvidesSessionManagerFactory;->sessionManagerProvider:Ljavax/inject/Provider;

    .line 17
    return-void
.end method

.method public static create(Lcom/upsight/android/analytics/internal/session/SessionModule;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .param p0, "module"    # Lcom/upsight/android/analytics/internal/session/SessionModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/analytics/internal/session/SessionModule;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;",
            ">;)",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/upsight/android/analytics/internal/session/SessionManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "sessionManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;>;"
    new-instance v0, Lcom/upsight/android/analytics/internal/session/SessionModule_ProvidesSessionManagerFactory;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/analytics/internal/session/SessionModule_ProvidesSessionManagerFactory;-><init>(Lcom/upsight/android/analytics/internal/session/SessionModule;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/upsight/android/analytics/internal/session/SessionManager;
    .locals 3

    .prologue
    .line 21
    iget-object v2, p0, Lcom/upsight/android/analytics/internal/session/SessionModule_ProvidesSessionManagerFactory;->module:Lcom/upsight/android/analytics/internal/session/SessionModule;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/session/SessionModule_ProvidesSessionManagerFactory;->sessionManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;

    invoke-virtual {v2, v1}, Lcom/upsight/android/analytics/internal/session/SessionModule;->providesSessionManager(Lcom/upsight/android/analytics/internal/session/SessionManagerImpl;)Lcom/upsight/android/analytics/internal/session/SessionManager;

    move-result-object v0

    .line 22
    .local v0, "provided":Lcom/upsight/android/analytics/internal/session/SessionManager;
    if-nez v0, :cond_0

    .line 23
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_0
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/upsight/android/analytics/internal/session/SessionModule_ProvidesSessionManagerFactory;->get()Lcom/upsight/android/analytics/internal/session/SessionManager;

    move-result-object v0

    return-object v0
.end method
