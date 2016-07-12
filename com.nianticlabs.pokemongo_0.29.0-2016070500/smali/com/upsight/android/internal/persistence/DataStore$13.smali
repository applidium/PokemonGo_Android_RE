.class Lcom/upsight/android/internal/persistence/DataStore$13;
.super Ljava/lang/Object;
.source "DataStore.java"

# interfaces
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/internal/persistence/DataStore;->removeObservable(Ljava/lang/Object;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func2",
        "<",
        "Lcom/upsight/android/internal/persistence/Storable;",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/internal/persistence/DataStore;


# direct methods
.method constructor <init>(Lcom/upsight/android/internal/persistence/DataStore;)V
    .locals 0

    .prologue
    .line 336
    iput-object p1, p0, Lcom/upsight/android/internal/persistence/DataStore$13;->this$0:Lcom/upsight/android/internal/persistence/DataStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/upsight/android/internal/persistence/Storable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "storable"    # Lcom/upsight/android/internal/persistence/Storable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/internal/persistence/Storable;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 339
    .local p2, "t":Ljava/lang/Object;, "TT;"
    return-object p2
.end method

.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 336
    check-cast p1, Lcom/upsight/android/internal/persistence/Storable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/upsight/android/internal/persistence/DataStore$13;->call(Lcom/upsight/android/internal/persistence/Storable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
