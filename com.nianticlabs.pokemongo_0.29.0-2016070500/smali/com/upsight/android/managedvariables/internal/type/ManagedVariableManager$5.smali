.class Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$5;
.super Ljava/lang/Object;
.source "ManagedVariableManager.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->fetchDataStoreObservable(Ljava/lang/Class;Ljava/lang/String;)Lrx/Observable;
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
        "Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;

.field final synthetic val$clazz:Ljava/lang/Class;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$5;->this$0:Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;

    iput-object p2, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$5;->val$clazz:Ljava/lang/Class;

    iput-object p3, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$5;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "model"    # Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;

    .prologue
    .line 236
    iget-object v1, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$5;->this$0:Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;

    # getter for: Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->mUxmSchema:Lcom/upsight/android/managedvariables/internal/type/UxmSchema;
    invoke-static {v1}, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->access$200(Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;)Lcom/upsight/android/managedvariables/internal/type/UxmSchema;

    move-result-object v1

    iget-object v2, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$5;->val$clazz:Ljava/lang/Class;

    iget-object v3, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$5;->val$tag:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/upsight/android/managedvariables/internal/type/UxmSchema;->get(Ljava/lang/Class;Ljava/lang/String;)Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;

    move-result-object v0

    .line 237
    .local v0, "itemSchema":Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;
    iget-object v1, v0, Lcom/upsight/android/managedvariables/internal/type/UxmSchema$BaseSchema;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 233
    check-cast p1, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$5;->call(Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
