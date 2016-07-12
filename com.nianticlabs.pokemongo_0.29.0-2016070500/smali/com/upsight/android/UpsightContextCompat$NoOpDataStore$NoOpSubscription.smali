.class Lcom/upsight/android/UpsightContextCompat$NoOpDataStore$NoOpSubscription;
.super Ljava/lang/Object;
.source "UpsightContextCompat.java"

# interfaces
.implements Lcom/upsight/android/persistence/UpsightSubscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/UpsightContextCompat$NoOpDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoOpSubscription"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/upsight/android/UpsightContextCompat$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/upsight/android/UpsightContextCompat$1;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/upsight/android/UpsightContextCompat$NoOpDataStore$NoOpSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method public isSubscribed()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public unsubscribe()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method
