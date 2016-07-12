.class final Lcom/upsight/android/analytics/internal/provider/OptOutStatus;
.super Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;
.source "OptOutStatus.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final PREFERENCES_KEY_OPT_OUT:Ljava/lang/String; = "optOut"


# instance fields
.field mUpsight:Lcom/upsight/android/UpsightContext;


# direct methods
.method constructor <init>(Lcom/upsight/android/UpsightContext;)V
    .locals 0
    .param p1, "upsight"    # Lcom/upsight/android/UpsightContext;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/upsight/android/analytics/provider/UpsightOptOutStatus;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/upsight/android/analytics/internal/provider/OptOutStatus;->mUpsight:Lcom/upsight/android/UpsightContext;

    .line 25
    return-void
.end method


# virtual methods
.method public get()Z
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/OptOutStatus;->mUpsight:Lcom/upsight/android/UpsightContext;

    const-string v1, "optOut"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/upsight/android/internal/util/PreferencesHelper;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public set(Z)V
    .locals 2
    .param p1, "optOut"    # Z

    .prologue
    .line 33
    iget-object v0, p0, Lcom/upsight/android/analytics/internal/provider/OptOutStatus;->mUpsight:Lcom/upsight/android/UpsightContext;

    const-string v1, "optOut"

    invoke-static {v0, v1, p1}, Lcom/upsight/android/internal/util/PreferencesHelper;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 34
    return-void
.end method
