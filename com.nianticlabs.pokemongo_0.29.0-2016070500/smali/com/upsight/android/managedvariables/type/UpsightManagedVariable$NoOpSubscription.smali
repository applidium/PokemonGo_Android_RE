.class public Lcom/upsight/android/managedvariables/type/UpsightManagedVariable$NoOpSubscription;
.super Ljava/lang/Object;
.source "UpsightManagedVariable.java"

# interfaces
.implements Lcom/upsight/android/persistence/UpsightSubscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/managedvariables/type/UpsightManagedVariable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "NoOpSubscription"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSubscribed()Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public unsubscribe()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method
