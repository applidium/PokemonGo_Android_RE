.class Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent;
.super Ljava/lang/Object;
.source "DataStoreEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;
    }
.end annotation


# instance fields
.field public final action:Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;

.field public final source:Ljava/lang/Object;

.field public final sourceType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "action"    # Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;
    .param p2, "sourceType"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/Object;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent;->action:Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent$Action;

    .line 26
    iput-object p2, p0, Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent;->sourceType:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/upsight/android/internal/persistence/subscription/DataStoreEvent;->source:Ljava/lang/Object;

    .line 28
    return-void
.end method
