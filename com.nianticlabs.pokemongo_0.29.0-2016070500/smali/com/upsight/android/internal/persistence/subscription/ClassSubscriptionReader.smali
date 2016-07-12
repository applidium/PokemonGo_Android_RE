.class Lcom/upsight/android/internal/persistence/subscription/ClassSubscriptionReader;
.super Ljava/lang/Object;
.source "ClassSubscriptionReader.java"


# instance fields
.field private final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/upsight/android/internal/persistence/subscription/ClassSubscriptionReader;->mClass:Ljava/lang/Class;

    .line 21
    return-void
.end method

.method private isSubscriptionMethod(Ljava/lang/reflect/Method;)Z
    .locals 6
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 67
    :cond_0
    :goto_0
    return v2

    .line 52
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 53
    .local v0, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v4, v0

    if-ne v4, v3, :cond_0

    .line 57
    aget-object v4, v0, v2

    const-class v5, Lcom/upsight/android/persistence/annotation/UpsightStorableType;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/upsight/android/persistence/annotation/UpsightStorableType;

    .line 59
    .local v1, "storableType":Lcom/upsight/android/persistence/annotation/UpsightStorableType;
    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    .line 67
    goto :goto_0
.end method


# virtual methods
.method public accept(Lcom/upsight/android/internal/persistence/subscription/ClassSubscriptionVisitor;)V
    .locals 10
    .param p1, "visitor"    # Lcom/upsight/android/internal/persistence/subscription/ClassSubscriptionVisitor;

    .prologue
    .line 24
    iget-object v8, p0, Lcom/upsight/android/internal/persistence/subscription/ClassSubscriptionReader;->mClass:Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/reflect/Method;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_4

    aget-object v5, v1, v3

    .line 25
    .local v5, "method":Ljava/lang/reflect/Method;
    invoke-direct {p0, v5}, Lcom/upsight/android/internal/persistence/subscription/ClassSubscriptionReader;->isSubscriptionMethod(Ljava/lang/reflect/Method;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 24
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v0, v8, v9

    .line 30
    .local v0, "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v8, Lcom/upsight/android/persistence/annotation/Created;

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/upsight/android/persistence/annotation/Created;

    .line 31
    .local v2, "created":Lcom/upsight/android/persistence/annotation/Created;
    if-eqz v2, :cond_2

    .line 32
    invoke-interface {p1, v5, v0}, Lcom/upsight/android/internal/persistence/subscription/ClassSubscriptionVisitor;->visitCreatedSubscription(Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    .line 35
    :cond_2
    const-class v8, Lcom/upsight/android/persistence/annotation/Updated;

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lcom/upsight/android/persistence/annotation/Updated;

    .line 36
    .local v7, "updated":Lcom/upsight/android/persistence/annotation/Updated;
    if-eqz v7, :cond_3

    .line 37
    invoke-interface {p1, v5, v0}, Lcom/upsight/android/internal/persistence/subscription/ClassSubscriptionVisitor;->visitUpdatedSubscription(Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    .line 40
    :cond_3
    const-class v8, Lcom/upsight/android/persistence/annotation/Removed;

    invoke-virtual {v5, v8}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lcom/upsight/android/persistence/annotation/Removed;

    .line 41
    .local v6, "removed":Lcom/upsight/android/persistence/annotation/Removed;
    if-eqz v6, :cond_0

    .line 42
    invoke-interface {p1, v5, v0}, Lcom/upsight/android/internal/persistence/subscription/ClassSubscriptionVisitor;->visitRemovedSubscription(Ljava/lang/reflect/Method;Ljava/lang/Class;)V

    goto :goto_1

    .line 45
    .end local v0    # "argumentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "created":Lcom/upsight/android/persistence/annotation/Created;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "removed":Lcom/upsight/android/persistence/annotation/Removed;
    .end local v7    # "updated":Lcom/upsight/android/persistence/annotation/Updated;
    :cond_4
    return-void
.end method
