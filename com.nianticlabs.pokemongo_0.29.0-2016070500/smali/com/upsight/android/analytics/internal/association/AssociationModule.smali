.class public final Lcom/upsight/android/analytics/internal/association/AssociationModule;
.super Ljava/lang/Object;
.source "AssociationModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideAssociationManager(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/analytics/internal/session/Clock;)Lcom/upsight/android/analytics/internal/association/AssociationManager;
    .locals 2
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p2, "clock"    # Lcom/upsight/android/analytics/internal/session/Clock;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 22
    new-instance v0, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;

    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getDataStore()Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/upsight/android/analytics/internal/association/AssociationManagerImpl;-><init>(Lcom/upsight/android/persistence/UpsightDataStore;Lcom/upsight/android/analytics/internal/session/Clock;)V

    return-object v0
.end method
