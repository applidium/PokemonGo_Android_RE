.class Lcom/upsight/android/internal/persistence/storable/StorableIdentifierNoopAccessor;
.super Ljava/lang/Object;
.source "StorableIdentifierNoopAccessor.java"

# interfaces
.implements Lcom/upsight/android/internal/persistence/storable/StorableIdentifierAccessor;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/upsight/android/UpsightException;
        }
    .end annotation

    .prologue
    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public setId(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/upsight/android/UpsightException;
        }
    .end annotation

    .prologue
    .line 13
    return-void
.end method
