.class Lcom/upsight/android/UpsightGooglePushServicesExtension$1;
.super Ljava/lang/Object;
.source "UpsightGooglePushServicesExtension.java"

# interfaces
.implements Lcom/upsight/android/googlepushservices/UpsightGooglePushServices$OnRegisterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/upsight/android/UpsightGooglePushServicesExtension;->onPostCreate(Lcom/upsight/android/UpsightContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/upsight/android/UpsightGooglePushServicesExtension;


# direct methods
.method constructor <init>(Lcom/upsight/android/UpsightGooglePushServicesExtension;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/upsight/android/UpsightGooglePushServicesExtension$1;->this$0:Lcom/upsight/android/UpsightGooglePushServicesExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/upsight/android/UpsightException;)V
    .locals 0
    .param p1, "e"    # Lcom/upsight/android/UpsightException;

    .prologue
    .line 62
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 0
    .param p1, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 57
    return-void
.end method
