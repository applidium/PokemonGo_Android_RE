.class final Lrx/subscriptions/Subscriptions$Unsubscribed;
.super Ljava/lang/Object;
.source "Subscriptions.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subscriptions/Subscriptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Unsubscribed"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lrx/subscriptions/Subscriptions$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/subscriptions/Subscriptions$1;

    .prologue
    .line 125
    invoke-direct {p0}, Lrx/subscriptions/Subscriptions$Unsubscribed;-><init>()V

    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method public unsubscribe()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method
