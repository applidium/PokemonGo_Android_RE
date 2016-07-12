.class final Lrx/observers/SerializedObserver$FastList;
.super Ljava/lang/Object;
.source "SerializedObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/observers/SerializedObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FastList"
.end annotation


# instance fields
.field array:[Ljava/lang/Object;

.field size:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 51
    iget v2, p0, Lrx/observers/SerializedObserver$FastList;->size:I

    .line 52
    .local v2, "s":I
    iget-object v0, p0, Lrx/observers/SerializedObserver$FastList;->array:[Ljava/lang/Object;

    .line 53
    .local v0, "a":[Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 54
    const/16 v3, 0x10

    new-array v0, v3, [Ljava/lang/Object;

    .line 55
    iput-object v0, p0, Lrx/observers/SerializedObserver$FastList;->array:[Ljava/lang/Object;

    .line 62
    :cond_0
    :goto_0
    aput-object p1, v0, v2

    .line 63
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lrx/observers/SerializedObserver$FastList;->size:I

    .line 64
    return-void

    .line 56
    :cond_1
    array-length v3, v0

    if-ne v2, v3, :cond_0

    .line 57
    shr-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v2

    new-array v1, v3, [Ljava/lang/Object;

    .line 58
    .local v1, "array2":[Ljava/lang/Object;
    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    move-object v0, v1

    .line 60
    iput-object v0, p0, Lrx/observers/SerializedObserver$FastList;->array:[Ljava/lang/Object;

    goto :goto_0
.end method
