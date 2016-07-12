.class public final Lrx/internal/util/PlatformDependent;
.super Ljava/lang/Object;
.source "PlatformDependent.java"


# static fields
.field private static final IS_ANDROID:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lrx/internal/util/PlatformDependent;->isAndroid0()Z

    move-result v0

    sput-boolean v0, Lrx/internal/util/PlatformDependent;->IS_ANDROID:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getSystemClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 55
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lrx/internal/util/PlatformDependent$1;

    invoke-direct {v0}, Lrx/internal/util/PlatformDependent$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public static isAndroid()Z
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lrx/internal/util/PlatformDependent;->IS_ANDROID:Z

    return v0
.end method

.method private static isAndroid0()Z
    .locals 5

    .prologue
    .line 40
    :try_start_0
    const-string v2, "android.app.Application"

    const/4 v3, 0x0

    invoke-static {}, Lrx/internal/util/PlatformDependent;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    const/4 v0, 0x1

    .line 47
    .local v0, "android":Z
    :goto_0
    return v0

    .line 42
    .end local v0    # "android":Z
    :catch_0
    move-exception v1

    .line 44
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .restart local v0    # "android":Z
    goto :goto_0
.end method
