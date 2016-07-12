.class final Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;
.super Ljava/lang/Object;
.source "BytesToNameCanonicalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TableInfo"
.end annotation


# instance fields
.field public final collCount:I

.field public final collEnd:I

.field public final collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

.field public final count:I

.field public final longestCollisionList:I

.field public final mainHash:[I

.field public final mainHashMask:I

.field public final mainNames:[Lcom/fasterxml/jackson/core/sym/Name;


# direct methods
.method public constructor <init>(II[I[Lcom/fasterxml/jackson/core/sym/Name;[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;III)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "mainHashMask"    # I
    .param p3, "mainHash"    # [I
    .param p4, "mainNames"    # [Lcom/fasterxml/jackson/core/sym/Name;
    .param p5, "collList"    # [Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
    .param p6, "collCount"    # I
    .param p7, "collEnd"    # I
    .param p8, "longestCollisionList"    # I

    .prologue
    .line 1233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1234
    iput p1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->count:I

    .line 1235
    iput p2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->mainHashMask:I

    .line 1236
    iput-object p3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->mainHash:[I

    .line 1237
    iput-object p4, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    .line 1238
    iput-object p5, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .line 1239
    iput p6, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->collCount:I

    .line 1240
    iput p7, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->collEnd:I

    .line 1241
    iput p8, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->longestCollisionList:I

    .line 1242
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    .prologue
    .line 1245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1246
    iget v0, p1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->count:I

    .line 1247
    iget v0, p1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hashMask:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->mainHashMask:I

    .line 1248
    iget-object v0, p1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_hash:[I

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->mainHash:[I

    .line 1249
    iget-object v0, p1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    .line 1250
    iget-object v0, p1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .line 1251
    iget v0, p1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->collCount:I

    .line 1252
    iget v0, p1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->collEnd:I

    .line 1253
    iget v0, p1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_longestCollisionList:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->longestCollisionList:I

    .line 1254
    return-void
.end method
