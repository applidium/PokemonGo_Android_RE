.class public final Lcom/upsight/android/internal/ObjectMapperModule_ProvideObjectMapperFactory;
.super Ljava/lang/Object;
.source "ObjectMapperModule_ProvideObjectMapperFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/fasterxml/jackson/databind/ObjectMapper;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final module:Lcom/upsight/android/internal/ObjectMapperModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/upsight/android/internal/ObjectMapperModule_ProvideObjectMapperFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/upsight/android/internal/ObjectMapperModule_ProvideObjectMapperFactory;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/upsight/android/internal/ObjectMapperModule;)V
    .locals 1
    .param p1, "module"    # Lcom/upsight/android/internal/ObjectMapperModule;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-boolean v0, Lcom/upsight/android/internal/ObjectMapperModule_ProvideObjectMapperFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 13
    :cond_0
    iput-object p1, p0, Lcom/upsight/android/internal/ObjectMapperModule_ProvideObjectMapperFactory;->module:Lcom/upsight/android/internal/ObjectMapperModule;

    .line 14
    return-void
.end method

.method public static create(Lcom/upsight/android/internal/ObjectMapperModule;)Ldagger/internal/Factory;
    .locals 1
    .param p0, "module"    # Lcom/upsight/android/internal/ObjectMapperModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/internal/ObjectMapperModule;",
            ")",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/fasterxml/jackson/databind/ObjectMapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lcom/upsight/android/internal/ObjectMapperModule_ProvideObjectMapperFactory;

    invoke-direct {v0, p0}, Lcom/upsight/android/internal/ObjectMapperModule_ProvideObjectMapperFactory;-><init>(Lcom/upsight/android/internal/ObjectMapperModule;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 3

    .prologue
    .line 18
    iget-object v1, p0, Lcom/upsight/android/internal/ObjectMapperModule_ProvideObjectMapperFactory;->module:Lcom/upsight/android/internal/ObjectMapperModule;

    invoke-virtual {v1}, Lcom/upsight/android/internal/ObjectMapperModule;->provideObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    .line 19
    .local v0, "provided":Lcom/fasterxml/jackson/databind/ObjectMapper;
    if-nez v0, :cond_0

    .line 20
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 22
    :cond_0
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/upsight/android/internal/ObjectMapperModule_ProvideObjectMapperFactory;->get()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    return-object v0
.end method
