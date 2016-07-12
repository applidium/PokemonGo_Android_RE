.class final Lrx/subscriptions/MultipleAssignmentSubscription$State;
.super Ljava/lang/Object;
.source "MultipleAssignmentSubscription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subscriptions/MultipleAssignmentSubscription;
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
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean p1, p0, Lrx/subscriptions/MultipleAssignmentSubscription$State;->isUnsubscribed:Z

    .line 39
    iput-object p2, p0, Lrx/subscriptions/MultipleAssignmentSubscription$State;->subscription:Lrx/Subscription;

    .line 40
    return-void
.end method


# virtual methods
.method set(Lrx/Subscription;)Lrx/subscriptions/MultipleAssignmentSubscription$State;
    .locals 2
    .param p1, "s"    # Lrx/Subscription;

    .prologue
    .line 47
    new-instance v0, Lrx/subscriptions/MultipleAssignmentSubscription$State;

    iget-boolean v1, p0, Lrx/subscriptions/MultipleAssignmentSubscription$State;->isUnsubscribed:Z

    invoke-direct {v0, v1, p1}, Lrx/subscriptions/MultipleAssignmentSubscription$State;-><init>(ZLrx/Subscription;)V

    return-object v0
.end method

.method unsubscribe()Lrx/subscriptions/MultipleAssignmentSubscription$State;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Lrx/subscriptions/MultipleAssignmentSubscription$State;

    const/4 v1, 0x1

    iget-object v2, p0, Lrx/subscriptions/MultipleAssignmentSubscription$State;->subscription:Lrx/Subscription;

    invoke-direct {v0, v1, v2}, Lrx/subscriptions/MultipleAssignmentSubscription$State;-><init>(ZLrx/Subscription;)V

    return-object v0
.end method
