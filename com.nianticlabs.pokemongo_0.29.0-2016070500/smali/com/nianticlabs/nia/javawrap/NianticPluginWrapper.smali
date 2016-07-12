.class public Lcom/nianticlabs/nia/javawrap/NianticPluginWrapper;
.super Ljava/lang/Object;
.source "NianticPluginWrapper.java"


# instance fields
.field private nativeHandle:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeDispose()V
.end method

.method private native nativeGetApi()J
.end method

.method private native nativeInitialize()V
.end method


# virtual methods
.method public dispose()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/nianticlabs/nia/javawrap/NianticPluginWrapper;->nativeDispose()V

    .line 13
    return-void
.end method

.method public getApi()J
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/nianticlabs/nia/javawrap/NianticPluginWrapper;->nativeGetApi()J

    move-result-wide v0

    return-wide v0
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/nianticlabs/nia/javawrap/NianticPluginWrapper;->nativeInitialize()V

    .line 10
    return-void
.end method
