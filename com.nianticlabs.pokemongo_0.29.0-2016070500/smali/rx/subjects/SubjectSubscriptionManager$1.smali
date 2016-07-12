.class Lrx/subjects/SubjectSubscriptionManager$1;
.super Ljava/lang/Object;
.source "SubjectSubscriptionManager.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/subjects/SubjectSubscriptionManager;->addUnsubscriber(Lrx/Subscriber;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/subjects/SubjectSubscriptionManager;

.field final synthetic val$bo:Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;


# direct methods
.method constructor <init>(Lrx/subjects/SubjectSubscriptionManager;Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V
    .locals 0

    .prologue
    .line 68
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$1;, "Lrx/subjects/SubjectSubscriptionManager.1;"
    iput-object p1, p0, Lrx/subjects/SubjectSubscriptionManager$1;->this$0:Lrx/subjects/SubjectSubscriptionManager;

    iput-object p2, p0, Lrx/subjects/SubjectSubscriptionManager$1;->val$bo:Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 71
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager$1;, "Lrx/subjects/SubjectSubscriptionManager.1;"
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager$1;->this$0:Lrx/subjects/SubjectSubscriptionManager;

    iget-object v1, p0, Lrx/subjects/SubjectSubscriptionManager$1;->val$bo:Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    invoke-virtual {v0, v1}, Lrx/subjects/SubjectSubscriptionManager;->remove(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V

    .line 72
    return-void
.end method
