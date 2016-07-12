.class final Lrx/subscriptions/SerialSubscription$State;
.super Ljava/lang/Object;
.source "SerialSubscription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subscriptions/SerialSubscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "State"
.end annotation


# instance fields
.field final isUnsubscribed:Z

.field final subscription:Lrx/Subscription;


# direct methods
.method constructor <init>(ZLrx/Subscription;)V
    .locals 0
    .param p1, "u"    # Z
    .param p2, "s"    # Lrx/Subscription;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean p1, p0, Lrx/subscriptions/SerialSubscription$State;->isUnsubscribed:Z

    .line 37
    iput-object p2, p0, Lrx/subscriptions/SerialSubscription$State;->subscription:Lrx/Subscription;

    .line 38
    return-void
.end method


# virtual methods
.method set(Lrx/Subscription;)Lrx/subscriptions/SerialSubscription$State;
    .locals 2
    .param p1, "s"    # Lrx/Subscription;

    .prologue
    .line 45
    new-instance v0, Lrx/subscriptions/SerialSubscription$State;

    iget-boolean v1, p0, Lrx/subscriptions/SerialSubscription$State;->isUnsubscribed:Z

    invoke-direct {v0, v1, p1}, Lrx/subscriptions/SerialSubscription$State;-><init>(ZLrx/Subscription;)V

    return-object v0
.end method

.method unsubscribe()Lrx/subscriptions/SerialSubscription$State;
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lrx/subscriptions/SerialSubscription$State;

    const/4 v1, 0x1

    iget-object v2, p0, Lrx/subscriptions/SerialSubscription$State;->subscription:Lrx/Subscription;

    invoke-direct {v0, v1, v2}, Lrx/subscriptions/SerialSubscription$State;-><init>(ZLrx/Subscription;)V

    return-object v0
.end method
