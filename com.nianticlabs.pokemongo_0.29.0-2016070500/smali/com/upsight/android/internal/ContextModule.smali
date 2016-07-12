.class public final Lcom/upsight/android/internal/ContextModule;
.super Ljava/lang/Object;
.source "ContextModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/internal/ContextModule$3;
    }
.end annotation


# instance fields
.field private final mApplicationContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/internal/ContextModule;->mApplicationContext:Landroid/content/Context;

    .line 30
    return-void
.end method


# virtual methods
.method provideApplicationContext()Landroid/content/Context;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/upsight/android/internal/ContextModule;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method provideBus()Lcom/squareup/otto/Bus;
    .locals 2
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcom/squareup/otto/Bus;

    sget-object v1, Lcom/squareup/otto/ThreadEnforcer;->ANY:Lcom/squareup/otto/ThreadEnforcer;

    invoke-direct {v0, v1}, Lcom/squareup/otto/Bus;-><init>(Lcom/squareup/otto/ThreadEnforcer;)V

    return-object v0
.end method

.method provideLogWriter()Lcom/upsight/android/internal/logger/LogWriter;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lcom/upsight/android/internal/ContextModule$1;

    invoke-direct {v0, p0}, Lcom/upsight/android/internal/ContextModule$1;-><init>(Lcom/upsight/android/internal/ContextModule;)V

    return-object v0
.end method

.method provideTypeIdGenerator()Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 91
    new-instance v0, Lcom/upsight/android/internal/ContextModule$2;

    invoke-direct {v0, p0}, Lcom/upsight/android/internal/ContextModule$2;-><init>(Lcom/upsight/android/internal/ContextModule;)V

    return-object v0
.end method
