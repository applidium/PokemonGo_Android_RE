.class public Lcom/nianticlabs/nia/unity/UnityUtil;
.super Ljava/lang/Object;
.source "UnityUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile activity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/nianticlabs/nia/unity/UnityUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nianticlabs/nia/unity/UnityUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivity()Landroid/app/Activity;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 13
    sget-object v3, Lcom/nianticlabs/nia/unity/UnityUtil;->activity:Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 14
    sget-object v3, Lcom/nianticlabs/nia/unity/UnityUtil;->activity:Landroid/app/Activity;

    .line 24
    .local v2, "unityPlayer":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v3

    .line 18
    .end local v2    # "unityPlayer":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_0
    const-string v3, "com.unity3d.player.UnityPlayer"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 19
    .restart local v2    # "unityPlayer":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "currentActivity"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 20
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    sput-object v3, Lcom/nianticlabs/nia/unity/UnityUtil;->activity:Landroid/app/Activity;

    .line 21
    sget-object v3, Lcom/nianticlabs/nia/unity/UnityUtil;->activity:Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 22
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 23
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/nianticlabs/nia/unity/UnityUtil;->TAG:Ljava/lang/String;

    const-string v5, "Unable to get currentActivity"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 24
    goto :goto_0
.end method

.method public static init()V
    .locals 0

    .prologue
    .line 29
    invoke-static {}, Lcom/nianticlabs/nia/unity/UnityUtil;->nativeInit()V

    .line 30
    return-void
.end method

.method private static native nativeInit()V
.end method
