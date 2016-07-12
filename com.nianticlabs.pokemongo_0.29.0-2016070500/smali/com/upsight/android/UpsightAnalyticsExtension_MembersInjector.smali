.class public final Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;
.super Ljava/lang/Object;
.source "UpsightAnalyticsExtension_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/upsight/android/UpsightAnalyticsExtension;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAnalyticsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/UpsightAnalyticsApi;",
            ">;"
        }
    .end annotation
.end field

.field private final mAssociationManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/association/AssociationManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mClockProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/Clock;",
            ">;"
        }
    .end annotation
.end field

.field private final mUncaughtExceptionHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/internal/util/Opt",
            "<",
            "Ljava/lang/Thread$UncaughtExceptionHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUpsightLifeCycleCallbacksProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private final supertypeInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/upsight/android/UpsightExtension",
            "<",
            "Lcom/upsight/android/analytics/UpsightAnalyticsComponent;",
            "Lcom/upsight/android/analytics/UpsightAnalyticsApi;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/upsight/android/UpsightExtension",
            "<",
            "Lcom/upsight/android/analytics/UpsightAnalyticsComponent;",
            "Lcom/upsight/android/analytics/UpsightAnalyticsApi;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/internal/util/Opt",
            "<",
            "Ljava/lang/Thread$UncaughtExceptionHandler;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/UpsightAnalyticsApi;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/Clock;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/association/AssociationManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "supertypeInjector":Ldagger/MembersInjector;, "Ldagger/MembersInjector<Lcom/upsight/android/UpsightExtension<Lcom/upsight/android/analytics/UpsightAnalyticsComponent;Lcom/upsight/android/analytics/UpsightAnalyticsApi;>;>;"
    .local p2, "mUncaughtExceptionHandlerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/internal/util/Opt<Ljava/lang/Thread$UncaughtExceptionHandler;>;>;"
    .local p3, "mAnalyticsProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/UpsightAnalyticsApi;>;"
    .local p4, "mClockProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/session/Clock;>;"
    .local p5, "mUpsightLifeCycleCallbacksProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/app/Application$ActivityLifecycleCallbacks;>;"
    .local p6, "mAssociationManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/association/AssociationManager;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-boolean v0, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 25
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;->supertypeInjector:Ldagger/MembersInjector;

    .line 26
    sget-boolean v0, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 27
    :cond_1
    iput-object p2, p0, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;->mUncaughtExceptionHandlerProvider:Ljavax/inject/Provider;

    .line 28
    sget-boolean v0, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 29
    :cond_2
    iput-object p3, p0, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;->mAnalyticsProvider:Ljavax/inject/Provider;

    .line 30
    sget-boolean v0, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 31
    :cond_3
    iput-object p4, p0, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;->mClockProvider:Ljavax/inject/Provider;

    .line 32
    sget-boolean v0, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 33
    :cond_4
    iput-object p5, p0, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;->mUpsightLifeCycleCallbacksProvider:Ljavax/inject/Provider;

    .line 34
    sget-boolean v0, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    if-nez p6, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 35
    :cond_5
    iput-object p6, p0, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;->mAssociationManagerProvider:Ljavax/inject/Provider;

    .line 36
    return-void
.end method

.method public static create(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/upsight/android/UpsightExtension",
            "<",
            "Lcom/upsight/android/analytics/UpsightAnalyticsComponent;",
            "Lcom/upsight/android/analytics/UpsightAnalyticsApi;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/internal/util/Opt",
            "<",
            "Ljava/lang/Thread$UncaughtExceptionHandler;",
            ">;>;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/UpsightAnalyticsApi;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/session/Clock;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/analytics/internal/association/AssociationManager;",
            ">;)",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/upsight/android/UpsightAnalyticsExtension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "supertypeInjector":Ldagger/MembersInjector;, "Ldagger/MembersInjector<Lcom/upsight/android/UpsightExtension<Lcom/upsight/android/analytics/UpsightAnalyticsComponent;Lcom/upsight/android/analytics/UpsightAnalyticsApi;>;>;"
    .local p1, "mUncaughtExceptionHandlerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/internal/util/Opt<Ljava/lang/Thread$UncaughtExceptionHandler;>;>;"
    .local p2, "mAnalyticsProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/UpsightAnalyticsApi;>;"
    .local p3, "mClockProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/session/Clock;>;"
    .local p4, "mUpsightLifeCycleCallbacksProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Landroid/app/Application$ActivityLifecycleCallbacks;>;"
    .local p5, "mAssociationManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/analytics/internal/association/AssociationManager;>;"
    new-instance v0, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;-><init>(Ldagger/MembersInjector;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public injectMembers(Lcom/upsight/android/UpsightAnalyticsExtension;)V
    .locals 2
    .param p1, "instance"    # Lcom/upsight/android/UpsightAnalyticsExtension;

    .prologue
    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;->supertypeInjector:Ldagger/MembersInjector;

    invoke-interface {v0, p1}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;->mUncaughtExceptionHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/internal/util/Opt;

    iput-object v0, p1, Lcom/upsight/android/UpsightAnalyticsExtension;->mUncaughtExceptionHandler:Lcom/upsight/android/internal/util/Opt;

    .line 45
    iget-object v0, p0, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;->mAnalyticsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    iput-object v0, p1, Lcom/upsight/android/UpsightAnalyticsExtension;->mAnalytics:Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    .line 46
    iget-object v0, p0, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;->mClockProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/session/Clock;

    iput-object v0, p1, Lcom/upsight/android/UpsightAnalyticsExtension;->mClock:Lcom/upsight/android/analytics/internal/session/Clock;

    .line 47
    iget-object v0, p0, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;->mUpsightLifeCycleCallbacksProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    iput-object v0, p1, Lcom/upsight/android/UpsightAnalyticsExtension;->mUpsightLifeCycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 48
    iget-object v0, p0, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;->mAssociationManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/internal/association/AssociationManager;

    iput-object v0, p1, Lcom/upsight/android/UpsightAnalyticsExtension;->mAssociationManager:Lcom/upsight/android/analytics/internal/association/AssociationManager;

    .line 49
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 14
    check-cast p1, Lcom/upsight/android/UpsightAnalyticsExtension;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/upsight/android/UpsightAnalyticsExtension_MembersInjector;->injectMembers(Lcom/upsight/android/UpsightAnalyticsExtension;)V

    return-void
.end method
