.class public final Lcom/upsight/android/analytics/internal/session/ConfigParser_Factory;
.super Ljava/lang/Object;
.source "ConfigParser_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/upsight/android/analytics/internal/session/ConfigParser;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mapperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/fasterxml/jackson/databind/ObjectMapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/upsight/android/analytics/internal/session/ConfigParser_Factory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/upsight/android/analytics/internal/session/ConfigParser_Factory;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/fasterxml/jackson/databind/ObjectMapper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p1, "mapperProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/fasterxml/jackson/databind/ObjectMapper;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-boolean v0, Lcom/upsight/android/analytics/internal/session/ConfigParser_Factory;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 14
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/session/ConfigParser_Factory;->mapperProvider:Ljavax/inject/Provider;

    .line 15
    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/fasterxml/jackson/databind/ObjectMapper;",
            ">;)",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/upsight/android/analytics/internal/session/ConfigParser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "mapperProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/fasterxml/jackson/databind/ObjectMapper;>;"
    new-instance v0, Lcom/upsight/android/analytics/internal/session/ConfigParser_Factory;

    invoke-direct {v0, p0}, Lcom/upsight/android/analytics/internal/session/ConfigParser_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/upsight/android/analytics/internal/session/ConfigParser;
    .locals 2

    .prologue
    .line 19
    new-instance v1, Lcom/upsight/android/analytics/internal/session/ConfigParser;

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/session/ConfigParser_Factory;->mapperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v1, v0}, Lcom/upsight/android/analytics/internal/session/ConfigParser;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    return-object v1
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/upsight/android/analytics/internal/session/ConfigParser_Factory;->get()Lcom/upsight/android/analytics/internal/session/ConfigParser;

    move-result-object v0

    return-object v0
.end method
