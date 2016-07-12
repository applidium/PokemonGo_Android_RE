.class Landroid/support/v4/app/BundleCompatDonut;
.super Ljava/lang/Object;
.source "BundleCompatDonut.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BundleCompatDonut"

.field private static sGetIBinderMethod:Ljava/lang/reflect/Method;

.field private static sGetIBinderMethodFetched:Z

.field private static sPutIBinderMethod:Ljava/lang/reflect/Method;

.field private static sPutIBinderMethodFetched:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 8
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 39
    sget-boolean v1, Landroid/support/v4/app/BundleCompatDonut;->sGetIBinderMethodFetched:Z

    if-nez v1, :cond_0

    .line 41
    :try_start_0
    const-class v1, Landroid/os/Bundle;

    const-string v3, "getIBinder"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/v4/app/BundleCompatDonut;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    .line 42
    sget-object v1, Landroid/support/v4/app/BundleCompatDonut;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    sput-boolean v7, Landroid/support/v4/app/BundleCompatDonut;->sGetIBinderMethodFetched:Z

    .line 49
    :cond_0
    sget-object v1, Landroid/support/v4/app/BundleCompatDonut;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 51
    :try_start_1
    sget-object v1, Landroid/support/v4/app/BundleCompatDonut;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 58
    :goto_1
    return-object v1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "BundleCompatDonut"

    const-string v3, "Failed to retrieve getIBinder method"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 52
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    const-string v1, "BundleCompatDonut"

    const-string v3, "Failed to invoke getIBinder via reflection"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    sput-object v2, Landroid/support/v4/app/BundleCompatDonut;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v1, v2

    .line 58
    goto :goto_1

    .line 52
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public static putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 7
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    const/4 v6, 0x1

    .line 62
    sget-boolean v1, Landroid/support/v4/app/BundleCompatDonut;->sPutIBinderMethodFetched:Z

    if-nez v1, :cond_0

    .line 64
    :try_start_0
    const-class v1, Landroid/os/Bundle;

    const-string v2, "putIBinder"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/v4/app/BundleCompatDonut;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    .line 66
    sget-object v1, Landroid/support/v4/app/BundleCompatDonut;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    sput-boolean v6, Landroid/support/v4/app/BundleCompatDonut;->sPutIBinderMethodFetched:Z

    .line 73
    :cond_0
    sget-object v1, Landroid/support/v4/app/BundleCompatDonut;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 75
    :try_start_1
    sget-object v1, Landroid/support/v4/app/BundleCompatDonut;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 82
    :cond_1
    :goto_1
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "BundleCompatDonut"

    const-string v2, "Failed to retrieve putIBinder method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 76
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    const-string v1, "BundleCompatDonut"

    const-string v2, "Failed to invoke putIBinder via reflection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    const/4 v1, 0x0

    sput-object v1, Landroid/support/v4/app/BundleCompatDonut;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    goto :goto_1

    .line 76
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2
.end method
