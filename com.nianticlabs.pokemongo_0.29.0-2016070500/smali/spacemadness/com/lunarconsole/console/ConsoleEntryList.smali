.class public Lspacemadness/com/lunarconsole/console/ConsoleEntryList;
.super Ljava/lang/Object;
.source "ConsoleEntryList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;
    }
.end annotation


# instance fields
.field private currentEntries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;

.field private final entries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;

.field private errorCount:I

.field private filterText:Ljava/lang/String;

.field private filteredEntries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;

.field private logCount:I

.field private logDisabledTypesMask:I

.field private warningCount:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "capacity"    # I
    .param p2, "trimSize"    # I

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;

    invoke-direct {v0, p1, p2}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;-><init>(II)V

    iput-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->entries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;

    .line 57
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->entries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;

    iput-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->currentEntries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->logDisabledTypesMask:I

    .line 59
    return-void
.end method

.method private appendFilter()Z
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->isFiltering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->filteredEntries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;

    invoke-direct {p0, v0}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->useFilteredFromEntries(Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;)V

    .line 181
    const/4 v0, 0x1

    .line 184
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->applyFilter()Z

    move-result v0

    goto :goto_0
.end method

.method private applyFilter()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 189
    iget-object v2, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->filterText:Ljava/lang/String;

    invoke-static {v2}, Lspacemadness/com/lunarconsole/utils/StringUtils;->length(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_0

    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->hasLogTypeFilters()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 190
    .local v0, "filtering":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 192
    iget-object v2, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->entries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;

    invoke-direct {p0, v2}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->useFilteredFromEntries(Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;)V

    .line 196
    :goto_1
    return v1

    .line 189
    .end local v0    # "filtering":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 196
    .restart local v0    # "filtering":Z
    :cond_2
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->removeFilter()Z

    move-result v1

    goto :goto_1
.end method

.method private filterEntries(Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;)Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;
    .locals 5
    .param p1, "entries"    # Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;

    .prologue
    .line 225
    new-instance v2, Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;

    invoke-virtual {p1}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;->capacity()I

    move-result v3

    invoke-virtual {p1}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;->getTrimSize()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;-><init>(II)V

    .line 226
    .local v2, "list":Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;
    invoke-virtual {p1}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lspacemadness/com/lunarconsole/console/ConsoleEntry;

    .line 228
    .local v0, "entry":Lspacemadness/com/lunarconsole/console/ConsoleEntry;
    invoke-direct {p0, v0}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->isFiltered(Lspacemadness/com/lunarconsole/console/ConsoleEntry;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    invoke-virtual {v2, v0}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;->addObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 234
    .end local v0    # "entry":Lspacemadness/com/lunarconsole/console/ConsoleEntry;
    :cond_1
    return-object v2
.end method

.method private hasLogTypeFilters()Z
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->logDisabledTypesMask:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFiltered(Lspacemadness/com/lunarconsole/console/ConsoleEntry;)Z
    .locals 3
    .param p1, "entry"    # Lspacemadness/com/lunarconsole/console/ConsoleEntry;

    .prologue
    const/4 v0, 0x0

    .line 240
    iget v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->logDisabledTypesMask:I

    iget-byte v2, p1, Lspacemadness/com/lunarconsole/console/ConsoleEntry;->type:B

    invoke-static {v2}, Lspacemadness/com/lunarconsole/console/ConsoleLogType;->getMask(I)I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 246
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->filterText:Ljava/lang/String;

    invoke-static {v1}, Lspacemadness/com/lunarconsole/utils/StringUtils;->length(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lspacemadness/com/lunarconsole/console/ConsoleEntry;->message:Ljava/lang/String;

    iget-object v2, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->filterText:Ljava/lang/String;

    invoke-static {v1, v2}, Lspacemadness/com/lunarconsole/utils/StringUtils;->containsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private removeFilter()Z
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->isFiltering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->entries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;

    iput-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->currentEntries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->filteredEntries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;

    .line 206
    const/4 v0, 0x1

    .line 209
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private useFilteredFromEntries(Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;)V
    .locals 1
    .param p1, "entries"    # Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->filterEntries(Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;)Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;

    move-result-object v0

    .line 217
    .local v0, "filteredEntries":Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;
    iput-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->currentEntries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;

    .line 220
    iput-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->filteredEntries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;

    .line 221
    return-void
.end method


# virtual methods
.method public addEntry(Lspacemadness/com/lunarconsole/console/ConsoleEntry;)V
    .locals 2
    .param p1, "entry"    # Lspacemadness/com/lunarconsole/console/ConsoleEntry;

    .prologue
    .line 84
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->entries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;

    invoke-virtual {v1, p1}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;->addObject(Ljava/lang/Object;)V

    .line 87
    iget-byte v0, p1, Lspacemadness/com/lunarconsole/console/ConsoleEntry;->type:B

    .line 88
    .local v0, "entryType":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 90
    iget v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->logCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->logCount:I

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 94
    iget v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->warningCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->warningCount:I

    goto :goto_0

    .line 96
    :cond_2
    invoke-static {v0}, Lspacemadness/com/lunarconsole/console/ConsoleLogType;->isErrorType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    iget v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->errorCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->errorCount:I

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->entries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;

    invoke-virtual {v0}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;->clear()V

    .line 115
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->filteredEntries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->filteredEntries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;

    invoke-virtual {v0}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;->clear()V

    .line 120
    :cond_0
    iput v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->logCount:I

    .line 121
    iput v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->warningCount:I

    .line 122
    iput v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->errorCount:I

    .line 123
    return-void
.end method

.method public count()I
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->currentEntries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;

    invoke-virtual {v0}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;->count()I

    move-result v0

    return v0
.end method

.method public filterEntry(Lspacemadness/com/lunarconsole/console/ConsoleEntry;)Z
    .locals 2
    .param p1, "entry"    # Lspacemadness/com/lunarconsole/console/ConsoleEntry;

    .prologue
    const/4 v0, 0x1

    .line 67
    invoke-virtual {p0}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->isFiltering()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-direct {p0, p1}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->isFiltered(Lspacemadness/com/lunarconsole/console/ConsoleEntry;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->filteredEntries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;

    invoke-virtual {v1, p1}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;->addObject(Ljava/lang/Object;)V

    .line 78
    :cond_0
    :goto_0
    return v0

    .line 75
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEntry(I)Lspacemadness/com/lunarconsole/console/ConsoleEntry;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->currentEntries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;

    invoke-virtual {v0, p1}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;->objectAtIndex(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lspacemadness/com/lunarconsole/console/ConsoleEntry;

    return-object v0
.end method

.method public getErrorCount()I
    .locals 1

    .prologue
    .line 300
    iget v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->errorCount:I

    return v0
.end method

.method public getFilterText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->filterText:Ljava/lang/String;

    return-object v0
.end method

.method public getLogCount()I
    .locals 1

    .prologue
    .line 290
    iget v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->logCount:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 6

    .prologue
    .line 259
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .local v4, "text":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 262
    .local v3, "index":I
    iget-object v5, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->currentEntries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;

    invoke-virtual {v5}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;->count()I

    move-result v0

    .line 263
    .local v0, "count":I
    iget-object v5, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->currentEntries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;

    invoke-virtual {v5}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lspacemadness/com/lunarconsole/console/ConsoleEntry;

    .line 265
    .local v1, "entry":Lspacemadness/com/lunarconsole/console/ConsoleEntry;
    iget-object v5, v1, Lspacemadness/com/lunarconsole/console/ConsoleEntry;->message:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    add-int/lit8 v3, v3, 0x1

    if-ge v3, v0, :cond_0

    .line 268
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 272
    .end local v1    # "entry":Lspacemadness/com/lunarconsole/console/ConsoleEntry;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public getWarningCount()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->warningCount:I

    return v0
.end method

.method public isFilterLogTypeEnabled(I)Z
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 173
    iget v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->logDisabledTypesMask:I

    invoke-static {p1}, Lspacemadness/com/lunarconsole/console/ConsoleLogType;->getMask(I)I

    move-result v1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFiltering()Z
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->filteredEntries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverfloating()Z
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->currentEntries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;

    invoke-virtual {v0}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;->isOverfloating()Z

    move-result v0

    return v0
.end method

.method public isTrimmed()Z
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->currentEntries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;

    invoke-virtual {v0}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;->isTrimmed()Z

    move-result v0

    return v0
.end method

.method public overflowAmount()I
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->currentEntries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;

    invoke-virtual {v0}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;->overflowCount()I

    move-result v0

    return v0
.end method

.method public setFilterByLogType(IZ)Z
    .locals 1
    .param p1, "logType"    # I
    .param p2, "disabled"    # Z

    .prologue
    .line 148
    invoke-static {p1}, Lspacemadness/com/lunarconsole/console/ConsoleLogType;->getMask(I)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->setFilterByLogTypeMask(IZ)Z

    move-result v0

    return v0
.end method

.method public setFilterByLogTypeMask(IZ)Z
    .locals 3
    .param p1, "logTypeMask"    # I
    .param p2, "disabled"    # Z

    .prologue
    .line 153
    iget v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->logDisabledTypesMask:I

    .line 154
    .local v0, "oldDisabledTypesMask":I
    if-eqz p2, :cond_0

    .line 156
    iget v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->logDisabledTypesMask:I

    or-int/2addr v1, p1

    iput v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->logDisabledTypesMask:I

    .line 163
    :goto_0
    iget v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->logDisabledTypesMask:I

    if-eq v0, v1, :cond_2

    .line 165
    if-eqz p2, :cond_1

    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->appendFilter()Z

    move-result v1

    .line 168
    :goto_1
    return v1

    .line 160
    :cond_0
    iget v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->logDisabledTypesMask:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->logDisabledTypesMask:I

    goto :goto_0

    .line 165
    :cond_1
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->applyFilter()Z

    move-result v1

    goto :goto_1

    .line 168
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setFilterByText(Ljava/lang/String;)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 130
    iget-object v1, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->filterText:Ljava/lang/String;

    invoke-static {v1, p1}, Lspacemadness/com/lunarconsole/utils/ObjectUtils;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 132
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->filterText:Ljava/lang/String;

    .line 133
    .local v0, "oldFilterText":Ljava/lang/String;
    iput-object p1, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->filterText:Ljava/lang/String;

    .line 135
    invoke-static {p1}, Lspacemadness/com/lunarconsole/utils/StringUtils;->length(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0}, Lspacemadness/com/lunarconsole/utils/StringUtils;->length(Ljava/lang/String;)I

    move-result v2

    if-le v1, v2, :cond_1

    invoke-static {v0}, Lspacemadness/com/lunarconsole/utils/StringUtils;->length(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1, v0}, Lspacemadness/com/lunarconsole/utils/StringUtils;->hasPrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    :cond_0
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->appendFilter()Z

    move-result v1

    .line 143
    .end local v0    # "oldFilterText":Ljava/lang/String;
    :goto_0
    return v1

    .line 140
    .restart local v0    # "oldFilterText":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->applyFilter()Z

    move-result v1

    goto :goto_0

    .line 143
    .end local v0    # "oldFilterText":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public totalCount()I
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->currentEntries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;

    invoke-virtual {v0}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;->totalCount()I

    move-result v0

    return v0
.end method

.method public trimHead(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->entries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;

    invoke-virtual {v0, p1}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;->trimHead(I)V

    .line 110
    return-void
.end method

.method public trimmedCount()I
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lspacemadness/com/lunarconsole/console/ConsoleEntryList;->currentEntries:Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;

    invoke-virtual {v0}, Lspacemadness/com/lunarconsole/console/ConsoleEntryList$LimitSizeEntryList;->trimmedCount()I

    move-result v0

    return v0
.end method
