.class public Lspacemadness/com/lunarconsole/console/Console$Options;
.super Ljava/lang/Object;
.source "Console.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lspacemadness/com/lunarconsole/console/Console;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field private final capacity:I

.field private trimCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "capacity"    # I

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    if-gtz p1, :cond_0

    .line 215
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    iput p1, p0, Lspacemadness/com/lunarconsole/console/Console$Options;->capacity:I

    .line 218
    const/4 v0, 0x1

    iput v0, p0, Lspacemadness/com/lunarconsole/console/Console$Options;->trimCount:I

    .line 219
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-virtual {p0}, Lspacemadness/com/lunarconsole/console/Console$Options;->clone()Lspacemadness/com/lunarconsole/console/Console$Options;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lspacemadness/com/lunarconsole/console/Console$Options;
    .locals 2

    .prologue
    .line 223
    new-instance v0, Lspacemadness/com/lunarconsole/console/Console$Options;

    iget v1, p0, Lspacemadness/com/lunarconsole/console/Console$Options;->capacity:I

    invoke-direct {v0, v1}, Lspacemadness/com/lunarconsole/console/Console$Options;-><init>(I)V

    .line 224
    .local v0, "options":Lspacemadness/com/lunarconsole/console/Console$Options;
    iget v1, p0, Lspacemadness/com/lunarconsole/console/Console$Options;->trimCount:I

    iput v1, v0, Lspacemadness/com/lunarconsole/console/Console$Options;->trimCount:I

    .line 225
    return-object v0
.end method

.method public getCapacity()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lspacemadness/com/lunarconsole/console/Console$Options;->capacity:I

    return v0
.end method

.method public getTrimCount()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lspacemadness/com/lunarconsole/console/Console$Options;->trimCount:I

    return v0
.end method

.method public setTrimCount(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 240
    if-lez p1, :cond_0

    iget v0, p0, Lspacemadness/com/lunarconsole/console/Console$Options;->capacity:I

    if-le p1, v0, :cond_1

    .line 242
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal trim count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_1
    iput p1, p0, Lspacemadness/com/lunarconsole/console/Console$Options;->trimCount:I

    .line 246
    return-void
.end method
