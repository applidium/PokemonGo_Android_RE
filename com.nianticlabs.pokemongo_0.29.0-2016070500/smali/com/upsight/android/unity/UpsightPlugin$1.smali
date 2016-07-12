.class Lcom/upsight/android/unity/UpsightPlugin$1;
.super Ljava/lang/Object;
.source "UpsightPlugin.java"

# interfaces
.implements Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnUnregisterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/unity/UpsightPlugin;->unregisterForPushNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/unity/UpsightPlugin;


# direct methods
.method constructor <init>(Lcom/upsight/android/unity/UpsightPlugin;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/upsight/android/unity/UpsightPlugin$1;->this$0:Lcom/upsight/android/unity/UpsightPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/upsight/android/UpsightException;)V
    .locals 3
    .param p1, "e"    # Lcom/upsight/android/UpsightException;

    .prologue
    .line 185
    const-string v0, "Upsight"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregistration failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 180
    const-string v0, "Upsight"

    const-string v1, "unregistration succeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void
.end method
