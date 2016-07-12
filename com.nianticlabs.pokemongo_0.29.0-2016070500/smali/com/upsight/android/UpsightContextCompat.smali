.class Lcom/upsight/android/UpsightContextCompat;
.super Lcom/upsight/android/UpsightContext;
.source "UpsightContextCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/UpsightContextCompat$1;,
        Lcom/upsight/android/UpsightContextCompat$NoOpLogger;,
        Lcom/upsight/android/UpsightContextCompat$NoOpDataStore;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 32
    new-instance v6, Lcom/upsight/android/UpsightContextCompat$NoOpDataStore;

    invoke-direct {v6, v2}, Lcom/upsight/android/UpsightContextCompat$NoOpDataStore;-><init>(Lcom/upsight/android/UpsightContextCompat$1;)V

    new-instance v7, Lcom/upsight/android/UpsightContextCompat$NoOpLogger;

    invoke-direct {v7, v2}, Lcom/upsight/android/UpsightContextCompat$NoOpLogger;-><init>(Lcom/upsight/android/UpsightContextCompat$1;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/upsight/android/UpsightContext;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/upsight/android/persistence/UpsightDataStore;Lcom/upsight/android/logger/UpsightLogger;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getCoreComponent()Lcom/upsight/android/UpsightCoreComponent;
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUpsightExtension(Ljava/lang/String;)Lcom/upsight/android/UpsightExtension;
    .locals 1
    .param p1, "extensionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/upsight/android/UpsightExtension",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method
