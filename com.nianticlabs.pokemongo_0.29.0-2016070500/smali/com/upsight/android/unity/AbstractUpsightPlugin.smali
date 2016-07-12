.class public abstract Lcom/upsight/android/unity/AbstractUpsightPlugin;
.super Ljava/lang/Object;
.source "AbstractUpsightPlugin.java"


# static fields
.field protected static final MANAGER_NAME:Ljava/lang/String; = "UpsightManager"

.field protected static final TAG:Ljava/lang/String; = "Upsight"


# instance fields
.field private mUnityPlayerActivityField:Ljava/lang/reflect/Field;

.field private mUnityPlayerClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mUnitySendMessageMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    :try_start_0
    const-string v1, "com.unity3d.player.UnityPlayer"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/upsight/android/unity/AbstractUpsightPlugin;->mUnityPlayerClass:Ljava/lang/Class;

    .line 31
    iget-object v1, p0, Lcom/upsight/android/unity/AbstractUpsightPlugin;->mUnityPlayerClass:Ljava/lang/Class;

    const-string v2, "currentActivity"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lcom/upsight/android/unity/AbstractUpsightPlugin;->mUnityPlayerActivityField:Ljava/lang/reflect/Field;

    .line 32
    iget-object v1, p0, Lcom/upsight/android/unity/AbstractUpsightPlugin;->mUnityPlayerClass:Ljava/lang/Class;

    const-string v2, "UnitySendMessage"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/upsight/android/unity/AbstractUpsightPlugin;->mUnitySendMessageMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 40
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v1, "Upsight"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not find UnityPlayer class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 35
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v1, "Upsight"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not find currentActivity field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 37
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Upsight"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unkown exception occurred locating getActivity(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public UnitySendMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "parameter"    # Ljava/lang/String;

    .prologue
    .line 59
    if-eqz p2, :cond_0

    move-object v1, p2

    .line 62
    .local v1, "nonNullParameter":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/upsight/android/unity/AbstractUpsightPlugin;->mUnitySendMessageMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 64
    :try_start_0
    iget-object v2, p0, Lcom/upsight/android/unity/AbstractUpsightPlugin;->mUnitySendMessageMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "UpsightManager"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 84
    :goto_1
    return-void

    .line 59
    .end local v1    # "nonNullParameter":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 65
    .restart local v1    # "nonNullParameter":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "Upsight"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not find UnitySendMessage method: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 67
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "Upsight"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not find UnitySendMessage method: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 69
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "Upsight"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not find UnitySendMessage method: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 73
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_1
    const-string v2, "Upsight"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UnitySendMessage: UpsightManager, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v2, Lcom/upsight/android/unity/AbstractUpsightPlugin$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/upsight/android/unity/AbstractUpsightPlugin$1;-><init>(Lcom/upsight/android/unity/AbstractUpsightPlugin;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/upsight/android/unity/AbstractUpsightPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1
.end method

.method protected getActivity()Landroid/app/Activity;
    .locals 5

    .prologue
    .line 43
    iget-object v2, p0, Lcom/upsight/android/unity/AbstractUpsightPlugin;->mUnityPlayerActivityField:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_1

    .line 45
    :try_start_0
    iget-object v2, p0, Lcom/upsight/android/unity/AbstractUpsightPlugin;->mUnityPlayerActivityField:Ljava/lang/reflect/Field;

    iget-object v3, p0, Lcom/upsight/android/unity/AbstractUpsightPlugin;->mUnityPlayerClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 46
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 47
    const-string v2, "Upsight"

    const-string v3, "Something has gone terribly wrong. The Unity Activity does not exist. This could be due to a low memory situation"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-object v0

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Upsight"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error getting currentActivity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected runSafelyOnUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/upsight/android/unity/AbstractUpsightPlugin;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 88
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 89
    new-instance v1, Lcom/upsight/android/unity/AbstractUpsightPlugin$2;

    invoke-direct {v1, p0, p1}, Lcom/upsight/android/unity/AbstractUpsightPlugin$2;-><init>(Lcom/upsight/android/unity/AbstractUpsightPlugin;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 100
    :cond_0
    return-void
.end method
