.class public Lspacemadness/com/lunarconsole/console/LimitSizeList;
.super Ljava/lang/Object;
.source "LimitSizeList.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final internalArray:Lspacemadness/com/lunarconsole/utils/CycleArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lspacemadness/com/lunarconsole/utils/CycleArray",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final trimSize:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;II)V
    .locals 3
    .param p2, "capacity"    # I
    .param p3, "trimSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TT;>;II)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lspacemadness/com/lunarconsole/console/LimitSizeList;, "Lspacemadness/com/lunarconsole/console/LimitSizeList<TT;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-gez p2, :cond_0

    .line 37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    new-instance v0, Lspacemadness/com/lunarconsole/utils/CycleArray;

    invoke-direct {v0, p1, p2}, Lspacemadness/com/lunarconsole/utils/CycleArray;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lspacemadness/com/lunarconsole/console/LimitSizeList;->internalArray:Lspacemadness/com/lunarconsole/utils/CycleArray;

    .line 41
    iput p3, p0, Lspacemadness/com/lunarconsole/console/LimitSizeList;->trimSize:I

    .line 42
    return-void
.end method


# virtual methods
.method public addObject(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lspacemadness/com/lunarconsole/console/LimitSizeList;, "Lspacemadness/com/lunarconsole/console/LimitSizeList<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lspacemadness/com/lunarconsole/console/LimitSizeList;->willOverflow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget v0, p0, Lspacemadness/com/lunarconsole/console/LimitSizeList;->trimSize:I

    invoke-virtual {p0, v0}, Lspacemadness/com/lunarconsole/console/LimitSizeList;->trimHead(I)V

    .line 55
    :cond_0
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/LimitSizeList;->internalArray:Lspacemadness/com/lunarconsole/utils/CycleArray;

    invoke-virtual {v0, p1}, Lspacemadness/com/lunarconsole/utils/CycleArray;->add(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 76
    .local p0, "this":Lspacemadness/com/lunarconsole/console/LimitSizeList;, "Lspacemadness/com/lunarconsole/console/LimitSizeList<TT;>;"
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/LimitSizeList;->internalArray:Lspacemadness/com/lunarconsole/utils/CycleArray;

    invoke-virtual {v0}, Lspacemadness/com/lunarconsole/utils/CycleArray;->getCapacity()I

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Lspacemadness/com/lunarconsole/console/LimitSizeList;, "Lspacemadness/com/lunarconsole/console/LimitSizeList<TT;>;"
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/LimitSizeList;->internalArray:Lspacemadness/com/lunarconsole/utils/CycleArray;

    invoke-virtual {v0}, Lspacemadness/com/lunarconsole/utils/CycleArray;->clear()V

    .line 66
    return-void
.end method

.method public count()I
    .locals 1

    .prologue
    .line 86
    .local p0, "this":Lspacemadness/com/lunarconsole/console/LimitSizeList;, "Lspacemadness/com/lunarconsole/console/LimitSizeList<TT;>;"
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/LimitSizeList;->internalArray:Lspacemadness/com/lunarconsole/utils/CycleArray;

    invoke-virtual {v0}, Lspacemadness/com/lunarconsole/utils/CycleArray;->realLength()I

    move-result v0

    return v0
.end method

.method public getTrimSize()I
    .locals 1

    .prologue
    .line 91
    .local p0, "this":Lspacemadness/com/lunarconsole/console/LimitSizeList;, "Lspacemadness/com/lunarconsole/console/LimitSizeList<TT;>;"
    iget v0, p0, Lspacemadness/com/lunarconsole/console/LimitSizeList;->trimSize:I

    return v0
.end method

.method public isOverfloating()Z
    .locals 1

    .prologue
    .line 101
    .local p0, "this":Lspacemadness/com/lunarconsole/console/LimitSizeList;, "Lspacemadness/com/lunarconsole/console/LimitSizeList<TT;>;"
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/LimitSizeList;->internalArray:Lspacemadness/com/lunarconsole/utils/CycleArray;

    invoke-virtual {v0}, Lspacemadness/com/lunarconsole/utils/CycleArray;->getHeadIndex()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lspacemadness/com/lunarconsole/console/LimitSizeList;->willOverflow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTrimmed()Z
    .locals 1

    .prologue
    .line 111
    .local p0, "this":Lspacemadness/com/lunarconsole/console/LimitSizeList;, "Lspacemadness/com/lunarconsole/console/LimitSizeList<TT;>;"
    invoke-virtual {p0}, Lspacemadness/com/lunarconsole/console/LimitSizeList;->trimmedCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lspacemadness/com/lunarconsole/console/LimitSizeList;, "Lspacemadness/com/lunarconsole/console/LimitSizeList<TT;>;"
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/LimitSizeList;->internalArray:Lspacemadness/com/lunarconsole/utils/CycleArray;

    invoke-virtual {v0}, Lspacemadness/com/lunarconsole/utils/CycleArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public objectAtIndex(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lspacemadness/com/lunarconsole/console/LimitSizeList;, "Lspacemadness/com/lunarconsole/console/LimitSizeList<TT;>;"
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/LimitSizeList;->internalArray:Lspacemadness/com/lunarconsole/utils/CycleArray;

    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/LimitSizeList;->internalArray:Lspacemadness/com/lunarconsole/utils/CycleArray;

    invoke-virtual {v1}, Lspacemadness/com/lunarconsole/utils/CycleArray;->getHeadIndex()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lspacemadness/com/lunarconsole/utils/CycleArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public overflowCount()I
    .locals 1

    .prologue
    .line 96
    .local p0, "this":Lspacemadness/com/lunarconsole/console/LimitSizeList;, "Lspacemadness/com/lunarconsole/console/LimitSizeList<TT;>;"
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/LimitSizeList;->internalArray:Lspacemadness/com/lunarconsole/utils/CycleArray;

    invoke-virtual {v0}, Lspacemadness/com/lunarconsole/utils/CycleArray;->getHeadIndex()I

    move-result v0

    return v0
.end method

.method public totalCount()I
    .locals 1

    .prologue
    .line 81
    .local p0, "this":Lspacemadness/com/lunarconsole/console/LimitSizeList;, "Lspacemadness/com/lunarconsole/console/LimitSizeList<TT;>;"
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/LimitSizeList;->internalArray:Lspacemadness/com/lunarconsole/utils/CycleArray;

    invoke-virtual {v0}, Lspacemadness/com/lunarconsole/utils/CycleArray;->length()I

    move-result v0

    return v0
.end method

.method public trimHead(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 60
    .local p0, "this":Lspacemadness/com/lunarconsole/console/LimitSizeList;, "Lspacemadness/com/lunarconsole/console/LimitSizeList<TT;>;"
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/LimitSizeList;->internalArray:Lspacemadness/com/lunarconsole/utils/CycleArray;

    invoke-virtual {v0, p1}, Lspacemadness/com/lunarconsole/utils/CycleArray;->trimHeadIndex(I)V

    .line 61
    return-void
.end method

.method public trimmedCount()I
    .locals 2

    .prologue
    .line 116
    .local p0, "this":Lspacemadness/com/lunarconsole/console/LimitSizeList;, "Lspacemadness/com/lunarconsole/console/LimitSizeList<TT;>;"
    invoke-virtual {p0}, Lspacemadness/com/lunarconsole/console/LimitSizeList;->totalCount()I

    move-result v0

    invoke-virtual {p0}, Lspacemadness/com/lunarconsole/console/LimitSizeList;->count()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public willOverflow()Z
    .locals 2

    .prologue
    .line 106
    .local p0, "this":Lspacemadness/com/lunarconsole/console/LimitSizeList;, "Lspacemadness/com/lunarconsole/console/LimitSizeList<TT;>;"
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/LimitSizeList;->internalArray:Lspacemadness/com/lunarconsole/utils/CycleArray;

    invoke-virtual {v0}, Lspacemadness/com/lunarconsole/utils/CycleArray;->realLength()I

    move-result v0

    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/LimitSizeList;->internalArray:Lspacemadness/com/lunarconsole/utils/CycleArray;

    invoke-virtual {v1}, Lspacemadness/com/lunarconsole/utils/CycleArray;->getCapacity()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
