.class public Lcom/upsight/android/unity/UnitySessionCallbacks;
.super Ljava/lang/Object;
.source "UnitySessionCallbacks.java"

# interfaces
.implements Lcom/upsight/android/analytics/session/UpsightSessionCallbacks;


# static fields
.field protected static final TAG:Ljava/lang/String; = "UnitySessionCallbacks"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Lcom/upsight/android/UpsightContext;)V
    .locals 1
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;

    .prologue
    .line 27
    new-instance v0, Lcom/upsight/android/unity/UnitySessionCallbacks$1;

    invoke-direct {v0, p0}, Lcom/upsight/android/unity/UnitySessionCallbacks$1;-><init>(Lcom/upsight/android/unity/UnitySessionCallbacks;)V

    invoke-static {p1, v0}, Lcom/upsight/android/managedvariables/experience/UpsightUserExperience;->registerHandler(Lcom/upsight/android/UpsightContext;Lcom/upsight/android/managedvariables/experience/UpsightUserExperience$Handler;)V

    .line 45
    return-void
.end method
