.class final Landroid/support/v4/util/MapCollections$ArrayIterator;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/util/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ArrayIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field mCanRemove:Z

.field mIndex:I

.field final mOffset:I

.field mSize:I

.field final synthetic this$0:Landroid/support/v4/util/MapCollections;


# direct methods
.method constructor <init>(Landroid/support/v4/util/MapCollections;I)V
    .locals 1
    .param p2, "offset"    # I

    .prologue
    .line 41
    .local p0, "this":Landroid/support/v4/util/MapCollections$ArrayIterator;, "Landroid/support/v4/util/MapCollections<TK;TV;>.ArrayIterator<TT;>;"
    iput-object p1, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->this$0:Landroid/support/v4/util/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mCanRemove:Z

    .line 42
    iput p2, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mOffset:I

    .line 43
    invoke-virtual {p1}, Landroid/support/v4/util/MapCollections;->colGetSize()I

    move-result v0

    iput v0, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mSize:I

    .line 44
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 48
    .local p0, "this":Landroid/support/v4/util/MapCollections$ArrayIterator;, "Landroid/support/v4/util/MapCollections<TK;TV;>.ArrayIterator<TT;>;"
    iget v0, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mIndex:I

    iget v1, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mSize:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Landroid/support/v4/util/MapCollections$ArrayIterator;, "Landroid/support/v4/util/MapCollections<TK;TV;>.ArrayIterator<TT;>;"
    iget-object v1, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->this$0:Landroid/support/v4/util/MapCollections;

    iget v2, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mIndex:I

    iget v3, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mOffset:I

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v0

    .line 54
    .local v0, "res":Ljava/lang/Object;
    iget v1, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mIndex:I

    .line 55
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mCanRemove:Z

    .line 56
    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 61
    .local p0, "this":Landroid/support/v4/util/MapCollections$ArrayIterator;, "Landroid/support/v4/util/MapCollections<TK;TV;>.ArrayIterator<TT;>;"
    iget-boolean v0, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mCanRemove:Z

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 64
    :cond_0
    iget v0, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mIndex:I

    .line 65
    iget v0, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mSize:I

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mCanRemove:Z

    .line 67
    iget-object v0, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->this$0:Landroid/support/v4/util/MapCollections;

    iget v1, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/support/v4/util/MapCollections;->colRemoveAt(I)V

    .line 68
    return-void
.end method
