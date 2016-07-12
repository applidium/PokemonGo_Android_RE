.class Lspacemadness/com/lunarconsole/utils/CycleArray$CycleIterator;
.super Ljava/lang/Object;
.source "CycleArray.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lspacemadness/com/lunarconsole/utils/CycleArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CycleIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private index:I

.field final synthetic this$0:Lspacemadness/com/lunarconsole/utils/CycleArray;


# direct methods
.method public constructor <init>(Lspacemadness/com/lunarconsole/utils/CycleArray;)V
    .locals 1

    .prologue
    .line 216
    .local p0, "this":Lspacemadness/com/lunarconsole/utils/CycleArray$CycleIterator;, "Lspacemadness/com/lunarconsole/utils/CycleArray<TE;>.CycleIterator;"
    iput-object p1, p0, Lspacemadness/com/lunarconsole/utils/CycleArray$CycleIterator;->this$0:Lspacemadness/com/lunarconsole/utils/CycleArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    invoke-virtual {p1}, Lspacemadness/com/lunarconsole/utils/CycleArray;->getHeadIndex()I

    move-result v0

    iput v0, p0, Lspacemadness/com/lunarconsole/utils/CycleArray$CycleIterator;->index:I

    .line 218
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 223
    .local p0, "this":Lspacemadness/com/lunarconsole/utils/CycleArray$CycleIterator;, "Lspacemadness/com/lunarconsole/utils/CycleArray<TE;>.CycleIterator;"
    iget v0, p0, Lspacemadness/com/lunarconsole/utils/CycleArray$CycleIterator;->index:I

    iget-object v1, p0, Lspacemadness/com/lunarconsole/utils/CycleArray$CycleIterator;->this$0:Lspacemadness/com/lunarconsole/utils/CycleArray;

    invoke-virtual {v1}, Lspacemadness/com/lunarconsole/utils/CycleArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, "this":Lspacemadness/com/lunarconsole/utils/CycleArray$CycleIterator;, "Lspacemadness/com/lunarconsole/utils/CycleArray<TE;>.CycleIterator;"
    iget-object v0, p0, Lspacemadness/com/lunarconsole/utils/CycleArray$CycleIterator;->this$0:Lspacemadness/com/lunarconsole/utils/CycleArray;

    iget v1, p0, Lspacemadness/com/lunarconsole/utils/CycleArray$CycleIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lspacemadness/com/lunarconsole/utils/CycleArray$CycleIterator;->index:I

    invoke-virtual {v0, v1}, Lspacemadness/com/lunarconsole/utils/CycleArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 235
    .local p0, "this":Lspacemadness/com/lunarconsole/utils/CycleArray$CycleIterator;, "Lspacemadness/com/lunarconsole/utils/CycleArray<TE;>.CycleIterator;"
    new-instance v0, Lspacemadness/com/lunarconsole/utils/NotImplementedException;

    invoke-direct {v0}, Lspacemadness/com/lunarconsole/utils/NotImplementedException;-><init>()V

    throw v0
.end method
