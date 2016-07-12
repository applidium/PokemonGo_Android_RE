.class public final Lcom/google/gson/internal/LinkedTreeMap;
.super Ljava/util/AbstractMap;
.source "LinkedTreeMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/LinkedTreeMap$KeySet;,
        Lcom/google/gson/internal/LinkedTreeMap$EntrySet;,
        Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;,
        Lcom/google/gson/internal/LinkedTreeMap$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final NATURAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field private entrySet:Lcom/google/gson/internal/LinkedTreeMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedTreeMap",
            "<TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field final header:Lcom/google/gson/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private keySet:Lcom/google/gson/internal/LinkedTreeMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedTreeMap",
            "<TK;TV;>.KeySet;"
        }
    .end annotation
.end field

.field modCount:I

.field root:Lcom/google/gson/internal/LinkedTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/gson/internal/LinkedTreeMap;->$assertionsDisabled:Z

    .line 40
    new-instance v0, Lcom/google/gson/internal/LinkedTreeMap$1;

    invoke-direct {v0}, Lcom/google/gson/internal/LinkedTreeMap$1;-><init>()V

    sput-object v0, Lcom/google/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    return-void

    .line 38
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    sget-object v0, Lcom/google/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-direct {p0, v0}, Lcom/google/gson/internal/LinkedTreeMap;-><init>(Ljava/util/Comparator;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 48
    iput v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    .line 49
    iput v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    .line 52
    new-instance v0, Lcom/google/gson/internal/LinkedTreeMap$Node;

    invoke-direct {v0}, Lcom/google/gson/internal/LinkedTreeMap$Node;-><init>()V

    iput-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->header:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 72
    if-eqz p1, :cond_0

    .end local p1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    :goto_0
    iput-object p1, p0, Lcom/google/gson/internal/LinkedTreeMap;->comparator:Ljava/util/Comparator;

    .line 75
    return-void

    .line 72
    .restart local p1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    :cond_0
    sget-object p1, Lcom/google/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    goto :goto_0
.end method

.method private equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .prologue
    .line 208
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rebalance(Lcom/google/gson/internal/LinkedTreeMap$Node;Z)V
    .locals 18
    .param p2, "insert"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    .prologue
    .line 311
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    .local p1, "unbalanced":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    move-object/from16 v9, p1

    .local v9, "node":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v9, :cond_1

    .line 312
    iget-object v2, v9, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 313
    .local v2, "left":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v10, v9, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 314
    .local v10, "right":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    if-eqz v2, :cond_2

    iget v4, v2, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 315
    .local v4, "leftHeight":I
    :goto_1
    if-eqz v10, :cond_3

    iget v12, v10, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 317
    .local v12, "rightHeight":I
    :goto_2
    sub-int v1, v4, v12

    .line 318
    .local v1, "delta":I
    const/16 v17, -0x2

    move/from16 v0, v17

    if-ne v1, v0, :cond_8

    .line 319
    iget-object v13, v10, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 320
    .local v13, "rightLeft":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v15, v10, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 321
    .local v15, "rightRight":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    if-eqz v15, :cond_4

    iget v0, v15, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    move/from16 v16, v0

    .line 322
    .local v16, "rightRightHeight":I
    :goto_3
    if-eqz v13, :cond_5

    iget v14, v13, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 324
    .local v14, "rightLeftHeight":I
    :goto_4
    sub-int v11, v14, v16

    .line 325
    .local v11, "rightDelta":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v11, v0, :cond_0

    if-nez v11, :cond_6

    if-nez p2, :cond_6

    .line 326
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/google/gson/internal/LinkedTreeMap;->rotateLeft(Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 332
    :goto_5
    if-eqz p2, :cond_a

    .line 368
    .end local v1    # "delta":I
    .end local v2    # "left":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .end local v4    # "leftHeight":I
    .end local v10    # "right":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .end local v11    # "rightDelta":I
    .end local v12    # "rightHeight":I
    .end local v13    # "rightLeft":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .end local v14    # "rightLeftHeight":I
    .end local v15    # "rightRight":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .end local v16    # "rightRightHeight":I
    :cond_1
    :goto_6
    return-void

    .line 314
    .restart local v2    # "left":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .restart local v10    # "right":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 315
    .restart local v4    # "leftHeight":I
    :cond_3
    const/4 v12, 0x0

    goto :goto_2

    .line 321
    .restart local v1    # "delta":I
    .restart local v12    # "rightHeight":I
    .restart local v13    # "rightLeft":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .restart local v15    # "rightRight":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    :cond_4
    const/16 v16, 0x0

    goto :goto_3

    .line 322
    .restart local v16    # "rightRightHeight":I
    :cond_5
    const/4 v14, 0x0

    goto :goto_4

    .line 328
    .restart local v11    # "rightDelta":I
    .restart local v14    # "rightLeftHeight":I
    :cond_6
    sget-boolean v17, Lcom/google/gson/internal/LinkedTreeMap;->$assertionsDisabled:Z

    if-nez v17, :cond_7

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v11, v0, :cond_7

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 329
    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/google/gson/internal/LinkedTreeMap;->rotateRight(Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 330
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/google/gson/internal/LinkedTreeMap;->rotateLeft(Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    goto :goto_5

    .line 336
    .end local v11    # "rightDelta":I
    .end local v13    # "rightLeft":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .end local v14    # "rightLeftHeight":I
    .end local v15    # "rightRight":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .end local v16    # "rightRightHeight":I
    :cond_8
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v1, v0, :cond_f

    .line 337
    iget-object v5, v2, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 338
    .local v5, "leftLeft":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v7, v2, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 339
    .local v7, "leftRight":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    if-eqz v7, :cond_b

    iget v8, v7, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 340
    .local v8, "leftRightHeight":I
    :goto_7
    if-eqz v5, :cond_c

    iget v6, v5, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 342
    .local v6, "leftLeftHeight":I
    :goto_8
    sub-int v3, v6, v8

    .line 343
    .local v3, "leftDelta":I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v3, v0, :cond_9

    if-nez v3, :cond_d

    if-nez p2, :cond_d

    .line 344
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/google/gson/internal/LinkedTreeMap;->rotateRight(Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 350
    :goto_9
    if-nez p2, :cond_1

    .line 311
    .end local v3    # "leftDelta":I
    .end local v5    # "leftLeft":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .end local v6    # "leftLeftHeight":I
    .end local v7    # "leftRight":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .end local v8    # "leftRightHeight":I
    :cond_a
    iget-object v9, v9, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    goto/16 :goto_0

    .line 339
    .restart local v5    # "leftLeft":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .restart local v7    # "leftRight":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    :cond_b
    const/4 v8, 0x0

    goto :goto_7

    .line 340
    .restart local v8    # "leftRightHeight":I
    :cond_c
    const/4 v6, 0x0

    goto :goto_8

    .line 346
    .restart local v3    # "leftDelta":I
    .restart local v6    # "leftLeftHeight":I
    :cond_d
    sget-boolean v17, Lcom/google/gson/internal/LinkedTreeMap;->$assertionsDisabled:Z

    if-nez v17, :cond_e

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v3, v0, :cond_e

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 347
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/gson/internal/LinkedTreeMap;->rotateLeft(Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 348
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/google/gson/internal/LinkedTreeMap;->rotateRight(Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    goto :goto_9

    .line 354
    .end local v3    # "leftDelta":I
    .end local v5    # "leftLeft":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .end local v6    # "leftLeftHeight":I
    .end local v7    # "leftRight":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .end local v8    # "leftRightHeight":I
    :cond_f
    if-nez v1, :cond_10

    .line 355
    add-int/lit8 v17, v4, 0x1

    move/from16 v0, v17

    iput v0, v9, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 356
    if-eqz p2, :cond_a

    goto :goto_6

    .line 361
    :cond_10
    sget-boolean v17, Lcom/google/gson/internal/LinkedTreeMap;->$assertionsDisabled:Z

    if-nez v17, :cond_11

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v1, v0, :cond_11

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v1, v0, :cond_11

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 362
    :cond_11
    invoke-static {v4, v12}, Ljava/lang/Math;->max(II)I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    iput v0, v9, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 363
    if-nez p2, :cond_a

    goto/16 :goto_6
.end method

.method private replaceInParent(Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;",
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 285
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    .local p1, "node":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .local p2, "replacement":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 286
    .local v0, "parent":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 287
    if-eqz p2, :cond_0

    .line 288
    iput-object v0, p2, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 291
    :cond_0
    if-eqz v0, :cond_3

    .line 292
    iget-object v1, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    if-ne v1, p1, :cond_1

    .line 293
    iput-object p2, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 301
    :goto_0
    return-void

    .line 295
    :cond_1
    sget-boolean v1, Lcom/google/gson/internal/LinkedTreeMap;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    if-eq v1, p1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 296
    :cond_2
    iput-object p2, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_0

    .line 299
    :cond_3
    iput-object p2, p0, Lcom/google/gson/internal/LinkedTreeMap;->root:Lcom/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_0
.end method

.method private rotateLeft(Lcom/google/gson/internal/LinkedTreeMap$Node;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    .local p1, "root":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    const/4 v5, 0x0

    .line 374
    iget-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 375
    .local v0, "left":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v1, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 376
    .local v1, "pivot":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v2, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 377
    .local v2, "pivotLeft":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v3, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 380
    .local v3, "pivotRight":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iput-object v2, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 381
    if-eqz v2, :cond_0

    .line 382
    iput-object p1, v2, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 385
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 388
    iput-object p1, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 389
    iput-object v1, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 392
    if-eqz v0, :cond_2

    iget v4, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    move v6, v4

    :goto_0
    if-eqz v2, :cond_3

    iget v4, v2, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    :goto_1
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 394
    iget v4, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    if-eqz v3, :cond_1

    iget v5, v3, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 396
    return-void

    :cond_2
    move v6, v5

    .line 392
    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method private rotateRight(Lcom/google/gson/internal/LinkedTreeMap$Node;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    .local p1, "root":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    const/4 v5, 0x0

    .line 402
    iget-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 403
    .local v0, "pivot":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v3, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 404
    .local v3, "right":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v1, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 405
    .local v1, "pivotLeft":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v2, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 408
    .local v2, "pivotRight":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iput-object v2, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 409
    if-eqz v2, :cond_0

    .line 410
    iput-object p1, v2, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 413
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/google/gson/internal/LinkedTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 416
    iput-object p1, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 417
    iput-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 420
    if-eqz v3, :cond_2

    iget v4, v3, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    move v6, v4

    :goto_0
    if-eqz v2, :cond_3

    iget v4, v2, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    :goto_1
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 422
    iget v4, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    if-eqz v1, :cond_1

    iget v5, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 424
    return-void

    :cond_2
    move v6, v5

    .line 420
    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 625
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 101
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/gson/internal/LinkedTreeMap;->root:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 102
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    .line 103
    iget v1, p0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    .line 106
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->header:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 107
    .local v0, "header":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iput-object v0, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iput-object v0, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->next:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 108
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 87
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 430
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->entrySet:Lcom/google/gson/internal/LinkedTreeMap$EntrySet;

    .line 431
    .local v0, "result":Lcom/google/gson/internal/LinkedTreeMap$EntrySet;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>.EntrySet;"
    if-eqz v0, :cond_0

    .end local v0    # "result":Lcom/google/gson/internal/LinkedTreeMap$EntrySet;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>.EntrySet;"
    :goto_0
    return-object v0

    .restart local v0    # "result":Lcom/google/gson/internal/LinkedTreeMap$EntrySet;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>.EntrySet;"
    :cond_0
    new-instance v0, Lcom/google/gson/internal/LinkedTreeMap$EntrySet;

    .end local v0    # "result":Lcom/google/gson/internal/LinkedTreeMap$EntrySet;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>.EntrySet;"
    invoke-direct {v0, p0}, Lcom/google/gson/internal/LinkedTreeMap$EntrySet;-><init>(Lcom/google/gson/internal/LinkedTreeMap;)V

    iput-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->entrySet:Lcom/google/gson/internal/LinkedTreeMap$EntrySet;

    goto :goto_0
.end method

.method find(Ljava/lang/Object;Z)Lcom/google/gson/internal/LinkedTreeMap$Node;
    .locals 10
    .param p2, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v8, 0x0

    .line 122
    iget-object v2, p0, Lcom/google/gson/internal/LinkedTreeMap;->comparator:Ljava/util/Comparator;

    .line 123
    .local v2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-object v6, p0, Lcom/google/gson/internal/LinkedTreeMap;->root:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 124
    .local v6, "nearest":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    const/4 v3, 0x0

    .line 126
    .local v3, "comparison":I
    if-eqz v6, :cond_4

    .line 129
    sget-object v7, Lcom/google/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v2, v7, :cond_1

    move-object v7, p1

    check-cast v7, Ljava/lang/Comparable;

    move-object v1, v7

    .line 134
    .local v1, "comparableKey":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    :goto_0
    if-eqz v1, :cond_2

    iget-object v7, v6, Lcom/google/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v1, v7}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    .line 139
    :goto_1
    if-nez v3, :cond_3

    move-object v8, v6

    .line 180
    .end local v1    # "comparableKey":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    :cond_0
    :goto_2
    return-object v8

    :cond_1
    move-object v1, v8

    .line 129
    goto :goto_0

    .line 134
    .restart local v1    # "comparableKey":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    :cond_2
    iget-object v7, v6, Lcom/google/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    invoke-interface {v2, p1, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    goto :goto_1

    .line 144
    :cond_3
    if-gez v3, :cond_5

    iget-object v0, v6, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 145
    .local v0, "child":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    :goto_3
    if-nez v0, :cond_6

    .line 154
    .end local v0    # "child":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .end local v1    # "comparableKey":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    :cond_4
    if-eqz p2, :cond_0

    .line 159
    iget-object v5, p0, Lcom/google/gson/internal/LinkedTreeMap;->header:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 161
    .local v5, "header":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    if-nez v6, :cond_8

    .line 163
    sget-object v7, Lcom/google/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne v2, v7, :cond_7

    instance-of v7, p1, Ljava/lang/Comparable;

    if-nez v7, :cond_7

    .line 164
    new-instance v7, Ljava/lang/ClassCastException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not Comparable"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 144
    .end local v5    # "header":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .restart local v1    # "comparableKey":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    :cond_5
    iget-object v0, v6, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_3

    .line 149
    .restart local v0    # "child":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    :cond_6
    move-object v6, v0

    .line 150
    goto :goto_0

    .line 166
    .end local v0    # "child":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .end local v1    # "comparableKey":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    .restart local v5    # "header":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    :cond_7
    new-instance v4, Lcom/google/gson/internal/LinkedTreeMap$Node;

    iget-object v7, v5, Lcom/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedTreeMap$Node;

    invoke-direct {v4, v6, p1, v5, v7}, Lcom/google/gson/internal/LinkedTreeMap$Node;-><init>(Lcom/google/gson/internal/LinkedTreeMap$Node;Ljava/lang/Object;Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 167
    .local v4, "created":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iput-object v4, p0, Lcom/google/gson/internal/LinkedTreeMap;->root:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 177
    :goto_4
    iget v7, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    .line 178
    iget v7, p0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    move-object v8, v4

    .line 180
    goto :goto_2

    .line 169
    .end local v4    # "created":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    :cond_8
    new-instance v4, Lcom/google/gson/internal/LinkedTreeMap$Node;

    iget-object v7, v5, Lcom/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedTreeMap$Node;

    invoke-direct {v4, v6, p1, v5, v7}, Lcom/google/gson/internal/LinkedTreeMap$Node;-><init>(Lcom/google/gson/internal/LinkedTreeMap$Node;Ljava/lang/Object;Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 170
    .restart local v4    # "created":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    if-gez v3, :cond_9

    .line 171
    iput-object v4, v6, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 175
    :goto_5
    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/google/gson/internal/LinkedTreeMap;->rebalance(Lcom/google/gson/internal/LinkedTreeMap$Node;Z)V

    goto :goto_4

    .line 173
    :cond_9
    iput-object v4, v6, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_5
.end method

.method findByEntry(Ljava/util/Map$Entry;)Lcom/google/gson/internal/LinkedTreeMap$Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<**>;)",
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/gson/internal/LinkedTreeMap;->findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    .line 203
    .local v0, "mine":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/google/gson/internal/LinkedTreeMap;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 204
    .local v1, "valuesEqual":Z
    :goto_0
    if-eqz v1, :cond_1

    .end local v0    # "mine":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    :goto_1
    return-object v0

    .line 203
    .end local v1    # "valuesEqual":Z
    .restart local v0    # "mine":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 204
    .restart local v1    # "valuesEqual":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedTreeMap$Node;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 186
    if-eqz p1, :cond_0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2}, Lcom/google/gson/internal/LinkedTreeMap;->find(Ljava/lang/Object;Z)Lcom/google/gson/internal/LinkedTreeMap$Node;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 188
    :cond_0
    :goto_0
    return-object v1

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/ClassCastException;
    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    .line 83
    .local v0, "node":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 435
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->keySet:Lcom/google/gson/internal/LinkedTreeMap$KeySet;

    .line 436
    .local v0, "result":Lcom/google/gson/internal/LinkedTreeMap$KeySet;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>.KeySet;"
    if-eqz v0, :cond_0

    .end local v0    # "result":Lcom/google/gson/internal/LinkedTreeMap$KeySet;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>.KeySet;"
    :goto_0
    return-object v0

    .restart local v0    # "result":Lcom/google/gson/internal/LinkedTreeMap$KeySet;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>.KeySet;"
    :cond_0
    new-instance v0, Lcom/google/gson/internal/LinkedTreeMap$KeySet;

    .end local v0    # "result":Lcom/google/gson/internal/LinkedTreeMap$KeySet;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>.KeySet;"
    invoke-direct {v0, p0}, Lcom/google/gson/internal/LinkedTreeMap$KeySet;-><init>(Lcom/google/gson/internal/LinkedTreeMap;)V

    iput-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->keySet:Lcom/google/gson/internal/LinkedTreeMap$KeySet;

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_0

    .line 92
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "key == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/google/gson/internal/LinkedTreeMap;->find(Ljava/lang/Object;Z)Lcom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    .line 95
    .local v0, "created":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v1, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    .line 96
    .local v1, "result":Ljava/lang/Object;, "TV;"
    iput-object p2, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    .line 97
    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->removeInternalByKey(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    .line 112
    .local v0, "node":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method removeInternal(Lcom/google/gson/internal/LinkedTreeMap$Node;Z)V
    .locals 10
    .param p2, "unlink"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;Z)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    .local p1, "node":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 218
    if-eqz p2, :cond_0

    .line 219
    iget-object v6, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iget-object v7, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->next:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iput-object v7, v6, Lcom/google/gson/internal/LinkedTreeMap$Node;->next:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 220
    iget-object v6, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->next:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iget-object v7, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedTreeMap$Node;

    iput-object v7, v6, Lcom/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 223
    :cond_0
    iget-object v1, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 224
    .local v1, "left":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v4, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 225
    .local v4, "right":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v3, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 226
    .local v3, "originalParent":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    .line 237
    iget v6, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    iget v7, v4, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    if-le v6, v7, :cond_3

    invoke-virtual {v1}, Lcom/google/gson/internal/LinkedTreeMap$Node;->last()Lcom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    .line 238
    .local v0, "adjacent":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    :goto_0
    invoke-virtual {p0, v0, v9}, Lcom/google/gson/internal/LinkedTreeMap;->removeInternal(Lcom/google/gson/internal/LinkedTreeMap$Node;Z)V

    .line 240
    const/4 v2, 0x0

    .line 241
    .local v2, "leftHeight":I
    iget-object v1, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 242
    if-eqz v1, :cond_1

    .line 243
    iget v2, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 244
    iput-object v1, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 245
    iput-object v0, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 246
    iput-object v8, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 249
    :cond_1
    const/4 v5, 0x0

    .line 250
    .local v5, "rightHeight":I
    iget-object v4, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 251
    if-eqz v4, :cond_2

    .line 252
    iget v5, v4, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 253
    iput-object v4, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 254
    iput-object v0, v4, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 255
    iput-object v8, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 258
    :cond_2
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iput v6, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 259
    invoke-direct {p0, p1, v0}, Lcom/google/gson/internal/LinkedTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 274
    .end local v0    # "adjacent":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    .end local v2    # "leftHeight":I
    .end local v5    # "rightHeight":I
    :goto_1
    return-void

    .line 237
    :cond_3
    invoke-virtual {v4}, Lcom/google/gson/internal/LinkedTreeMap$Node;->first()Lcom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    goto :goto_0

    .line 261
    :cond_4
    if-eqz v1, :cond_5

    .line 262
    invoke-direct {p0, p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 263
    iput-object v8, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 271
    :goto_2
    invoke-direct {p0, v3, v9}, Lcom/google/gson/internal/LinkedTreeMap;->rebalance(Lcom/google/gson/internal/LinkedTreeMap$Node;Z)V

    .line 272
    iget v6, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    .line 273
    iget v6, p0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    goto :goto_1

    .line 264
    :cond_5
    if-eqz v4, :cond_6

    .line 265
    invoke-direct {p0, p1, v4}, Lcom/google/gson/internal/LinkedTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 266
    iput-object v8, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    goto :goto_2

    .line 268
    :cond_6
    invoke-direct {p0, p1, v8}, Lcom/google/gson/internal/LinkedTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    goto :goto_2
.end method

.method removeInternalByKey(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedTreeMap$Node;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/gson/internal/LinkedTreeMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 277
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->findByObject(Ljava/lang/Object;)Lcom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    .line 278
    .local v0, "node":Lcom/google/gson/internal/LinkedTreeMap$Node;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 279
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/gson/internal/LinkedTreeMap;->removeInternal(Lcom/google/gson/internal/LinkedTreeMap$Node;Z)V

    .line 281
    :cond_0
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 78
    .local p0, "this":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>;"
    iget v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    return v0
.end method
