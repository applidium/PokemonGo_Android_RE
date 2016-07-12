.class final Lcom/upsight/android/analytics/internal/provider/UserAttributes;
.super Lcom/upsight/android/analytics/provider/UpsightUserAttributes;
.source "UserAttributes.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private mLogger:Lcom/upsight/android/logger/UpsightLogger;

.field private mUpsight:Lcom/upsight/android/UpsightContext;

.field private mUserAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mUserAttributesSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/upsight/android/UpsightContext;)V
    .locals 1
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributesSet:Ljava/util/Set;

    .line 43
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 44
    invoke-virtual {p1}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    .line 45
    invoke-direct {p0}, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->loadDefaultAttributes()V

    .line 46
    return-void
.end method

.method private loadDefaultAttributes()V
    .locals 12

    .prologue
    .line 202
    :try_start_0
    iget-object v7, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v7}, Lcom/upsight/android/UpsightContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-virtual {v8}, Lcom/upsight/android/UpsightContext;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x80

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 204
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 205
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 206
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 207
    .local v5, "metaDataKey":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "com.upsight.user_attribute."

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 209
    const/16 v7, 0x2e

    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 210
    .local v6, "userAttribute":Ljava/lang/String;
    new-instance v2, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    .local v2, "entry":Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;
    iget-object v7, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v7, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v7, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributesSet:Ljava/util/Set;

    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "entry":Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "metaDataKey":Ljava/lang/String;
    .end local v6    # "userAttribute":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 217
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v7, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v8, "Upsight"

    const-string v9, "Unexpected error: Package name missing!?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-interface {v7, v8, v9, v10}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    return-void
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 162
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v1, "Upsight"

    const-string v2, "No metadata found with android:name %s%s in the Android Manifest"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "com.upsight.user_attribute."

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No metadata found with android:name %s%s in the Android Manifest"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "com.upsight.user_attribute."

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    const-class v1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v2, "Upsight"

    const-string v3, "The user attribute %s must be of type: %s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v5

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0, v3}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The user attribute %s must be of type: %s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v5

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :cond_1
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUpsight:Lcom/upsight/android/UpsightContext;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.upsight.user_attribute."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/upsight/android/internal/util/PreferencesHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getDefault()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributesSet:Ljava/util/Set;

    return-object v0
.end method

.method public getFloat(Ljava/lang/String;)Ljava/lang/Float;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 178
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v1, "Upsight"

    const-string v2, "No metadata found with android:name %s%s in the Android Manifest"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "com.upsight.user_attribute."

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No metadata found with android:name %s%s in the Android Manifest"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "com.upsight.user_attribute."

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    const-class v1, Ljava/lang/Float;

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v2, "Upsight"

    const-string v3, "The user attribute %s must be of type: %s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v5

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0, v3}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The user attribute %s must be of type: %s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v5

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 188
    :cond_1
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUpsight:Lcom/upsight/android/UpsightContext;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.upsight.user_attribute."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/upsight/android/internal/util/PreferencesHelper;->getFloat(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 146
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v1, "Upsight"

    const-string v2, "No metadata found with android:name %s%s in the Android Manifest"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "com.upsight.user_attribute."

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No metadata found with android:name %s%s in the Android Manifest"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "com.upsight.user_attribute."

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    const-class v1, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v2, "Upsight"

    const-string v3, "The user attribute %s must be of type: %s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v5

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0, v3}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The user attribute %s must be of type: %s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v5

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_1
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUpsight:Lcom/upsight/android/UpsightContext;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.upsight.user_attribute."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/upsight/android/internal/util/PreferencesHelper;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 130
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v1, "Upsight"

    const-string v2, "No metadata found with android:name %s%s in the Android Manifest"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "com.upsight.user_attribute."

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No metadata found with android:name %s%s in the Android Manifest"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "com.upsight.user_attribute."

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_0
    const-class v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v2, "Upsight"

    const-string v3, "The user attribute %s must be of type: %s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v5

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0, v3}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The user attribute %s must be of type: %s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v5

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUpsight:Lcom/upsight/android/UpsightContext;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.upsight.user_attribute."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/upsight/android/internal/util/PreferencesHelper;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 90
    if-nez p2, :cond_0

    .line 91
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v0, p1}, Lcom/upsight/android/internal/util/PreferencesHelper;->clear(Landroid/content/Context;Ljava/lang/String;)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    const-class v1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v2, "Upsight"

    const-string v3, "The user attribute %s must be of type: %s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v5

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0, v3}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The user attribute %s must be of type: %s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v5

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUpsight:Lcom/upsight/android/UpsightContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.upsight.user_attribute."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/upsight/android/internal/util/PreferencesHelper;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 106
    return-void

    .line 103
    :cond_2
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v1, "Upsight"

    const-string v2, "No metadata found with android:name %s%s in the Android Manifest"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "com.upsight.user_attribute."

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No metadata found with android:name %s%s in the Android Manifest"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "com.upsight.user_attribute."

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Float;)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Float;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 110
    if-nez p2, :cond_0

    .line 111
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v0, p1}, Lcom/upsight/android/internal/util/PreferencesHelper;->clear(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    const-class v1, Ljava/lang/Float;

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v2, "Upsight"

    const-string v3, "The user attribute %s must be of type: %s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v5

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0, v3}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The user attribute %s must be of type: %s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v5

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUpsight:Lcom/upsight/android/UpsightContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.upsight.user_attribute."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/upsight/android/internal/util/PreferencesHelper;->putFloat(Landroid/content/Context;Ljava/lang/String;F)V

    .line 126
    return-void

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v1, "Upsight"

    const-string v2, "No metadata found with android:name %s%s in the Android Manifest"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "com.upsight.user_attribute."

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No metadata found with android:name %s%s in the Android Manifest"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "com.upsight.user_attribute."

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Integer;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 70
    if-nez p2, :cond_0

    .line 71
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v0, p1}, Lcom/upsight/android/internal/util/PreferencesHelper;->clear(Landroid/content/Context;Ljava/lang/String;)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    const-class v1, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v2, "Upsight"

    const-string v3, "The user attribute %s must be of type: %s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v5

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0, v3}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The user attribute %s must be of type: %s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v5

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUpsight:Lcom/upsight/android/UpsightContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.upsight.user_attribute."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/upsight/android/internal/util/PreferencesHelper;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 86
    return-void

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v1, "Upsight"

    const-string v2, "No metadata found with android:name %s%s in the Android Manifest"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "com.upsight.user_attribute."

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No metadata found with android:name %s%s in the Android Manifest"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "com.upsight.user_attribute."

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 50
    if-nez p2, :cond_0

    .line 51
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUpsight:Lcom/upsight/android/UpsightContext;

    invoke-static {v0, p1}, Lcom/upsight/android/internal/util/PreferencesHelper;->clear(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    const-class v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    iget-object v1, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v2, "Upsight"

    const-string v3, "The user attribute %s must be of type: %s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v5

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v0, v3}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The user attribute %s must be of type: %s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v5

    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUserAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;

    invoke-virtual {v0}, Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;->getType()Ljava/lang/Class;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mUpsight:Lcom/upsight/android/UpsightContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.upsight.user_attribute."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/upsight/android/internal/util/PreferencesHelper;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/UserAttributes;->mLogger:Lcom/upsight/android/logger/UpsightLogger;

    const-string v1, "Upsight"

    const-string v2, "No metadata found with android:name %s%s in the Android Manifest"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "com.upsight.user_attribute."

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/upsight/android/logger/UpsightLogger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No metadata found with android:name %s%s in the Android Manifest"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "com.upsight.user_attribute."

    aput-object v3, v2, v5

    aput-object p1, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
