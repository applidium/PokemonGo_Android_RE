.class public Lcom/voxelbusters/nativeplugins/extensions/FileProviderExtended;
.super Landroid/support/v4/content/FileProvider;
.source "FileProviderExtended.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/support/v4/content/FileProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "columnProjection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArguments"    # [Ljava/lang/String;
    .param p5, "sortingOrder"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-super/range {p0 .. p5}, Landroid/support/v4/content/FileProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 19
    .local v5, "source":Landroid/database/Cursor;
    invoke-interface {v5}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v6

    .line 20
    .local v6, "sourceColumnNames":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 22
    .local v2, "finalColumnNames":[Ljava/lang/String;
    array-length v8, v6

    const/4 v7, 0x0

    :goto_0
    if-lt v7, v8, :cond_2

    .line 30
    if-nez v2, :cond_0

    .line 32
    array-length v7, v6

    add-int/lit8 v7, v7, 0x1

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "finalColumnNames":[Ljava/lang/String;
    check-cast v2, [Ljava/lang/String;

    .line 34
    .restart local v2    # "finalColumnNames":[Ljava/lang/String;
    array-length v7, v6

    const-string v8, "_data"

    aput-object v8, v2, v7

    .line 37
    :cond_0
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-direct {v1, v2, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 39
    .local v1, "cursor":Landroid/database/MatrixCursor;
    const/4 v7, -0x1

    invoke-interface {v5, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 41
    :cond_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_4

    .line 50
    return-object v1

    .line 22
    .end local v1    # "cursor":Landroid/database/MatrixCursor;
    :cond_2
    aget-object v0, v6, v7

    .line 24
    .local v0, "columnName":Ljava/lang/String;
    const-string v9, "_data"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 26
    move-object v2, v6

    .line 22
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 43
    .end local v0    # "columnName":Ljava/lang/String;
    .restart local v1    # "cursor":Landroid/database/MatrixCursor;
    :cond_4
    invoke-virtual {v1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    .line 44
    .local v4, "row":Landroid/database/MatrixCursor$RowBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v7, v6

    if-ge v3, v7, :cond_1

    .line 46
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 44
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
