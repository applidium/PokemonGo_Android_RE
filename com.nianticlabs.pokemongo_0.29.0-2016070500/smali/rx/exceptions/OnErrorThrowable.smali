.class public final Lrx/exceptions/OnErrorThrowable;
.super Ljava/lang/RuntimeException;
.source "OnErrorThrowable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/exceptions/OnErrorThrowable$OnNextValue;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7e77a2d646dfd3eL


# instance fields
.field private final hasValue:Z

.field private final value:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lrx/exceptions/OnErrorThrowable;->hasValue:Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lrx/exceptions/OnErrorThrowable;->value:Ljava/lang/Object;

    .line 41
    return-void
.end method

.method private constructor <init>(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Throwable;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/exceptions/OnErrorThrowable;->hasValue:Z

    .line 46
    iput-object p2, p0, Lrx/exceptions/OnErrorThrowable;->value:Ljava/lang/Object;

    .line 47
    return-void
.end method

.method public static addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2
    .param p0, "e"    # Ljava/lang/Throwable;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 96
    invoke-static {p0}, Lrx/exceptions/Exceptions;->getFinalCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 97
    .local v0, "lastCause":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lrx/exceptions/OnErrorThrowable$OnNextValue;

    if-eqz v1, :cond_0

    .line 99
    check-cast v0, Lrx/exceptions/OnErrorThrowable$OnNextValue;

    .end local v0    # "lastCause":Ljava/lang/Throwable;
    invoke-virtual {v0}, Lrx/exceptions/OnErrorThrowable$OnNextValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 105
    :goto_0
    return-object p0

    .line 104
    :cond_0
    new-instance v1, Lrx/exceptions/OnErrorThrowable$OnNextValue;

    invoke-direct {v1, p1}, Lrx/exceptions/OnErrorThrowable$OnNextValue;-><init>(Ljava/lang/Object;)V

    invoke-static {p0, v1}, Lrx/exceptions/Exceptions;->addCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static from(Ljava/lang/Throwable;)Lrx/exceptions/OnErrorThrowable;
    .locals 3
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 76
    invoke-static {p0}, Lrx/exceptions/Exceptions;->getFinalCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 77
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v1, v0, Lrx/exceptions/OnErrorThrowable$OnNextValue;

    if-eqz v1, :cond_0

    .line 78
    new-instance v1, Lrx/exceptions/OnErrorThrowable;

    check-cast v0, Lrx/exceptions/OnErrorThrowable$OnNextValue;

    .end local v0    # "cause":Ljava/lang/Throwable;
    invoke-virtual {v0}, Lrx/exceptions/OnErrorThrowable$OnNextValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lrx/exceptions/OnErrorThrowable;-><init>(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 80
    :goto_0
    return-object v1

    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_0
    new-instance v1, Lrx/exceptions/OnErrorThrowable;

    invoke-direct {v1, p0}, Lrx/exceptions/OnErrorThrowable;-><init>(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lrx/exceptions/OnErrorThrowable;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public isValueNull()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lrx/exceptions/OnErrorThrowable;->hasValue:Z

    return v0
.end method
