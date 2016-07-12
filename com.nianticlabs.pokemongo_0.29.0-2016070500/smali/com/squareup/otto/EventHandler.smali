.class Lcom/squareup/otto/EventHandler;
.super Ljava/lang/Object;
.source "EventHandler.java"


# instance fields
.field private final hashCode:I

.field private final method:Ljava/lang/reflect/Method;

.field private final target:Ljava/lang/Object;

.field private valid:Z


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 3
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;

    .prologue
    const/4 v1, 0x1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean v1, p0, Lcom/squareup/otto/EventHandler;->valid:Z

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "EventHandler target cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 49
    :cond_0
    if-nez p2, :cond_1

    .line 50
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "EventHandler method cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_1
    iput-object p1, p0, Lcom/squareup/otto/EventHandler;->target:Ljava/lang/Object;

    .line 54
    iput-object p2, p0, Lcom/squareup/otto/EventHandler;->method:Ljava/lang/reflect/Method;

    .line 55
    invoke-virtual {p2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 59
    const/16 v0, 0x1f

    .line 60
    .local v0, "prime":I
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x1f

    mul-int/lit8 v1, v1, 0x1f

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/squareup/otto/EventHandler;->hashCode:I

    .line 61
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 109
    if-ne p0, p1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v1

    .line 113
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 114
    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 118
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 121
    check-cast v0, Lcom/squareup/otto/EventHandler;

    .line 123
    .local v0, "other":Lcom/squareup/otto/EventHandler;
    iget-object v3, p0, Lcom/squareup/otto/EventHandler;->method:Ljava/lang/reflect/Method;

    iget-object v4, v0, Lcom/squareup/otto/EventHandler;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/squareup/otto/EventHandler;->target:Ljava/lang/Object;

    iget-object v4, v0, Lcom/squareup/otto/EventHandler;->target:Ljava/lang/Object;

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public handleEvent(Ljava/lang/Object;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 85
    iget-boolean v1, p0, Lcom/squareup/otto/EventHandler;->valid:Z

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/squareup/otto/EventHandler;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has been invalidated and can no longer handle events."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/squareup/otto/EventHandler;->method:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/squareup/otto/EventHandler;->target:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    .line 98
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 92
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Error;

    if-eqz v1, :cond_1

    .line 94
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/Error;

    throw v1

    .line 96
    :cond_1
    throw v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/squareup/otto/EventHandler;->hashCode:I

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/squareup/otto/EventHandler;->valid:Z

    .line 74
    return-void
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/squareup/otto/EventHandler;->valid:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[EventHandler "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/otto/EventHandler;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
