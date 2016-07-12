.class public final Lcom/upsight/android/analytics/internal/provider/LocationTracker_Factory;
.super Ljava/lang/Object;
.source "LocationTracker_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/upsight/android/analytics/internal/provider/LocationTracker;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final membersInjector:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/upsight/android/analytics/internal/provider/LocationTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final upsightProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/upsight/android/analytics/internal/provider/LocationTracker_Factory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/upsight/android/analytics/internal/provider/LocationTracker_Factory;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ldagger/MembersInjector;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/upsight/android/analytics/internal/provider/LocationTracker;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p1, "membersInjector":Ldagger/MembersInjector;, "Ldagger/MembersInjector<Lcom/upsight/android/analytics/internal/provider/LocationTracker;>;"
    .local p2, "upsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-boolean v0, Lcom/upsight/android/analytics/internal/provider/LocationTracker_Factory;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 16
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/provider/LocationTracker_Factory;->membersInjector:Ldagger/MembersInjector;

    .line 17
    sget-boolean v0, Lcom/upsight/android/analytics/internal/provider/LocationTracker_Factory;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 18
    :cond_1
    iput-object p2, p0, Lcom/upsight/android/analytics/internal/provider/LocationTracker_Factory;->upsightProvider:Ljavax/inject/Provider;

    .line 19
    return-void
.end method

.method public static create(Ldagger/MembersInjector;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/upsight/android/analytics/internal/provider/LocationTracker;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/upsight/android/UpsightContext;",
            ">;)",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/upsight/android/analytics/internal/provider/LocationTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "membersInjector":Ldagger/MembersInjector;, "Ldagger/MembersInjector<Lcom/upsight/android/analytics/internal/provider/LocationTracker;>;"
    .local p1, "upsightProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/upsight/android/UpsightContext;>;"
    new-instance v0, Lcom/upsight/android/analytics/internal/provider/LocationTracker_Factory;

    invoke-direct {v0, p0, p1}, Lcom/upsight/android/analytics/internal/provider/LocationTracker_Factory;-><init>(Ldagger/MembersInjector;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/upsight/android/analytics/internal/provider/LocationTracker;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/upsight/android/analytics/internal/provider/LocationTracker;

    iget-object v1, p0, Lcom/upsight/android/analytics/internal/provider/LocationTracker_Factory;->upsightProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/UpsightContext;

    invoke-direct {v0, v1}, Lcom/upsight/android/analytics/internal/provider/LocationTracker;-><init>(Lcom/upsight/android/UpsightContext;)V

    .line 24
    .local v0, "instance":Lcom/upsight/android/analytics/internal/provider/LocationTracker;
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/provider/LocationTracker_Factory;->membersInjector:Ldagger/MembersInjector;

    invoke-interface {v1, v0}, Ldagger/MembersInjector;->injectMembers(Ljava/lang/Object;)V

    .line 25
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/upsight/android/analytics/internal/provider/LocationTracker_Factory;->get()Lcom/upsight/android/analytics/internal/provider/LocationTracker;

    move-result-object v0

    return-object v0
.end method
