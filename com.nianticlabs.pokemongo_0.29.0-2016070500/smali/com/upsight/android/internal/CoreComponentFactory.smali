.class public Lcom/upsight/android/internal/CoreComponentFactory;
.super Ljava/lang/Object;
.source "CoreComponentFactory.java"

# interfaces
.implements Lcom/upsight/android/UpsightCoreComponent$Factory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;)Lcom/upsight/android/UpsightCoreComponent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-static {}, Lcom/upsight/android/internal/DaggerCoreComponent;->builder()Lcom/upsight/android/internal/DaggerCoreComponent$Builder;

    move-result-object v0

    new-instance v1, Lcom/upsight/android/internal/ContextModule;

    invoke-direct {v1, p1}, Lcom/upsight/android/internal/ContextModule;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->contextModule(Lcom/upsight/android/internal/ContextModule;)Lcom/upsight/android/internal/DaggerCoreComponent$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upsight/android/internal/DaggerCoreComponent$Builder;->build()Lcom/upsight/android/internal/CoreComponent;

    move-result-object v0

    return-object v0
.end method
