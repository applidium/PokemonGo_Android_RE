.class Lcom/upsight/android/unity/UnitySessionCallbacks$1;
.super Ljava/lang/Object;
.source "UnitySessionCallbacks.java"

# interfaces
.implements Lcom/upsight/android/managedvariables/experience/UpsightUserExperience$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/unity/UnitySessionCallbacks;->onStart(Lcom/upsight/android/UpsightContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/unity/UnitySessionCallbacks;


# direct methods
.method constructor <init>(Lcom/upsight/android/unity/UnitySessionCallbacks;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/upsight/android/unity/UnitySessionCallbacks$1;->this$0:Lcom/upsight/android/unity/UnitySessionCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive()Z
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/upsight/android/unity/UpsightPlugin;->instance()Lcom/upsight/android/unity/UpsightPlugin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/upsight/android/unity/UpsightPlugin;->getShouldSynchronizeManagedVariables()Z

    move-result v0

    return v0
.end method

.method public onSynchronize(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "UnitySessionCallbacks"

    const-string v4, "onSynchronize"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 39
    .local v1, "json":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 40
    .local v2, "t":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 42
    .end local v2    # "t":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/upsight/android/unity/UpsightPlugin;->instance()Lcom/upsight/android/unity/UpsightPlugin;

    move-result-object v3

    const-string v4, "managedVariablesDidSynchronize"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/upsight/android/unity/UpsightPlugin;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method
