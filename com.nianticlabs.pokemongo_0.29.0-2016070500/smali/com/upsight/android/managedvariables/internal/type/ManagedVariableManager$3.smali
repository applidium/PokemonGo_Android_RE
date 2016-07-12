.class Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$3;
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
        "Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;

.field final synthetic val$clazz:Ljava/lang/Class;

.field final synthetic val$listener:Lcom/upsight/android/managedvariables/type/UpsightManagedVariable$Listener;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;Ljava/lang/String;Lcom/upsight/android/managedvariables/type/UpsightManagedVariable$Listener;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$3;->this$0:Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;

    iput-object p2, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$3;->val$tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$3;->val$listener:Lcom/upsight/android/managedvariables/type/UpsightManagedVariable$Listener;

    iput-object p4, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$3;->val$clazz:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;)V
    .locals 7
    .param p1, "model"    # Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;

    .prologue
    .line 146
    iget-object v2, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$3;->this$0:Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;

    # getter for: Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->mCache:Ljava/util/Map;
    invoke-static {v2}, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->access$000(Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;)Ljava/util/Map;

    move-result-object v3

    monitor-enter v3

    .line 148
    :try_start_0
    iget-object v2, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$3;->this$0:Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;

    # getter for: Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->mCache:Ljava/util/Map;
    invoke-static {v2}, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->access$000(Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;)Ljava/util/Map;

    move-result-object v2

    iget-object v4, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$3;->val$tag:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;

    .line 149
    .local v0, "cachedVariable":Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;
    if-eqz v0, :cond_0

    .line 151
    iget-object v2, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$3;->val$listener:Lcom/upsight/android/managedvariables/type/UpsightManagedVariable$Listener;

    invoke-interface {v2, v0}, Lcom/upsight/android/managedvariables/type/UpsightManagedVariable$Listener;->onSuccess(Ljava/lang/Object;)V

    .line 164
    :goto_0
    monitor-exit v3

    .line 165
    return-void

    .line 154
    :cond_0
    iget-object v2, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$3;->this$0:Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;

    iget-object v4, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$3;->val$clazz:Ljava/lang/Class;

    iget-object v5, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$3;->val$tag:Ljava/lang/String;

    # invokes: Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->fromModel(Ljava/lang/Class;Ljava/lang/String;Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;)Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;
    invoke-static {v2, v4, v5, p1}, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->access$100(Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;Ljava/lang/Class;Ljava/lang/String;Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;)Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;

    move-result-object v1

    .line 155
    .local v1, "managedVariable":Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;, "TT;"
    if-eqz v1, :cond_1

    .line 157
    iget-object v2, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$3;->this$0:Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;

    # getter for: Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->mCache:Ljava/util/Map;
    invoke-static {v2}, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;->access$000(Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager;)Ljava/util/Map;

    move-result-object v2

    iget-object v4, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$3;->val$tag:Ljava/lang/String;

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v2, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$3;->val$listener:Lcom/upsight/android/managedvariables/type/UpsightManagedVariable$Listener;

    invoke-interface {v2, v1}, Lcom/upsight/android/managedvariables/type/UpsightManagedVariable$Listener;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 164
    .end local v0    # "cachedVariable":Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;
    .end local v1    # "managedVariable":Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;, "TT;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 161
    .restart local v0    # "cachedVariable":Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;
    .restart local v1    # "managedVariable":Lcom/upsight/android/managedvariables/internal/type/ManagedVariable;, "TT;"
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$3;->val$listener:Lcom/upsight/android/managedvariables/type/UpsightManagedVariable$Listener;

    new-instance v4, Lcom/upsight/android/UpsightException;

    const-string v5, "Invalid managed variable tag"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-direct {v4, v5, v6}, Lcom/upsight/android/UpsightException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Lcom/upsight/android/managedvariables/type/UpsightManagedVariable$Listener;->onFailure(Lcom/upsight/android/UpsightException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 143
    check-cast p1, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/upsight/android/managedvariables/internal/type/ManagedVariableManager$3;->call(Lcom/upsight/android/managedvariables/internal/type/ManagedVariableModel;)V

    return-void
.end method
