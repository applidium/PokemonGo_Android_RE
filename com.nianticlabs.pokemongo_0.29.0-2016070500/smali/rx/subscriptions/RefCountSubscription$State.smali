.class final Lrx/subscriptions/RefCountSubscription$State;
.super Ljava/lang/Object;
.source "RefCountSubscription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subscriptions/RefCountSubscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "State"
.end annotation


# instance fields
.field final children:I

.field final isUnsubscribed:Z


# direct methods
.method constructor <init>(ZI)V
    .locals 0
    .param p1, "u"    # Z
    .param p2, "c"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean p1, p0, Lrx/subscriptions/RefCountSubscription$State;->isUnsubscribed:Z

    .line 40
    iput p2, p0, Lrx/subscriptions/RefCountSubscription$State;->children:I

    .line 41
    return-void
.end method


# virtual methods
.method addChild()Lrx/subscriptions/RefCountSubscription$State;
    .locals 3

    .prologue
    .line 44
    new-instance v0, Lrx/subscriptions/RefCountSubscription$State;

    iget-boolean v1, p0, Lrx/subscriptions/RefCountSubscription$State;->isUnsubscribed:Z

    iget v2, p0, Lrx/subscriptions/RefCountSubscription$State;->children:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2}, Lrx/subscriptions/RefCountSubscription$State;-><init>(ZI)V

    return-object v0
.end method

.method removeChild()Lrx/subscriptions/RefCountSubscription$State;
    .locals 3

    .prologue
    .line 48
    new-instance v0, Lrx/subscriptions/RefCountSubscription$State;

    iget-boolean v1, p0, Lrx/subscriptions/RefCountSubscription$State;->isUnsubscribed:Z

    iget v2, p0, Lrx/subscriptions/RefCountSubscription$State;->children:I

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v1, v2}, Lrx/subscriptions/RefCountSubscription$State;-><init>(ZI)V

    return-object v0
.end method

.method unsubscribe()Lrx/subscriptions/RefCountSubscription$State;
    .locals 3

    .prologue
    .line 52
    new-instance v0, Lrx/subscriptions/RefCountSubscription$State;

    const/4 v1, 0x1

    iget v2, p0, Lrx/subscriptions/RefCountSubscription$State;->children:I

    invoke-direct {v0, v1, v2}, Lrx/subscriptions/RefCountSubscription$State;-><init>(ZI)V

    return-object v0
.end method
