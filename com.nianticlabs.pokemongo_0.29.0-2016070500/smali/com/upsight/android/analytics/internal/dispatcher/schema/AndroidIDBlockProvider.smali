.class public Lcom/upsight/android/analytics/internal/dispatcher/schema/AndroidIDBlockProvider;
.super Lcom/upsight/android/analytics/provider/UpsightDataProvider;
.source "AndroidIDBlockProvider.java"


# static fields
.field public static final ANDROID_ID_KEY:Ljava/lang/String; = "ids.android_id"

.field private static final ANDROID_ID_NON_UNIQUE:Ljava/lang/String; = "9774d56d682e549c"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/upsight/android/analytics/provider/UpsightDataProvider;-><init>()V

    .line 39
    const-string v0, "ids.android_id"

    invoke-direct {p0, p1}, Lcom/upsight/android/analytics/internal/dispatcher/schema/AndroidIDBlockProvider;->getAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/upsight/android/analytics/internal/dispatcher/schema/AndroidIDBlockProvider;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method private getAndroidID(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const-string v0, "9774d56d682e549c"

    .line 53
    .local v0, "androidID":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "secureId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 55
    move-object v0, v1

    .line 62
    :cond_0
    :goto_0
    return-object v0

    .line 57
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "systemId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 59
    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public availableKeys()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "ids.android_id"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
