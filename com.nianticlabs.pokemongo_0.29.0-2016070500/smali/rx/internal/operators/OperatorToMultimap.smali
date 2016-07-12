.class public final Lrx/internal/operators/OperatorToMultimap;
.super Ljava/lang/Object;
.source "OperatorToMultimap.java"

# interfaces
.implements Lrx/Observable$Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorToMultimap$DefaultMultimapCollectionFactory;,
        Lrx/internal/operators/OperatorToMultimap$DefaultToMultimapFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$Operator",
        "<",
        "Ljava/util/Map",
        "<TK;",
        "Ljava/util/Collection",
        "<TV;>;>;TT;>;"
    }
.end annotation


# instance fields
.field private final collectionFactory:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TK;+",
            "Ljava/util/Collection",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private final keySelector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+TK;>;"
        }
    .end annotation
.end field

.field private final mapFactory:Lrx/functions/Func0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func0",
            "<+",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation
.end field

.field private final valueSelector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-TT;+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/functions/Func1;Lrx/functions/Func1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;+TK;>;",
            "Lrx/functions/Func1",
            "<-TT;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lrx/internal/operators/OperatorToMultimap;, "Lrx/internal/operators/OperatorToMultimap<TT;TK;TV;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "valueSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TV;>;"
    new-instance v0, Lrx/internal/operators/OperatorToMultimap$DefaultToMultimapFactory;

    invoke-direct {v0}, Lrx/internal/operators/OperatorToMultimap$DefaultToMultimapFactory;-><init>()V

    new-instance v1, Lrx/internal/operators/OperatorToMultimap$DefaultMultimapCollectionFactory;

    invoke-direct {v1}, Lrx/internal/operators/OperatorToMultimap$DefaultMultimapCollectionFactory;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lrx/internal/operators/OperatorToMultimap;-><init>(Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func0;Lrx/functions/Func1;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;+TK;>;",
            "Lrx/functions/Func1",
            "<-TT;+TV;>;",
            "Lrx/functions/Func0",
            "<+",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lrx/internal/operators/OperatorToMultimap;, "Lrx/internal/operators/OperatorToMultimap<TT;TK;TV;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "valueSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TV;>;"
    .local p3, "mapFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<+Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorToMultimap$DefaultMultimapCollectionFactory;

    invoke-direct {v0}, Lrx/internal/operators/OperatorToMultimap$DefaultMultimapCollectionFactory;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lrx/internal/operators/OperatorToMultimap;-><init>(Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func0;Lrx/functions/Func1;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func0;Lrx/functions/Func1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;+TK;>;",
            "Lrx/functions/Func1",
            "<-TT;+TV;>;",
            "Lrx/functions/Func0",
            "<+",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;",
            "Lrx/functions/Func1",
            "<-TK;+",
            "Ljava/util/Collection",
            "<TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lrx/internal/operators/OperatorToMultimap;, "Lrx/internal/operators/OperatorToMultimap<TT;TK;TV;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "valueSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TV;>;"
    .local p3, "mapFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<+Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;>;"
    .local p4, "collectionFactory":Lrx/functions/Func1;, "Lrx/functions/Func1<-TK;+Ljava/util/Collection<TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lrx/internal/operators/OperatorToMultimap;->keySelector:Lrx/functions/Func1;

    .line 99
    iput-object p2, p0, Lrx/internal/operators/OperatorToMultimap;->valueSelector:Lrx/functions/Func1;

    .line 100
    iput-object p3, p0, Lrx/internal/operators/OperatorToMultimap;->mapFactory:Lrx/functions/Func0;

    .line 101
    iput-object p4, p0, Lrx/internal/operators/OperatorToMultimap;->collectionFactory:Lrx/functions/Func1;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lrx/internal/operators/OperatorToMultimap;)Lrx/functions/Func0;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorToMultimap;

    .prologue
    .line 36
    iget-object v0, p0, Lrx/internal/operators/OperatorToMultimap;->mapFactory:Lrx/functions/Func0;

    return-object v0
.end method

.method static synthetic access$100(Lrx/internal/operators/OperatorToMultimap;)Lrx/functions/Func1;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorToMultimap;

    .prologue
    .line 36
    iget-object v0, p0, Lrx/internal/operators/OperatorToMultimap;->keySelector:Lrx/functions/Func1;

    return-object v0
.end method

.method static synthetic access$200(Lrx/internal/operators/OperatorToMultimap;)Lrx/functions/Func1;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorToMultimap;

    .prologue
    .line 36
    iget-object v0, p0, Lrx/internal/operators/OperatorToMultimap;->valueSelector:Lrx/functions/Func1;

    return-object v0
.end method

.method static synthetic access$300(Lrx/internal/operators/OperatorToMultimap;)Lrx/functions/Func1;
    .locals 1
    .param p0, "x0"    # Lrx/internal/operators/OperatorToMultimap;

    .prologue
    .line 36
    iget-object v0, p0, Lrx/internal/operators/OperatorToMultimap;->collectionFactory:Lrx/functions/Func1;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 36
    .local p0, "this":Lrx/internal/operators/OperatorToMultimap;, "Lrx/internal/operators/OperatorToMultimap<TT;TK;TV;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/OperatorToMultimap;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;)",
            "Lrx/Subscriber",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lrx/internal/operators/OperatorToMultimap;, "Lrx/internal/operators/OperatorToMultimap<TT;TK;TV;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorToMultimap$1;

    invoke-direct {v0, p0, p1, p1}, Lrx/internal/operators/OperatorToMultimap$1;-><init>(Lrx/internal/operators/OperatorToMultimap;Lrx/Subscriber;Lrx/Subscriber;)V

    return-object v0
.end method
