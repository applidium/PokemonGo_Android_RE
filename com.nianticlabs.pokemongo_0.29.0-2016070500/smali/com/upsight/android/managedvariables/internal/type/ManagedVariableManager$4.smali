.class Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$4;
.super Ljava/lang/Object;
.source "ManagedVariableManager.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->fetch(Ljava/lang/Class;Ljava/lang/String;Lcom/upsight/android/managedvariables/type/UpsightManagedVariable$Listener;)Lcom/upsight/android/persistence/UpsightSubscription;
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
.field final synthetic this$0:Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;

.field final synthetic val$listener:Lcom/upsight/android/managedvariables/type/UpsightManagedVariable$Listener;


# direct methods
.method constructor <init>(Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;Lcom/upsight/android/managedvariables/type/UpsightManagedVariable$Listener;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$4;->this$0:Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;

    iput-object p2, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$4;->val$listener:Lcom/upsight/android/managedvariables/type/UpsightManagedVariable$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 166
    check-cast p1, Ljava/lang/Throwable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$4;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public call(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$4;->val$listener:Lcom/upsight/android/managedvariables/type/UpsightManagedVariable$Listener;

    new-instance v1, Lcom/upsight/android/UpsightException;

    invoke-direct {v1, p1}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/upsight/android/managedvariables/type/UpsightManagedVariable$Listener;->onFailure(Lcom/upsight/android/UpsightException;)V

    .line 170
    return-void
.end method
