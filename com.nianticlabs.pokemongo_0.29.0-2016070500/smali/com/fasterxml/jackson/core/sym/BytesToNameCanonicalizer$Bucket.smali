.class final Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
.super Ljava/lang/Object;
.source "BytesToNameCanonicalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Bucket"
.end annotation


# instance fields
.field public final hash:I

.field public final length:I

.field public final name:Lcom/fasterxml/jackson/core/sym/Name;

.field public final next:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;


# direct methods
.method constructor <init>(Lcom/fasterxml/jackson/core/sym/Name;Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;)V
    .locals 1
    .param p1, "name"    # Lcom/fasterxml/jackson/core/sym/Name;
    .param p2, "next"    # Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .prologue
    .line 1264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1265
    iput-object p1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->name:Lcom/fasterxml/jackson/core/sym/Name;

    .line 1266
    iput-object p2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->next:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .line 1267
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->length:I

    .line 1268
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/sym/Name;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->hash:I

    .line 1269
    return-void

    .line 1267
    :cond_0
    iget v0, p2, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->length:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public find(III)Lcom/fasterxml/jackson/core/sym/Name;
    .locals 3
    .param p1, "h"    # I
    .param p2, "firstQuad"    # I
    .param p3, "secondQuad"    # I

    .prologue
    .line 1272
    iget v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->hash:I

    if-ne v2, p1, :cond_1

    .line 1273
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->name:Lcom/fasterxml/jackson/core/sym/Name;

    invoke-virtual {v2, p2, p3}, Lcom/fasterxml/jackson/core/sym/Name;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1274
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->name:Lcom/fasterxml/jackson/core/sym/Name;

    .line 1285
    :cond_0
    :goto_0
    return-object v1

    .line 1277
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->next:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .local v0, "curr":Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
    :goto_1
    if-eqz v0, :cond_3

    .line 1278
    iget v2, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->hash:I

    if-ne v2, p1, :cond_2

    .line 1279
    iget-object v1, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->name:Lcom/fasterxml/jackson/core/sym/Name;

    .line 1280
    .local v1, "currName":Lcom/fasterxml/jackson/core/sym/Name;
    invoke-virtual {v1, p2, p3}, Lcom/fasterxml/jackson/core/sym/Name;->equals(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1277
    .end local v1    # "currName":Lcom/fasterxml/jackson/core/sym/Name;
    :cond_2
    iget-object v0, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->next:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    goto :goto_1

    .line 1285
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public find(IIII)Lcom/fasterxml/jackson/core/sym/Name;
    .locals 3
    .param p1, "h"    # I
    .param p2, "q1"    # I
    .param p3, "q2"    # I
    .param p4, "q3"    # I

    .prologue
    .line 1289
    iget v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->hash:I

    if-ne v2, p1, :cond_1

    .line 1290
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->name:Lcom/fasterxml/jackson/core/sym/Name;

    invoke-virtual {v2, p2, p3, p4}, Lcom/fasterxml/jackson/core/sym/Name;->equals(III)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1291
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->name:Lcom/fasterxml/jackson/core/sym/Name;

    .line 1302
    :cond_0
    :goto_0
    return-object v1

    .line 1294
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->next:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .local v0, "curr":Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
    :goto_1
    if-eqz v0, :cond_3

    .line 1295
    iget v2, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->hash:I

    if-ne v2, p1, :cond_2

    .line 1296
    iget-object v1, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->name:Lcom/fasterxml/jackson/core/sym/Name;

    .line 1297
    .local v1, "currName":Lcom/fasterxml/jackson/core/sym/Name;
    invoke-virtual {v1, p2, p3, p4}, Lcom/fasterxml/jackson/core/sym/Name;->equals(III)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1294
    .end local v1    # "currName":Lcom/fasterxml/jackson/core/sym/Name;
    :cond_2
    iget-object v0, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->next:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    goto :goto_1

    .line 1302
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public find(I[II)Lcom/fasterxml/jackson/core/sym/Name;
    .locals 3
    .param p1, "h"    # I
    .param p2, "quads"    # [I
    .param p3, "qlen"    # I

    .prologue
    .line 1306
    iget v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->hash:I

    if-ne v2, p1, :cond_1

    .line 1307
    iget-object v2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->name:Lcom/fasterxml/jackson/core/sym/Name;

    invoke-virtual {v2, p2, p3}, Lcom/fasterxml/jackson/core/sym/Name;->equals([II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1308
    iget-object v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->name:Lcom/fasterxml/jackson/core/sym/Name;

    .line 1319
    :cond_0
    :goto_0
    return-object v1

    .line 1311
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->next:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .local v0, "curr":Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
    :goto_1
    if-eqz v0, :cond_3

    .line 1312
    iget v2, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->hash:I

    if-ne v2, p1, :cond_2

    .line 1313
    iget-object v1, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->name:Lcom/fasterxml/jackson/core/sym/Name;

    .line 1314
    .local v1, "currName":Lcom/fasterxml/jackson/core/sym/Name;
    invoke-virtual {v1, p2, p3}, Lcom/fasterxml/jackson/core/sym/Name;->equals([II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1311
    .end local v1    # "currName":Lcom/fasterxml/jackson/core/sym/Name;
    :cond_2
    iget-object v0, v0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->next:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    goto :goto_1

    .line 1319
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method
