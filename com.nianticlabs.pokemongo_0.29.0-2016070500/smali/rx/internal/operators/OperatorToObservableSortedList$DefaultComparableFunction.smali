.class Lrx/internal/operators/OperatorToObservableSortedList$DefaultComparableFunction;
.super Ljava/lang/Object;
.source "OperatorToObservableSortedList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorToObservableSortedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultComparableFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lrx/internal/operators/OperatorToObservableSortedList$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/internal/operators/OperatorToObservableSortedList$1;

    .prologue
    .line 106
    invoke-direct {p0}, Lrx/internal/operators/OperatorToObservableSortedList$DefaultComparableFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .param p1, "t1"    # Ljava/lang/Object;
    .param p2, "t2"    # Ljava/lang/Object;

    .prologue
    .line 112
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    .local v0, "c1":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    move-object v1, p2

    .line 113
    check-cast v1, Ljava/lang/Comparable;

    .line 114
    .local v1, "c2":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    return v2
.end method
