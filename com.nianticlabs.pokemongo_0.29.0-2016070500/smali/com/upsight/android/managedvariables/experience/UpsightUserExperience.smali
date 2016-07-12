.class public abstract Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;
.super Ljava/lang/Object;
.source "UpsightUserExperience.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/managedvariables/experience/UpsightUserExperience$Handler;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method public static registerHandler(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/managedvariables/experience/UpsightUserExperience$Handler;)V
    .locals 5
    .param p0, "upsight"    # Lcom/upsight/android/UpsightContext;
    .param p1, "handler"    # Lcom/upsight/android/managedvariables/experience/UpsightUserExperience$Handler;

    .prologue
    .line 39
    const-string v1, "com.upsight.extension.managedvariables"

    invoke-virtual {p0, v1}, Lcom/upsight/android/UpsightContext;->getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;

    move-result-object v0

    check-cast v0, Lcom/upsight/android/UpsightManagedVariablesExtension;

    .line 40
    .local v0, "extension":Lcom/upsight/android/UpsightManagedVariablesExtension;
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0}, Lcom/upsight/android/UpsightManagedVariablesExtension;->getApi()Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/upsight/android/managedvariables/UpsightManagedVariablesApi;->registerUserExperienceHandler(Lcom/upsight/android/managedvariables/experience/UpsightUserExperience$Handler;)V

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/upsight/android/UpsightContext;->getLogger()Lcom/upsight/android/logger/UpsightLogger;

    move-result-object v1

    const-string v2, "Upsight"

    const-string v3, "com.upsight.extension.managedvariables must be registered in your Android Manifest"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/upsight/android/logger/UpsightLogger;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract getHandler()Lcom/upsight/android/managedvariables/experience/UpsightUserExperience$Handler;
.end method

.method public abstract registerHandler(Lcom/upsight/android/managedvariables/experience/UpsightUserExperience$Handler;)V
.end method
