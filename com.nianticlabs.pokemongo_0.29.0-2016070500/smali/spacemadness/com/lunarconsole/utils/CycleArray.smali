.class public Lspacemadness/com/lunarconsole/utils/CycleArray;
.super Ljava/lang/Object;
.source "CycleArray.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lspacemadness/com/lunarconsole/utils/CycleArray$CycleIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final componentType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+TE;>;"
        }
    .end annotation
.end field

.field private headIndex:I

.field private internalArray:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private length:I


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 2
    .param p2, "capacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TE;>;I)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lspacemadness/com/lunarconsole/utils/CycleArray;, "Lspacemadness/com/lunarconsole/utils/CycleArray<TE;>;"
    .local p1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<+TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-nez p1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Component type is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iput-object p1, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->componentType:Ljava/lang/Class;

    .line 41
    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->internalArray:[Ljava/lang/Object;

    .line 42
    return-void
.end method

.method private toArrayIndex([Ljava/lang/Object;I)I
    .locals 1
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;I)I"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lspacemadness/com/lunarconsole/utils/CycleArray;, "Lspacemadness/com/lunarconsole/utils/CycleArray<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TE;"
    array-length v0, p1

    rem-int v0, p2, v0

    return v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lspacemadness/com/lunarconsole/utils/CycleArray;, "Lspacemadness/com/lunarconsole/utils/CycleArray<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget v2, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->length:I

    invoke-virtual {p0, v2}, Lspacemadness/com/lunarconsole/utils/CycleArray;->toArrayIndex(I)I

    move-result v0

    .line 47
    .local v0, "arrayIndex":I
    iget-object v2, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->internalArray:[Ljava/lang/Object;

    aget-object v1, v2, v0

    .line 48
    .local v1, "oldItem":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->internalArray:[Ljava/lang/Object;

    aput-object p1, v2, v0

    .line 49
    iget v2, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->length:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->length:I

    .line 51
    iget v2, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->length:I

    iget v3, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->headIndex:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->internalArray:[Ljava/lang/Object;

    array-length v3, v3

    if-le v2, v3, :cond_0

    .line 53
    iget v2, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->headIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->headIndex:I

    .line 57
    .end local v1    # "oldItem":Ljava/lang/Object;, "TE;"
    :goto_0
    return-object v1

    .restart local v1    # "oldItem":Ljava/lang/Object;, "TE;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 4

    .prologue
    .local p0, "this":Lspacemadness/com/lunarconsole/utils/CycleArray;, "Lspacemadness/com/lunarconsole/utils/CycleArray<TE;>;"
    const/4 v3, 0x0

    .line 62
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->internalArray:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 64
    iget-object v1, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->internalArray:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    iput v3, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->length:I

    .line 67
    iput v3, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->headIndex:I

    .line 68
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 170
    .local p0, "this":Lspacemadness/com/lunarconsole/utils/CycleArray;, "Lspacemadness/com/lunarconsole/utils/CycleArray<TE;>;"
    iget v1, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->headIndex:I

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->length:I

    if-ge v1, v2, :cond_1

    .line 172
    invoke-virtual {p0, v1}, Lspacemadness/com/lunarconsole/utils/CycleArray;->toArrayIndex(I)I

    move-result v0

    .line 173
    .local v0, "arrayIndex":I
    iget-object v2, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->internalArray:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-static {v2, p1}, Lspacemadness/com/lunarconsole/utils/ObjectUtils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    const/4 v2, 0x1

    .line 179
    .end local v0    # "arrayIndex":I
    :goto_1
    return v2

    .line 170
    .restart local v0    # "arrayIndex":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    .end local v0    # "arrayIndex":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lspacemadness/com/lunarconsole/utils/CycleArray;, "Lspacemadness/com/lunarconsole/utils/CycleArray<TE;>;"
    invoke-virtual {p0, p1}, Lspacemadness/com/lunarconsole/utils/CycleArray;->toArrayIndex(I)I

    move-result v0

    .line 107
    .local v0, "arrayIndex":I
    iget-object v1, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->internalArray:[Ljava/lang/Object;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public getCapacity()I
    .locals 1

    .prologue
    .line 136
    .local p0, "this":Lspacemadness/com/lunarconsole/utils/CycleArray;, "Lspacemadness/com/lunarconsole/utils/CycleArray<TE;>;"
    iget-object v0, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->internalArray:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public getHeadIndex()I
    .locals 1

    .prologue
    .line 184
    .local p0, "this":Lspacemadness/com/lunarconsole/utils/CycleArray;, "Lspacemadness/com/lunarconsole/utils/CycleArray<TE;>;"
    iget v0, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->headIndex:I

    return v0
.end method

.method public internalArray()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TE;"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, "this":Lspacemadness/com/lunarconsole/utils/CycleArray;, "Lspacemadness/com/lunarconsole/utils/CycleArray<TE;>;"
    iget-object v0, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->internalArray:[Ljava/lang/Object;

    return-object v0
.end method

.method public isValidIndex(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 123
    .local p0, "this":Lspacemadness/com/lunarconsole/utils/CycleArray;, "Lspacemadness/com/lunarconsole/utils/CycleArray<TE;>;"
    iget v0, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->headIndex:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->length:I

    if-ge p1, v0, :cond_0

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
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 208
    .local p0, "this":Lspacemadness/com/lunarconsole/utils/CycleArray;, "Lspacemadness/com/lunarconsole/utils/CycleArray<TE;>;"
    new-instance v0, Lspacemadness/com/lunarconsole/utils/CycleArray$CycleIterator;

    invoke-direct {v0, p0}, Lspacemadness/com/lunarconsole/utils/CycleArray$CycleIterator;-><init>(Lspacemadness/com/lunarconsole/utils/CycleArray;)V

    return-object v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 189
    .local p0, "this":Lspacemadness/com/lunarconsole/utils/CycleArray;, "Lspacemadness/com/lunarconsole/utils/CycleArray<TE;>;"
    iget v0, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->length:I

    return v0
.end method

.method public realLength()I
    .locals 2

    .prologue
    .line 194
    .local p0, "this":Lspacemadness/com/lunarconsole/utils/CycleArray;, "Lspacemadness/com/lunarconsole/utils/CycleArray<TE;>;"
    iget v0, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->length:I

    iget v1, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->headIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public set(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lspacemadness/com/lunarconsole/utils/CycleArray;, "Lspacemadness/com/lunarconsole/utils/CycleArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lspacemadness/com/lunarconsole/utils/CycleArray;->toArrayIndex(I)I

    move-result v0

    .line 113
    .local v0, "arrayIndex":I
    iget-object v1, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->internalArray:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 114
    return-void
.end method

.method public setCapacity(I)V
    .locals 7
    .param p1, "value"    # I

    .prologue
    .line 141
    .local p0, "this":Lspacemadness/com/lunarconsole/utils/CycleArray;, "Lspacemadness/com/lunarconsole/utils/CycleArray<TE;>;"
    invoke-virtual {p0}, Lspacemadness/com/lunarconsole/utils/CycleArray;->getCapacity()I

    move-result v5

    if-le p1, v5, :cond_2

    .line 143
    iget-object v5, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->componentType:Ljava/lang/Class;

    invoke-static {v5, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v1, v5

    check-cast v1, [Ljava/lang/Object;

    .line 145
    .local v1, "data":[Ljava/lang/Object;, "[TE;"
    invoke-virtual {p0}, Lspacemadness/com/lunarconsole/utils/CycleArray;->realLength()I

    move-result v4

    .line 147
    .local v4, "totalCopyLength":I
    iget-object v5, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->internalArray:[Ljava/lang/Object;

    iget v6, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->headIndex:I

    invoke-direct {p0, v5, v6}, Lspacemadness/com/lunarconsole/utils/CycleArray;->toArrayIndex([Ljava/lang/Object;I)I

    move-result v2

    .line 148
    .local v2, "fromIndex":I
    iget v5, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->headIndex:I

    invoke-direct {p0, v1, v5}, Lspacemadness/com/lunarconsole/utils/CycleArray;->toArrayIndex([Ljava/lang/Object;I)I

    move-result v3

    .line 150
    .local v3, "toIndex":I
    :goto_0
    if-lez v4, :cond_0

    .line 152
    iget-object v5, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->internalArray:[Ljava/lang/Object;

    array-length v5, v5

    sub-int/2addr v5, v2

    array-length v6, v1

    sub-int/2addr v6, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 154
    .local v0, "copyLength":I
    iget-object v5, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->internalArray:[Ljava/lang/Object;

    invoke-static {v5, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    sub-int/2addr v4, v0

    .line 156
    iget-object v5, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->internalArray:[Ljava/lang/Object;

    add-int v6, v2, v0

    invoke-direct {p0, v5, v6}, Lspacemadness/com/lunarconsole/utils/CycleArray;->toArrayIndex([Ljava/lang/Object;I)I

    move-result v2

    .line 157
    add-int v5, v3, v0

    invoke-direct {p0, v1, v5}, Lspacemadness/com/lunarconsole/utils/CycleArray;->toArrayIndex([Ljava/lang/Object;I)I

    move-result v3

    .line 158
    goto :goto_0

    .line 160
    .end local v0    # "copyLength":I
    :cond_0
    iput-object v1, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->internalArray:[Ljava/lang/Object;

    .line 166
    .end local v1    # "data":[Ljava/lang/Object;, "[TE;"
    .end local v2    # "fromIndex":I
    .end local v3    # "toIndex":I
    .end local v4    # "totalCopyLength":I
    :cond_1
    return-void

    .line 162
    :cond_2
    invoke-virtual {p0}, Lspacemadness/com/lunarconsole/utils/CycleArray;->getCapacity()I

    move-result v5

    if-ge p1, v5, :cond_1

    .line 164
    new-instance v5, Lspacemadness/com/lunarconsole/utils/NotImplementedException;

    invoke-direct {v5}, Lspacemadness/com/lunarconsole/utils/NotImplementedException;-><init>()V

    throw v5
.end method

.method public toArrayIndex(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 118
    .local p0, "this":Lspacemadness/com/lunarconsole/utils/CycleArray;, "Lspacemadness/com/lunarconsole/utils/CycleArray<TE;>;"
    iget-object v0, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->internalArray:[Ljava/lang/Object;

    array-length v0, v0

    rem-int v0, p1, v0

    return v0
.end method

.method public trimHeadIndex(I)V
    .locals 1
    .param p1, "trimSize"    # I

    .prologue
    .line 89
    .local p0, "this":Lspacemadness/com/lunarconsole/utils/CycleArray;, "Lspacemadness/com/lunarconsole/utils/CycleArray<TE;>;"
    iget v0, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->headIndex:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lspacemadness/com/lunarconsole/utils/CycleArray;->trimToHeadIndex(I)V

    .line 90
    return-void
.end method

.method public trimLength(I)V
    .locals 1
    .param p1, "trimSize"    # I

    .prologue
    .line 72
    .local p0, "this":Lspacemadness/com/lunarconsole/utils/CycleArray;, "Lspacemadness/com/lunarconsole/utils/CycleArray<TE;>;"
    iget v0, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->length:I

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lspacemadness/com/lunarconsole/utils/CycleArray;->trimToLength(I)V

    .line 73
    return-void
.end method

.method public trimToHeadIndex(I)V
    .locals 3
    .param p1, "trimmedHeadIndex"    # I

    .prologue
    .line 94
    .local p0, "this":Lspacemadness/com/lunarconsole/utils/CycleArray;, "Lspacemadness/com/lunarconsole/utils/CycleArray<TE;>;"
    iget v0, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->headIndex:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->length:I

    if-le p1, v0, :cond_1

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trimmed head index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should be between head index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->headIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_1
    iput p1, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->headIndex:I

    .line 102
    return-void
.end method

.method public trimToLength(I)V
    .locals 3
    .param p1, "trimmedLength"    # I

    .prologue
    .line 77
    .local p0, "this":Lspacemadness/com/lunarconsole/utils/CycleArray;, "Lspacemadness/com/lunarconsole/utils/CycleArray<TE;>;"
    iget v0, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->headIndex:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->length:I

    if-le p1, v0, :cond_1

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trimmed length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " should be between head index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->headIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    iput p1, p0, Lspacemadness/com/lunarconsole/utils/CycleArray;->length:I

    .line 85
    return-void
.end method
