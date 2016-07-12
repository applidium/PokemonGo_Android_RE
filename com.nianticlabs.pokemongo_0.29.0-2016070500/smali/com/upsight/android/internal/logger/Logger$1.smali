.class Lcom/upsight/android/internal/logger/Logger$1;
.super Ljava/lang/Object;
.source "Logger.java"

# interfaces
.implements Lcom/upsight/android/persistence/UpsightDataStoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/internal/logger/Logger;->log(Lcom/upsight/android/logger/UpsightLogger$Level;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/upsight/android/persistence/UpsightDataStoreListener",
        "<",
        "Lcom/upsight/android/internal/logger/LogMessage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/internal/logger/Logger;


# direct methods
.method constructor <init>(Lcom/upsight/android/internal/logger/Logger;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/upsight/android/internal/logger/Logger$1;->this$0:Lcom/upsight/android/internal/logger/Logger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/upsight/android/UpsightException;)V
    .locals 0
    .param p1, "exception"    # Lcom/upsight/android/UpsightException;

    .prologue
    .line 130
    return-void
.end method

.method public onSuccess(Lcom/upsight/android/internal/logger/LogMessage;)V
    .locals 1
    .param p1, "result"    # Lcom/upsight/android/internal/logger/LogMessage;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/upsight/android/internal/logger/Logger$1;->this$0:Lcom/upsight/android/internal/logger/Logger;

    # getter for: Lcom/upsight/android/internal/logger/Logger;->mDataStore:Lcom/upsight/android/persistence/UpsightDataStore;
    invoke-static {v0}, Lcom/upsight/android/internal/logger/Logger;->access$000(Lcom/upsight/android/internal/logger/Logger;)Lcom/upsight/android/persistence/UpsightDataStore;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/upsight/android/persistence/UpsightDataStore;->remove(Ljava/lang/Object;)Lcom/upsight/android/persistence/UpsightSubscription;

    .line 126
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 122
    check-cast p1, Lcom/upsight/android/internal/logger/LogMessage;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/upsight/android/internal/logger/Logger$1;->onSuccess(Lcom/upsight/android/internal/logger/LogMessage;)V

    return-void
.end method
