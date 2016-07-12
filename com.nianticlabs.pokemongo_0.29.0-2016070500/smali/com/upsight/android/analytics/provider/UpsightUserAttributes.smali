.class public abstract Lcom/upsight/android/analytics/provider/UpsightUserAttributes;
.super Ljava/lang/Object;
.source "UpsightUserAttributes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;
    }
.end annotation


# static fields
.field public static final USER_ATTRIBUTES_PREFIX:Ljava/lang/String; = "com.upsight.user_attribute."


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    return-void
.end method

.method public static getBoolean(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5
    .param p0, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 149
    const-string v1, "com.upsight.extension.analytics"

    invoke-virtual {p0, v1}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightAnalyticsExtension;

    .line 150
    .local v0, "extension":Lcom/upsight/android/UpsightAnalyticsExtension;
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0}, Lcom/upsight/android/UpsightAnalyticsExtension;->getApi()Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/upsight/android/analytics/UpsightAnalyticsApi;->getBooleanUserAttribute(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 155
    :goto_0
    return-object v1

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v2, "Upsight"

    const-string v3, "com.upsight.extension.analytics must be registered in your Android Manifest"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getDefault(Lcom/upsight/android/UpsightContext;)Ljava/util/Set;
    .locals 5
    .param p0, "upsight"    # Lcom/upsight/android/UpsightContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/upsight/android/UpsightContext;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    const-string v1, "com.upsight.extension.analytics"

    invoke-virtual {p0, v1}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightAnalyticsExtension;

    .line 181
    .local v0, "extension":Lcom/upsight/android/UpsightAnalyticsExtension;
    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Lcom/upsight/android/UpsightAnalyticsExtension;->getApi()Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    move-result-object v1

    invoke-interface {v1}, Lcom/upsight/android/analytics/UpsightAnalyticsApi;->getDefaultUserAttributes()Ljava/util/Set;

    move-result-object v1

    .line 186
    :goto_0
    return-object v1

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v2, "Upsight"

    const-string v3, "com.upsight.extension.analytics must be registered in your Android Manifest"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    goto :goto_0
.end method

.method public static getFloat(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Ljava/lang/Float;
    .locals 5
    .param p0, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 165
    const-string v1, "com.upsight.extension.analytics"

    invoke-virtual {p0, v1}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightAnalyticsExtension;

    .line 166
    .local v0, "extension":Lcom/upsight/android/UpsightAnalyticsExtension;
    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Lcom/upsight/android/UpsightAnalyticsExtension;->getApi()Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/upsight/android/analytics/UpsightAnalyticsApi;->getFloatUserAttribute(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    .line 171
    :goto_0
    return-object v1

    .line 169
    :cond_0
    invoke-virtual {p0}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v2, "Upsight"

    const-string v3, "com.upsight.extension.analytics must be registered in your Android Manifest"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getInteger(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5
    .param p0, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 133
    const-string v1, "com.upsight.extension.analytics"

    invoke-virtual {p0, v1}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightAnalyticsExtension;

    .line 134
    .local v0, "extension":Lcom/upsight/android/UpsightAnalyticsExtension;
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Lcom/upsight/android/UpsightAnalyticsExtension;->getApi()Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/upsight/android/analytics/UpsightAnalyticsApi;->getIntUserAttribute(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 139
    :goto_0
    return-object v1

    .line 137
    :cond_0
    invoke-virtual {p0}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v2, "Upsight"

    const-string v3, "com.upsight.extension.analytics must be registered in your Android Manifest"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getString(Lcom/upsight/android/UpsightContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 117
    const-string v1, "com.upsight.extension.analytics"

    invoke-virtual {p0, v1}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightAnalyticsExtension;

    .line 118
    .local v0, "extension":Lcom/upsight/android/UpsightAnalyticsExtension;
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Lcom/upsight/android/UpsightAnalyticsExtension;->getApi()Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/upsight/android/analytics/UpsightAnalyticsApi;->getStringUserAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    :goto_0
    return-object v1

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v2, "Upsight"

    const-string v3, "com.upsight.extension.analytics must be registered in your Android Manifest"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static put(Lcom/upsight/android/UpsightContext;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 5
    .param p0, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 82
    const-string v1, "com.upsight.extension.analytics"

    invoke-virtual {p0, v1}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightAnalyticsExtension;

    .line 83
    .local v0, "extension":Lcom/upsight/android/UpsightAnalyticsExtension;
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/upsight/android/UpsightAnalyticsExtension;->getApi()Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/upsight/android/analytics/UpsightAnalyticsApi;->putUserAttribute(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v2, "Upsight"

    const-string v3, "com.upsight.extension.analytics must be registered in your Android Manifest"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static put(Lcom/upsight/android/UpsightContext;Ljava/lang/String;Ljava/lang/Float;)V
    .locals 5
    .param p0, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Float;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 102
    const-string v1, "com.upsight.extension.analytics"

    invoke-virtual {p0, v1}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightAnalyticsExtension;

    .line 103
    .local v0, "extension":Lcom/upsight/android/UpsightAnalyticsExtension;
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Lcom/upsight/android/UpsightAnalyticsExtension;->getApi()Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/upsight/android/analytics/UpsightAnalyticsApi;->putUserAttribute(Ljava/lang/String;Ljava/lang/Float;)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v2, "Upsight"

    const-string v3, "com.upsight.extension.analytics must be registered in your Android Manifest"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static put(Lcom/upsight/android/UpsightContext;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 5
    .param p0, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 62
    const-string v1, "com.upsight.extension.analytics"

    invoke-virtual {p0, v1}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightAnalyticsExtension;

    .line 63
    .local v0, "extension":Lcom/upsight/android/UpsightAnalyticsExtension;
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Lcom/upsight/android/UpsightAnalyticsExtension;->getApi()Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/upsight/android/analytics/UpsightAnalyticsApi;->putUserAttribute(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v2, "Upsight"

    const-string v3, "com.upsight.extension.analytics must be registered in your Android Manifest"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static put(Lcom/upsight/android/UpsightContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 42
    const-string v1, "com.upsight.extension.analytics"

    invoke-virtual {p0, v1}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightAnalyticsExtension;

    .line 43
    .local v0, "extension":Lcom/upsight/android/UpsightAnalyticsExtension;
    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Lcom/upsight/android/UpsightAnalyticsExtension;->getApi()Lcom/upsight/android/analytics/UpsightAnalyticsApi;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/upsight/android/analytics/UpsightAnalyticsApi;->putUserAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v2, "Upsight"

    const-string v3, "com.upsight.extension.analytics must be registered in your Android Manifest"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
.end method

.method public abstract getDefault()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/analytics/provider/UpsightUserAttributes$Entry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFloat(Ljava/lang/String;)Ljava/lang/Float;
.end method

.method public abstract getInt(Ljava/lang/String;)Ljava/lang/Integer;
.end method

.method public abstract getString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract put(Ljava/lang/String;Ljava/lang/Boolean;)V
.end method

.method public abstract put(Ljava/lang/String;Ljava/lang/Float;)V
.end method

.method public abstract put(Ljava/lang/String;Ljava/lang/Integer;)V
.end method

.method public abstract put(Ljava/lang/String;Ljava/lang/String;)V
.end method
