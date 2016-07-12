.class Lcom/upsight/android/internal/ContextModule$2;
.super Ljava/lang/Object;
.source "ContextModule.java"

# interfaces
.implements Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/internal/ContextModule;->provideTypeIdGenerator()Lcom/upsight/android/internal/persistence/storable/StorableIdFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/internal/ContextModule;


# direct methods
.method constructor <init>(Lcom/upsight/android/internal/ContextModule;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/upsight/android/internal/ContextModule$2;->this$0:Lcom/upsight/android/internal/ContextModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createObjectID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
