.class Lcom/upsight/android/internal/persistence/DataStore$14;
.super Ljava/lang/Object;
.source "DataStore.java"

# interfaces
.implements Lrx/functions/Func1;


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
        "Lrx/functions/Func1",
        "<",
        "Lcom/upsight/android/internal/persistence/Storable;",
        "Lrx/Observable",
        "<",
        "Lcom/upsight/android/internal/persistence/Storable;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/internal/persistence/DataStore;


# direct methods
.method constructor <init>(Lcom/upsight/android/internal/persistence/DataStore;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/upsight/android/internal/persistence/DataStore$14;->this$0:Lcom/upsight/android/internal/persistence/DataStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 330
    check-cast p1, Lcom/upsight/android/internal/persistence/Storable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/upsight/android/internal/persistence/DataStore$14;->call(Lcom/upsight/android/internal/persistence/Storable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Lcom/upsight/android/internal/persistence/Storable;)Lrx/Observable;
    .locals 1
    .param p1, "storable"    # Lcom/upsight/android/internal/persistence/Storable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/internal/persistence/Storable;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/upsight/android/internal/persistence/Storable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 333
    iget-object v0, p0, Lcom/upsight/android/internal/persistence/DataStore$14;->this$0:Lcom/upsight/android/internal/persistence/DataStore;

    # getter for: Lcom/upsight/android/internal/persistence/DataStore;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/upsight/android/internal/persistence/DataStore;->access$000(Lcom/upsight/android/internal/persistence/DataStore;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/upsight/android/internal/persistence/ContentObservables;->remove(Landroid/content/Context;Lcom/upsight/android/internal/persistence/Storable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
