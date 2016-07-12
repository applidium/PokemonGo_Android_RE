.class Lcom/upsight/android/internal/persistence/DataStore$4;
.super Ljava/lang/Object;
.source "DataStore.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/internal/persistence/DataStore;->fetch(Ljava/lang/Class;Ljava/util/Set;Lcom/upsight/android/persistence/UpsightDataStoreListener;)Lcom/upsight/android/persistence/UpsightSubscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/internal/persistence/DataStore;

.field final synthetic val$listener:Lcom/upsight/android/persistence/UpsightDataStoreListener;


# direct methods
.method constructor <init>(Lcom/upsight/android/internal/persistence/DataStore;Lcom/upsight/android/persistence/UpsightDataStoreListener;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/upsight/android/internal/persistence/DataStore$4;->this$0:Lcom/upsight/android/internal/persistence/DataStore;

    iput-object p2, p0, Lcom/upsight/android/internal/persistence/DataStore$4;->val$listener:Lcom/upsight/android/persistence/UpsightDataStoreListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 112
    check-cast p1, Ljava/lang/Throwable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/upsight/android/internal/persistence/DataStore$4;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/upsight/android/internal/persistence/DataStore$4;->val$listener:Lcom/upsight/android/persistence/UpsightDataStoreListener;

    new-instance v1, Lcom/upsight/android/UpsightException;

    invoke-direct {v1, p1}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/upsight/android/persistence/UpsightDataStoreListener;->onFailure(Lcom/upsight/android/UpsightException;)V

    .line 116
    return-void
.end method
