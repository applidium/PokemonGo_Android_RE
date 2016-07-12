.class Lcom/upsight/android/internal/persistence/SQLiteDataHelper;
.super Ljava/lang/Object;
.source "SQLiteDataHelper.java"

# interfaces
.implements Lcom/upsight/android/internal/persistence/DataHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/upsight/android/internal/persistence/SQLiteDataHelper$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "upsight.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final TABLE_MODELS:Ljava/lang/String; = "models"


# instance fields
.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/upsight/android/internal/persistence/SQLiteDataHelper$DatabaseHelper;

    invoke-direct {v0, p1}, Lcom/upsight/android/internal/persistence/SQLiteDataHelper$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/upsight/android/internal/persistence/SQLiteDataHelper;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 29
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 46
    iget-object v1, p0, Lcom/upsight/android/internal/persistence/SQLiteDataHelper;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 47
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "models"

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public insert(Landroid/content/ContentValues;)J
    .locals 4
    .param p1, "contentValues"    # Landroid/content/ContentValues;

    .prologue
    .line 40
    iget-object v1, p0, Lcom/upsight/android/internal/persistence/SQLiteDataHelper;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 41
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "models"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method

.method public query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8
    .param p1, "projection"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 34
    iget-object v1, p0, Lcom/upsight/android/internal/persistence/SQLiteDataHelper;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 35
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "models"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "contentValues"    # Landroid/content/ContentValues;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 52
    iget-object v1, p0, Lcom/upsight/android/internal/persistence/SQLiteDataHelper;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 53
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "models"

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method
