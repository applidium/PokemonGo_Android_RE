.class public final Lcom/unity3d/player/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unity3d/player/j;


# instance fields
.field private final a:Ljava/util/Queue;

.field private final b:Landroid/app/Activity;

.field private c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/unity3d/player/p;->a:Ljava/util/Queue;

    new-instance v0, Lcom/unity3d/player/p$1;

    invoke-direct {v0, p0}, Lcom/unity3d/player/p$1;-><init>(Lcom/unity3d/player/p;)V

    iput-object v0, p0, Lcom/unity3d/player/p;->c:Ljava/lang/Runnable;

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/unity3d/player/p;->b:Landroid/app/Activity;

    return-void
.end method

.method private static a([Landroid/view/MotionEvent$PointerCoords;[FI)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    new-instance v1, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v1}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v1, p0, v0

    add-int/lit8 v2, p2, 0x1

    aget v3, p1, p2

    iput v3, v1, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    add-int/lit8 v3, v2, 0x1

    aget v2, p1, v2

    iput v2, v1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    add-int/lit8 v2, v3, 0x1

    aget v3, p1, v3

    iput v3, v1, Landroid/view/MotionEvent$PointerCoords;->size:F

    add-int/lit8 v3, v2, 0x1

    aget v2, p1, v2

    iput v2, v1, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    add-int/lit8 v2, v3, 0x1

    aget v3, p1, v3

    iput v3, v1, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    add-int/lit8 v3, v2, 0x1

    aget v2, p1, v2

    iput v2, v1, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    add-int/lit8 v2, v3, 0x1

    aget v3, p1, v3

    iput v3, v1, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    add-int/lit8 v3, v2, 0x1

    aget v2, p1, v2

    iput v2, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-int/lit8 p2, v3, 0x1

    aget v2, p1, v3

    iput v2, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p2
.end method

.method static synthetic a(Lcom/unity3d/player/p;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/p;->a:Ljava/util/Queue;

    return-object v0
.end method

.method private static a(I[F)[Landroid/view/MotionEvent$PointerCoords;
    .locals 2

    new-array v0, p0, [Landroid/view/MotionEvent$PointerCoords;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/unity3d/player/p;->a([Landroid/view/MotionEvent$PointerCoords;[FI)I

    return-object v0
.end method

.method static synthetic b(Lcom/unity3d/player/p;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/p;->b:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final a(JJII[I[FIFFIIIII[J[F)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/unity3d/player/p;->b:Landroid/app/Activity;

    if-eqz v2, :cond_1

    move/from16 v0, p6

    move-object/from16 v1, p8

    invoke-static {v0, v1}, Lcom/unity3d/player/p;->a(I[F)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    invoke-static/range {v2 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    move/from16 v0, p16

    if-ge v2, v0, :cond_0

    move/from16 v0, p6

    new-array v5, v0, [Landroid/view/MotionEvent$PointerCoords;

    move-object/from16 v0, p18

    invoke-static {v5, v0, v3}, Lcom/unity3d/player/p;->a([Landroid/view/MotionEvent$PointerCoords;[FI)I

    move-result v3

    aget-wide v6, p17, v2

    move/from16 v0, p9

    invoke-virtual {v4, v6, v7, v5, v0}, Landroid/view/MotionEvent;->addBatch(J[Landroid/view/MotionEvent$PointerCoords;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/unity3d/player/p;->a:Ljava/util/Queue;

    invoke-interface {v2, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/unity3d/player/p;->b:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/unity3d/player/p;->c:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
