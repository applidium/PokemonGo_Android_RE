.class public Lcom/voxelbusters/nativeplugins/utilities/SharedPreferencesUtility;
.super Ljava/lang/Object;
.source "SharedPreferencesUtility.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getJsonArray(Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 3
    .param p0, "preferencesName"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "keyName"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-static {p0, p1, p2}, Lcom/voxelbusters/nativeplugins/utilities/SharedPreferencesUtility;->getSharedPreferences(Ljava/lang/String;ILandroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 16
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    const-string v2, ""

    invoke-interface {v1, p3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "jsonData":Ljava/lang/String;
    invoke-static {v0}, Lcom/voxelbusters/nativeplugins/utilities/JSONUtility;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    return-object v2
.end method

.method public static getSharedPreferences(Ljava/lang/String;ILandroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "preferencesName"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-virtual {p2, p0, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 24
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    return-object v0
.end method

.method public static setJSONArray(Ljava/lang/String;ILandroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 3
    .param p0, "preferencesName"    # Ljava/lang/String;
    .param p1, "mode"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "keyName"    # Ljava/lang/String;
    .param p4, "array"    # Lorg/json/JSONArray;

    .prologue
    .line 31
    invoke-static {p0, p1, p2}, Lcom/voxelbusters/nativeplugins/utilities/SharedPreferencesUtility;->getSharedPreferences(Ljava/lang/String;ILandroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 32
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 33
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 34
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 35
    return-void
.end method
