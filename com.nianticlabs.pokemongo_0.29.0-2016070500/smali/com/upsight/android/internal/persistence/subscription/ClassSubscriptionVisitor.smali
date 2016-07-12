.class interface abstract Lcom/upsight/android/internal/persistence/subscription/ClassSubscriptionVisitor;
.super Ljava/lang/Object;
.source "ClassSubscriptionVisitor.java"


# virtual methods
.method public abstract visitCreatedSubscription(Ljava/lang/reflect/Method;Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract visitRemovedSubscription(Ljava/lang/reflect/Method;Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation
.end method

.method public abstract visitUpdatedSubscription(Ljava/lang/reflect/Method;Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation
.end method
