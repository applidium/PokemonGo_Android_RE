.class public final Lrx/Notification;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/Notification$Kind;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final ON_COMPLETED:Lrx/Notification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Notification",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final kind:Lrx/Notification$Kind;

.field private final throwable:Ljava/lang/Throwable;

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 27
    new-instance v0, Lrx/Notification;

    sget-object v1, Lrx/Notification$Kind;->OnCompleted:Lrx/Notification$Kind;

    invoke-direct {v0, v1, v2, v2}, Lrx/Notification;-><init>(Lrx/Notification$Kind;Ljava/lang/Object;Ljava/lang/Throwable;)V

    sput-object v0, Lrx/Notification;->ON_COMPLETED:Lrx/Notification;

    return-void
.end method

.method private constructor <init>(Lrx/Notification$Kind;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "kind"    # Lrx/Notification$Kind;
    .param p3, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Notification$Kind;",
            "TT;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p2, p0, Lrx/Notification;->value:Ljava/lang/Object;

    .line 75
    iput-object p3, p0, Lrx/Notification;->throwable:Ljava/lang/Throwable;

    .line 76
    iput-object p1, p0, Lrx/Notification;->kind:Lrx/Notification$Kind;

    .line 77
    return-void
.end method

.method public static createOnCompleted()Lrx/Notification;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/Notification",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 58
    sget-object v0, Lrx/Notification;->ON_COMPLETED:Lrx/Notification;

    return-object v0
.end method

.method public static createOnCompleted(Ljava/lang/Class;)Lrx/Notification;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lrx/Notification",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lrx/Notification;->ON_COMPLETED:Lrx/Notification;

    return-object v0
.end method

.method public static createOnError(Ljava/lang/Throwable;)Lrx/Notification;
    .locals 3
    .param p0, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lrx/Notification",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Lrx/Notification;

    sget-object v1, Lrx/Notification$Kind;->OnError:Lrx/Notification$Kind;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lrx/Notification;-><init>(Lrx/Notification$Kind;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static createOnNext(Ljava/lang/Object;)Lrx/Notification;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/Notification",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "t":Ljava/lang/Object;, "TT;"
    new-instance v0, Lrx/Notification;

    sget-object v1, Lrx/Notification$Kind;->OnNext:Lrx/Notification$Kind;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lrx/Notification;-><init>(Lrx/Notification$Kind;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public accept(Lrx/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    .local p1, "observer":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    invoke-virtual {p0}, Lrx/Notification;->isOnNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {p0}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-virtual {p0}, Lrx/Notification;->isOnCompleted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    invoke-interface {p1}, Lrx/Observer;->onCompleted()V

    goto :goto_0

    .line 160
    :cond_2
    invoke-virtual {p0}, Lrx/Notification;->isOnError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lrx/Notification;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {p1, v0}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 192
    if-nez p1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v1

    .line 194
    :cond_1
    if-ne p0, p1, :cond_2

    move v1, v2

    .line 195
    goto :goto_0

    .line 196
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 198
    check-cast v0, Lrx/Notification;

    .line 199
    .local v0, "notification":Lrx/Notification;, "Lrx/Notification<*>;"
    invoke-virtual {v0}, Lrx/Notification;->getKind()Lrx/Notification$Kind;

    move-result-object v3

    invoke-virtual {p0}, Lrx/Notification;->getKind()Lrx/Notification$Kind;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 201
    invoke-virtual {p0}, Lrx/Notification;->hasValue()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 203
    :cond_3
    invoke-virtual {p0}, Lrx/Notification;->hasThrowable()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lrx/Notification;->getThrowable()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v0}, Lrx/Notification;->getThrowable()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    .line 205
    goto :goto_0
.end method

.method public getKind()Lrx/Notification$Kind;
    .locals 1

    .prologue
    .line 122
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    iget-object v0, p0, Lrx/Notification;->kind:Lrx/Notification$Kind;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 85
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    iget-object v0, p0, Lrx/Notification;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    iget-object v0, p0, Lrx/Notification;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hasThrowable()Z
    .locals 1

    .prologue
    .line 113
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    invoke-virtual {p0}, Lrx/Notification;->isOnError()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrx/Notification;->throwable:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 103
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    invoke-virtual {p0}, Lrx/Notification;->isOnNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lrx/Notification;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 182
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    invoke-virtual {p0}, Lrx/Notification;->getKind()Lrx/Notification$Kind;

    move-result-object v1

    invoke-virtual {v1}, Lrx/Notification$Kind;->hashCode()I

    move-result v0

    .line 183
    .local v0, "hash":I
    invoke-virtual {p0}, Lrx/Notification;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 185
    :cond_0
    invoke-virtual {p0}, Lrx/Notification;->hasThrowable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lrx/Notification;->getThrowable()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 187
    :cond_1
    return v0
.end method

.method public isOnCompleted()Z
    .locals 2

    .prologue
    .line 140
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    invoke-virtual {p0}, Lrx/Notification;->getKind()Lrx/Notification$Kind;

    move-result-object v0

    sget-object v1, Lrx/Notification$Kind;->OnCompleted:Lrx/Notification$Kind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnError()Z
    .locals 2

    .prologue
    .line 131
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    invoke-virtual {p0}, Lrx/Notification;->getKind()Lrx/Notification$Kind;

    move-result-object v0

    sget-object v1, Lrx/Notification$Kind;->OnError:Lrx/Notification$Kind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOnNext()Z
    .locals 2

    .prologue
    .line 149
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    invoke-virtual {p0}, Lrx/Notification;->getKind()Lrx/Notification$Kind;

    move-result-object v0

    sget-object v1, Lrx/Notification$Kind;->OnNext:Lrx/Notification$Kind;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 171
    .local p0, "this":Lrx/Notification;, "Lrx/Notification<TT;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lrx/Notification;->getKind()Lrx/Notification$Kind;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 172
    .local v0, "str":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lrx/Notification;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lrx/Notification;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    :cond_0
    invoke-virtual {p0}, Lrx/Notification;->hasThrowable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lrx/Notification;->getThrowable()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
