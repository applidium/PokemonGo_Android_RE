.class Lrx/internal/util/IndexedRingBuffer$ElementSection;
.super Ljava/lang/Object;
.source "IndexedRingBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/util/IndexedRingBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ElementSection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final array:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final next:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lrx/internal/util/IndexedRingBuffer$ElementSection",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 485
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer$ElementSection;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    sget v1, Lrx/internal/util/IndexedRingBuffer;->SIZE:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    iput-object v0, p0, Lrx/internal/util/IndexedRingBuffer$ElementSection;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 487
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/internal/util/IndexedRingBuffer$ElementSection;->next:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method synthetic constructor <init>(Lrx/internal/util/IndexedRingBuffer$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/internal/util/IndexedRingBuffer$1;

    .prologue
    .line 485
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer$ElementSection;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    invoke-direct {p0}, Lrx/internal/util/IndexedRingBuffer$ElementSection;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lrx/internal/util/IndexedRingBuffer$ElementSection;)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 1
    .param p0, "x0"    # Lrx/internal/util/IndexedRingBuffer$ElementSection;

    .prologue
    .line 485
    iget-object v0, p0, Lrx/internal/util/IndexedRingBuffer$ElementSection;->array:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-object v0
.end method

.method static synthetic access$400(Lrx/internal/util/IndexedRingBuffer$ElementSection;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lrx/internal/util/IndexedRingBuffer$ElementSection;

    .prologue
    .line 485
    iget-object v0, p0, Lrx/internal/util/IndexedRingBuffer$ElementSection;->next:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method


# virtual methods
.method getNext()Lrx/internal/util/IndexedRingBuffer$ElementSection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/util/IndexedRingBuffer$ElementSection",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 490
    .local p0, "this":Lrx/internal/util/IndexedRingBuffer$ElementSection;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer$ElementSection;->next:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 491
    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer$ElementSection;->next:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/util/IndexedRingBuffer$ElementSection;

    .line 499
    :goto_0
    return-object v1

    .line 493
    :cond_0
    new-instance v0, Lrx/internal/util/IndexedRingBuffer$ElementSection;

    invoke-direct {v0}, Lrx/internal/util/IndexedRingBuffer$ElementSection;-><init>()V

    .line 494
    .local v0, "newSection":Lrx/internal/util/IndexedRingBuffer$ElementSection;, "Lrx/internal/util/IndexedRingBuffer$ElementSection<TE;>;"
    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer$ElementSection;->next:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 496
    goto :goto_0

    .line 499
    :cond_1
    iget-object v1, p0, Lrx/internal/util/IndexedRingBuffer$ElementSection;->next:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/util/IndexedRingBuffer$ElementSection;

    goto :goto_0
.end method
