.class Lcom/upsight/android/internal/persistence/DataStore$15;
.super Ljava/lang/Object;
.source "DataStore.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/internal/persistence/DataStore;->removeObservable(Ljava/lang/Class;[Ljava/lang/String;)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<TT;",
        "Lrx/Observable",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/internal/persistence/DataStore;


# direct methods
.method constructor <init>(Lcom/upsight/android/internal/persistence/DataStore;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/upsight/android/internal/persistence/DataStore$15;->this$0:Lcom/upsight/android/internal/persistence/DataStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 370
    invoke-virtual {p0, p1}, Lcom/upsight/android/internal/persistence/DataStore$15;->call(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public call(Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 373
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/upsight/android/internal/persistence/DataStore$15;->this$0:Lcom/upsight/android/internal/persistence/DataStore;

    invoke-virtual {v0, p1}, Lcom/upsight/android/internal/persistence/DataStore;->removeObservable(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
