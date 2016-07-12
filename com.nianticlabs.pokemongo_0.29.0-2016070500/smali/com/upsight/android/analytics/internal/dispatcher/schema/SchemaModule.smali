.class public final Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaModule;
.super Ljava/lang/Object;
.source "SchemaModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideSchemaSelectorBuilder(Lcom/upsight/android/UpsightContext;)Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;
    .locals 1
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .prologue
    .line 20
    new-instance v0, Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;

    invoke-direct {v0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/schema/SchemaSelectorBuilder;-><init>(Lcom/upsight/android/UpsightContext;)V

    return-object v0
.end method
