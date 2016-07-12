.class public Lrx/Observable;
.super Ljava/lang/Object;
.source "Observable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/Observable$ThrowObservable;,
        Lrx/Observable$NeverObservable;,
        Lrx/Observable$HolderAnyForEmpty;,
        Lrx/Observable$CountLongHolder;,
        Lrx/Observable$CountHolder;,
        Lrx/Observable$EmptyHolder;,
        Lrx/Observable$Transformer;,
        Lrx/Observable$Operator;,
        Lrx/Observable$OnSubscribe;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final hook:Lrx/plugins/RxJavaObservableExecutionHook;


# instance fields
.field final onSubscribe:Lrx/Observable$OnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable$OnSubscribe",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->getInstance()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->getObservableExecutionHook()Lrx/plugins/RxJavaObservableExecutionHook;

    move-result-object v0

    sput-object v0, Lrx/Observable;->hook:Lrx/plugins/RxJavaObservableExecutionHook;

    return-void
.end method

.method protected constructor <init>(Lrx/Observable$OnSubscribe;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "f":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lrx/Observable;->onSubscribe:Lrx/Observable$OnSubscribe;

    .line 62
    return-void
.end method

.method static synthetic access$000()Lrx/plugins/RxJavaObservableExecutionHook;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lrx/Observable;->hook:Lrx/plugins/RxJavaObservableExecutionHook;

    return-object v0
.end method

.method public static final amb(Ljava/lang/Iterable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 246
    .local p0, "sources":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Observable<+TT;>;>;"
    invoke-static {p0}, Lrx/internal/operators/OnSubscribeAmb;->amb(Ljava/lang/Iterable;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final amb(Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 268
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1}, Lrx/internal/operators/OnSubscribeAmb;->amb(Lrx/Observable;Lrx/Observable;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final amb(Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 292
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1, p2}, Lrx/internal/operators/OnSubscribeAmb;->amb(Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final amb(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 318
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1, p2, p3}, Lrx/internal/operators/OnSubscribeAmb;->amb(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final amb(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 346
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "o5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lrx/internal/operators/OnSubscribeAmb;->amb(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final amb(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 376
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "o5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p5, "o6":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static/range {p0 .. p5}, Lrx/internal/operators/OnSubscribeAmb;->amb(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final amb(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 408
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "o5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p5, "o6":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p6, "o7":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static/range {p0 .. p6}, Lrx/internal/operators/OnSubscribeAmb;->amb(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final amb(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 442
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "o5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p5, "o6":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p6, "o7":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p7, "o8":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static/range {p0 .. p7}, Lrx/internal/operators/OnSubscribeAmb;->amb(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final amb(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 478
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "o5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p5, "o6":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p6, "o7":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p7, "o8":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p8, "o9":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static/range {p0 .. p8}, Lrx/internal/operators/OnSubscribeAmb;->amb(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final combineLatest(Ljava/util/List;Lrx/functions/FuncN;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;",
            "Lrx/functions/FuncN",
            "<+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 773
    .local p0, "sources":Ljava/util/List;, "Ljava/util/List<+Lrx/Observable<+TT;>;>;"
    .local p1, "combineFunction":Lrx/functions/FuncN;, "Lrx/functions/FuncN<+TR;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeCombineLatest;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OnSubscribeCombineLatest;-><init>(Ljava/util/List;Lrx/functions/FuncN;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final combineLatest(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/functions/Func9;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT1;>;",
            "Lrx/Observable",
            "<+TT2;>;",
            "Lrx/Observable",
            "<+TT3;>;",
            "Lrx/Observable",
            "<+TT4;>;",
            "Lrx/Observable",
            "<+TT5;>;",
            "Lrx/Observable",
            "<+TT6;>;",
            "Lrx/Observable",
            "<+TT7;>;",
            "Lrx/Observable",
            "<+TT8;>;",
            "Lrx/Observable",
            "<+TT9;>;",
            "Lrx/functions/Func9",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 749
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT2;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT3;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT4;>;"
    .local p4, "o5":Lrx/Observable;, "Lrx/Observable<+TT5;>;"
    .local p5, "o6":Lrx/Observable;, "Lrx/Observable<+TT6;>;"
    .local p6, "o7":Lrx/Observable;, "Lrx/Observable<+TT7;>;"
    .local p7, "o8":Lrx/Observable;, "Lrx/Observable<+TT8;>;"
    .local p8, "o9":Lrx/Observable;, "Lrx/Observable<+TT9;>;"
    .local p9, "combineFunction":Lrx/functions/Func9;, "Lrx/functions/Func9<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;"
    const/16 v0, 0x9

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    const/16 v1, 0x8

    aput-object p8, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p9}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func9;)Lrx/functions/FuncN;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/Observable;->combineLatest(Ljava/util/List;Lrx/functions/FuncN;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final combineLatest(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/functions/Func8;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT1;>;",
            "Lrx/Observable",
            "<+TT2;>;",
            "Lrx/Observable",
            "<+TT3;>;",
            "Lrx/Observable",
            "<+TT4;>;",
            "Lrx/Observable",
            "<+TT5;>;",
            "Lrx/Observable",
            "<+TT6;>;",
            "Lrx/Observable",
            "<+TT7;>;",
            "Lrx/Observable",
            "<+TT8;>;",
            "Lrx/functions/Func8",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 707
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT2;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT3;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT4;>;"
    .local p4, "o5":Lrx/Observable;, "Lrx/Observable<+TT5;>;"
    .local p5, "o6":Lrx/Observable;, "Lrx/Observable<+TT6;>;"
    .local p6, "o7":Lrx/Observable;, "Lrx/Observable<+TT7;>;"
    .local p7, "o8":Lrx/Observable;, "Lrx/Observable<+TT8;>;"
    .local p8, "combineFunction":Lrx/functions/Func8;, "Lrx/functions/Func8<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;"
    const/16 v0, 0x8

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p8}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func8;)Lrx/functions/FuncN;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/Observable;->combineLatest(Ljava/util/List;Lrx/functions/FuncN;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final combineLatest(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/functions/Func7;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT1;>;",
            "Lrx/Observable",
            "<+TT2;>;",
            "Lrx/Observable",
            "<+TT3;>;",
            "Lrx/Observable",
            "<+TT4;>;",
            "Lrx/Observable",
            "<+TT5;>;",
            "Lrx/Observable",
            "<+TT6;>;",
            "Lrx/Observable",
            "<+TT7;>;",
            "Lrx/functions/Func7",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 668
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT2;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT3;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT4;>;"
    .local p4, "o5":Lrx/Observable;, "Lrx/Observable<+TT5;>;"
    .local p5, "o6":Lrx/Observable;, "Lrx/Observable<+TT6;>;"
    .local p6, "o7":Lrx/Observable;, "Lrx/Observable<+TT7;>;"
    .local p7, "combineFunction":Lrx/functions/Func7;, "Lrx/functions/Func7<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;"
    const/4 v0, 0x7

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p7}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func7;)Lrx/functions/FuncN;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/Observable;->combineLatest(Ljava/util/List;Lrx/functions/FuncN;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final combineLatest(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/functions/Func6;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT1;>;",
            "Lrx/Observable",
            "<+TT2;>;",
            "Lrx/Observable",
            "<+TT3;>;",
            "Lrx/Observable",
            "<+TT4;>;",
            "Lrx/Observable",
            "<+TT5;>;",
            "Lrx/Observable",
            "<+TT6;>;",
            "Lrx/functions/Func6",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 631
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT2;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT3;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT4;>;"
    .local p4, "o5":Lrx/Observable;, "Lrx/Observable<+TT5;>;"
    .local p5, "o6":Lrx/Observable;, "Lrx/Observable<+TT6;>;"
    .local p6, "combineFunction":Lrx/functions/Func6;, "Lrx/functions/Func6<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;"
    const/4 v0, 0x6

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p6}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func6;)Lrx/functions/FuncN;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/Observable;->combineLatest(Ljava/util/List;Lrx/functions/FuncN;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final combineLatest(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/functions/Func5;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT1;>;",
            "Lrx/Observable",
            "<+TT2;>;",
            "Lrx/Observable",
            "<+TT3;>;",
            "Lrx/Observable",
            "<+TT4;>;",
            "Lrx/Observable",
            "<+TT5;>;",
            "Lrx/functions/Func5",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 596
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT2;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT3;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT4;>;"
    .local p4, "o5":Lrx/Observable;, "Lrx/Observable<+TT5;>;"
    .local p5, "combineFunction":Lrx/functions/Func5;, "Lrx/functions/Func5<-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;"
    const/4 v0, 0x5

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p5}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func5;)Lrx/functions/FuncN;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/Observable;->combineLatest(Ljava/util/List;Lrx/functions/FuncN;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final combineLatest(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/functions/Func4;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT1;>;",
            "Lrx/Observable",
            "<+TT2;>;",
            "Lrx/Observable",
            "<+TT3;>;",
            "Lrx/Observable",
            "<+TT4;>;",
            "Lrx/functions/Func4",
            "<-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 563
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT2;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT3;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT4;>;"
    .local p4, "combineFunction":Lrx/functions/Func4;, "Lrx/functions/Func4<-TT1;-TT2;-TT3;-TT4;+TR;>;"
    const/4 v0, 0x4

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p4}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func4;)Lrx/functions/FuncN;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/Observable;->combineLatest(Ljava/util/List;Lrx/functions/FuncN;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final combineLatest(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/functions/Func3;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT1;>;",
            "Lrx/Observable",
            "<+TT2;>;",
            "Lrx/Observable",
            "<+TT3;>;",
            "Lrx/functions/Func3",
            "<-TT1;-TT2;-TT3;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 532
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT2;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT3;>;"
    .local p3, "combineFunction":Lrx/functions/Func3;, "Lrx/functions/Func3<-TT1;-TT2;-TT3;+TR;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p3}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func3;)Lrx/functions/FuncN;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/Observable;->combineLatest(Ljava/util/List;Lrx/functions/FuncN;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final combineLatest(Lrx/Observable;Lrx/Observable;Lrx/functions/Func2;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT1;>;",
            "Lrx/Observable",
            "<+TT2;>;",
            "Lrx/functions/Func2",
            "<-TT1;-TT2;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 504
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT2;>;"
    .local p2, "combineFunction":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT1;-TT2;+TR;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p2}, Lrx/functions/Functions;->fromFunc(Lrx/functions/Func2;)Lrx/functions/FuncN;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/Observable;->combineLatest(Ljava/util/List;Lrx/functions/FuncN;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final concat(Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 793
    .local p0, "observables":Lrx/Observable;, "Lrx/Observable<+Lrx/Observable<+TT;>;>;"
    invoke-static {}, Lrx/internal/operators/OperatorConcat;->instance()Lrx/internal/operators/OperatorConcat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final concat(Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 815
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->concat(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final concat(Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 839
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1, p2}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->concat(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final concat(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 865
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1, p2, p3}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->concat(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final concat(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 893
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->concat(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final concat(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 923
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p5, "t6":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static/range {p0 .. p5}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->concat(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final concat(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 955
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p5, "t6":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p6, "t7":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static/range {p0 .. p6}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->concat(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final concat(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 989
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p5, "t6":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p6, "t7":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p7, "t8":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static/range {p0 .. p7}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->concat(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final concat(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1025
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p5, "t6":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p6, "t7":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p7, "t8":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p8, "t9":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static/range {p0 .. p8}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->concat(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final create(Lrx/Observable$OnSubscribe;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable$OnSubscribe",
            "<TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "f":Lrx/Observable$OnSubscribe;, "Lrx/Observable$OnSubscribe<TT;>;"
    new-instance v0, Lrx/Observable;

    sget-object v1, Lrx/Observable;->hook:Lrx/plugins/RxJavaObservableExecutionHook;

    invoke-virtual {v1, p0}, Lrx/plugins/RxJavaObservableExecutionHook;->onCreate(Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/Observable;-><init>(Lrx/Observable$OnSubscribe;)V

    return-object v0
.end method

.method public static final defer(Lrx/functions/Func0;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<",
            "Lrx/Observable",
            "<TT;>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1053
    .local p0, "observableFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<Lrx/Observable<TT;>;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeDefer;

    invoke-direct {v0, p0}, Lrx/internal/operators/OnSubscribeDefer;-><init>(Lrx/functions/Func0;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final empty()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1084
    sget-object v0, Lrx/Observable$EmptyHolder;->INSTANCE:Lrx/Observable;

    return-object v0
.end method

.method public static final error(Ljava/lang/Throwable;)Lrx/Observable;
    .locals 1
    .param p0, "exception"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1106
    new-instance v0, Lrx/Observable$ThrowObservable;

    invoke-direct {v0, p0}, Lrx/Observable$ThrowObservable;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static final from(Ljava/lang/Iterable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1214
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeFromIterable;

    invoke-direct {v0, p0}, Lrx/internal/operators/OnSubscribeFromIterable;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final from(Ljava/util/concurrent/Future;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1133
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TT;>;"
    invoke-static {p0}, Lrx/internal/operators/OnSubscribeToObservableFuture;->toObservableFuture(Ljava/util/concurrent/Future;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final from(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1164
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TT;>;"
    invoke-static {p0, p1, p2, p3}, Lrx/internal/operators/OnSubscribeToObservableFuture;->toObservableFuture(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final from(Ljava/util/concurrent/Future;Lrx/Scheduler;)Lrx/Observable;
    .locals 1
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future",
            "<+TT;>;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1193
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<+TT;>;"
    invoke-static {p0}, Lrx/internal/operators/OnSubscribeToObservableFuture;->toObservableFuture(Ljava/util/concurrent/Future;)Lrx/Observable$OnSubscribe;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final from([Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1234
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final interval(JJLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .locals 6
    .param p0, "initialDelay"    # J
    .param p2, "period"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1305
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v5

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lrx/Observable;->interval(JJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final interval(JJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .locals 8
    .param p0, "initialDelay"    # J
    .param p2, "period"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1335
    new-instance v1, Lrx/internal/operators/OnSubscribeTimerPeriodically;

    move-wide v2, p0

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lrx/internal/operators/OnSubscribeTimerPeriodically;-><init>(JJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V

    invoke-static {v1}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final interval(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .locals 6
    .param p0, "interval"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1254
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v5

    move-wide v0, p0

    move-wide v2, p0

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lrx/Observable;->interval(JJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final interval(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .locals 6
    .param p0, "interval"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p3, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1277
    move-wide v0, p0

    move-wide v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lrx/Observable;->interval(JJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final just(Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1363
    .local p0, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p0}, Lrx/internal/util/ScalarSynchronousObservable;->create(Ljava/lang/Object;)Lrx/internal/util/ScalarSynchronousObservable;

    move-result-object v0

    return-object v0
.end method

.method public static final just(Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1387
    .local p0, "t1":Ljava/lang/Object;, "TT;"
    .local p1, "t2":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1413
    .local p0, "t1":Ljava/lang/Object;, "TT;"
    .local p1, "t2":Ljava/lang/Object;, "TT;"
    .local p2, "t3":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1441
    .local p0, "t1":Ljava/lang/Object;, "TT;"
    .local p1, "t2":Ljava/lang/Object;, "TT;"
    .local p2, "t3":Ljava/lang/Object;, "TT;"
    .local p3, "t4":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1471
    .local p0, "t1":Ljava/lang/Object;, "TT;"
    .local p1, "t2":Ljava/lang/Object;, "TT;"
    .local p2, "t3":Ljava/lang/Object;, "TT;"
    .local p3, "t4":Ljava/lang/Object;, "TT;"
    .local p4, "t5":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1503
    .local p0, "t1":Ljava/lang/Object;, "TT;"
    .local p1, "t2":Ljava/lang/Object;, "TT;"
    .local p2, "t3":Ljava/lang/Object;, "TT;"
    .local p3, "t4":Ljava/lang/Object;, "TT;"
    .local p4, "t5":Ljava/lang/Object;, "TT;"
    .local p5, "t6":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1537
    .local p0, "t1":Ljava/lang/Object;, "TT;"
    .local p1, "t2":Ljava/lang/Object;, "TT;"
    .local p2, "t3":Ljava/lang/Object;, "TT;"
    .local p3, "t4":Ljava/lang/Object;, "TT;"
    .local p4, "t5":Ljava/lang/Object;, "TT;"
    .local p5, "t6":Ljava/lang/Object;, "TT;"
    .local p6, "t7":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1573
    .local p0, "t1":Ljava/lang/Object;, "TT;"
    .local p1, "t2":Ljava/lang/Object;, "TT;"
    .local p2, "t3":Ljava/lang/Object;, "TT;"
    .local p3, "t4":Ljava/lang/Object;, "TT;"
    .local p4, "t5":Ljava/lang/Object;, "TT;"
    .local p5, "t6":Ljava/lang/Object;, "TT;"
    .local p6, "t7":Ljava/lang/Object;, "TT;"
    .local p7, "t8":Ljava/lang/Object;, "TT;"
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;TT;TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1611
    .local p0, "t1":Ljava/lang/Object;, "TT;"
    .local p1, "t2":Ljava/lang/Object;, "TT;"
    .local p2, "t3":Ljava/lang/Object;, "TT;"
    .local p3, "t4":Ljava/lang/Object;, "TT;"
    .local p4, "t5":Ljava/lang/Object;, "TT;"
    .local p5, "t6":Ljava/lang/Object;, "TT;"
    .local p6, "t7":Ljava/lang/Object;, "TT;"
    .local p7, "t8":Ljava/lang/Object;, "TT;"
    .local p8, "t9":Ljava/lang/Object;, "TT;"
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    const/16 v1, 0x8

    aput-object p8, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;TT;TT;TT;TT;TT;TT;TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1651
    .local p0, "t1":Ljava/lang/Object;, "TT;"
    .local p1, "t2":Ljava/lang/Object;, "TT;"
    .local p2, "t3":Ljava/lang/Object;, "TT;"
    .local p3, "t4":Ljava/lang/Object;, "TT;"
    .local p4, "t5":Ljava/lang/Object;, "TT;"
    .local p5, "t6":Ljava/lang/Object;, "TT;"
    .local p6, "t7":Ljava/lang/Object;, "TT;"
    .local p7, "t8":Ljava/lang/Object;, "TT;"
    .local p8, "t9":Ljava/lang/Object;, "TT;"
    .local p9, "t10":Ljava/lang/Object;, "TT;"
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    const/16 v1, 0x8

    aput-object p8, v0, v1

    const/16 v1, 0x9

    aput-object p9, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method private final mapNotification(Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func0;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+TR;>;",
            "Lrx/functions/Func1",
            "<-",
            "Ljava/lang/Throwable;",
            "+TR;>;",
            "Lrx/functions/Func0",
            "<+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 5293
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "onNext":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TR;>;"
    .local p2, "onError":Lrx/functions/Func1;, "Lrx/functions/Func1<-Ljava/lang/Throwable;+TR;>;"
    .local p3, "onCompleted":Lrx/functions/Func0;, "Lrx/functions/Func0<+TR;>;"
    new-instance v0, Lrx/internal/operators/OperatorMapNotification;

    invoke-direct {v0, p1, p2, p3}, Lrx/internal/operators/OperatorMapNotification;-><init>(Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func0;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final merge(Ljava/lang/Iterable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1673
    .local p0, "sequences":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Observable<+TT;>;>;"
    invoke-static {p0}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->merge(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final merge(Ljava/lang/Iterable;I)Lrx/Observable;
    .locals 1
    .param p1, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;I)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1700
    .local p0, "sequences":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Observable<+TT;>;>;"
    invoke-static {p0}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0, p1}, Lrx/Observable;->merge(Lrx/Observable;I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final merge(Lrx/Observable;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1724
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<+Lrx/Observable<+TT;>;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lrx/internal/util/ScalarSynchronousObservable;

    if-ne v0, v1, :cond_0

    .line 1725
    check-cast p0, Lrx/internal/util/ScalarSynchronousObservable;

    .end local p0    # "source":Lrx/Observable;, "Lrx/Observable<+Lrx/Observable<+TT;>;>;"
    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/util/ScalarSynchronousObservable;->scalarFlatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 1727
    .restart local p0    # "source":Lrx/Observable;, "Lrx/Observable<+Lrx/Observable<+TT;>;>;"
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lrx/internal/operators/OperatorMerge;->instance(Z)Lrx/internal/operators/OperatorMerge;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    goto :goto_0
.end method

.method public static final merge(Lrx/Observable;I)Lrx/Observable;
    .locals 2
    .param p1, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;I)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 1757
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<+Lrx/Observable<+TT;>;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lrx/internal/util/ScalarSynchronousObservable;

    if-ne v0, v1, :cond_0

    .line 1758
    check-cast p0, Lrx/internal/util/ScalarSynchronousObservable;

    .end local p0    # "source":Lrx/Observable;, "Lrx/Observable<+Lrx/Observable<+TT;>;>;"
    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/internal/util/ScalarSynchronousObservable;->scalarFlatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 1760
    :goto_0
    return-object v0

    .restart local p0    # "source":Lrx/Observable;, "Lrx/Observable<+Lrx/Observable<+TT;>;>;"
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lrx/internal/operators/OperatorMerge;->instance(ZI)Lrx/internal/operators/OperatorMerge;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    goto :goto_0
.end method

.method public static final merge(Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1784
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->merge(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final merge(Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1810
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->merge(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final merge(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1838
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    const/4 v0, 0x4

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->merge(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final merge(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1868
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    const/4 v0, 0x5

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->merge(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final merge(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1900
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p5, "t6":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    const/4 v0, 0x6

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->merge(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final merge(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1934
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p5, "t6":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p6, "t7":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    const/4 v0, 0x7

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->merge(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final merge(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1970
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p5, "t6":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p6, "t7":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p7, "t8":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    const/16 v0, 0x8

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->merge(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final merge(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2008
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p5, "t6":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p6, "t7":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p7, "t8":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p8, "t9":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    const/16 v0, 0x9

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    const/16 v1, 0x8

    aput-object p8, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->merge(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final merge([Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2029
    .local p0, "sequences":[Lrx/Observable;, "[Lrx/Observable<+TT;>;"
    invoke-static {p0}, Lrx/Observable;->from([Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->merge(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final merge([Lrx/Observable;I)Lrx/Observable;
    .locals 1
    .param p1, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lrx/Observable",
            "<+TT;>;I)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 2054
    .local p0, "sequences":[Lrx/Observable;, "[Lrx/Observable<+TT;>;"
    invoke-static {p0}, Lrx/Observable;->from([Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0, p1}, Lrx/Observable;->merge(Lrx/Observable;I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final mergeDelayError(Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2081
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<+Lrx/Observable<+TT;>;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Lrx/internal/operators/OperatorMerge;->instance(Z)Lrx/internal/operators/OperatorMerge;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final mergeDelayError(Lrx/Observable;I)Lrx/Observable;
    .locals 1
    .param p1, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;I)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 2112
    .local p0, "source":Lrx/Observable;, "Lrx/Observable<+Lrx/Observable<+TT;>;>;"
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lrx/internal/operators/OperatorMerge;->instance(ZI)Lrx/internal/operators/OperatorMerge;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final mergeDelayError(Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2141
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->mergeDelayError(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final mergeDelayError(Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2173
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1, p2}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->mergeDelayError(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final mergeDelayError(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2207
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1, p2, p3}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->mergeDelayError(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final mergeDelayError(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2243
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->mergeDelayError(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final mergeDelayError(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2281
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p5, "t6":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static/range {p0 .. p5}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->mergeDelayError(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final mergeDelayError(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2322
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p5, "t6":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p6, "t7":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static/range {p0 .. p6}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->mergeDelayError(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final mergeDelayError(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2365
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p5, "t6":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p6, "t7":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p7, "t8":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static/range {p0 .. p7}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->mergeDelayError(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final mergeDelayError(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2409
    .local p0, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "t2":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "t3":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p3, "t4":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p4, "t5":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p5, "t6":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p6, "t7":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p7, "t8":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p8, "t9":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static/range {p0 .. p8}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->mergeDelayError(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final never()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2446
    invoke-static {}, Lrx/Observable$NeverObservable;->instance()Lrx/Observable$NeverObservable;

    move-result-object v0

    return-object v0
.end method

.method public static final range(II)Lrx/Observable;
    .locals 2
    .param p0, "start"    # I
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2469
    if-gez p1, :cond_0

    .line 2470
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Count can not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2472
    :cond_0
    if-nez p1, :cond_1

    .line 2473
    invoke-static {}, Lrx/Observable;->empty()Lrx/Observable;

    move-result-object v0

    .line 2481
    :goto_0
    return-object v0

    .line 2475
    :cond_1
    const v0, 0x7fffffff

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    if-le p0, v0, :cond_2

    .line 2476
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start + count can not exceed Integer.MAX_VALUE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2478
    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 2479
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    goto :goto_0

    .line 2481
    :cond_3
    new-instance v0, Lrx/internal/operators/OnSubscribeRange;

    add-int/lit8 v1, p1, -0x1

    add-int/2addr v1, p0

    invoke-direct {v0, p0, v1}, Lrx/internal/operators/OnSubscribeRange;-><init>(II)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    goto :goto_0
.end method

.method public static final range(IILrx/Scheduler;)Lrx/Observable;
    .locals 1
    .param p0, "start"    # I
    .param p1, "count"    # I
    .param p2, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2504
    invoke-static {p0, p1}, Lrx/Observable;->range(II)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final sequenceEqual(Lrx/Observable;Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2527
    .local p0, "first":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "second":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    new-instance v0, Lrx/Observable$2;

    invoke-direct {v0}, Lrx/Observable$2;-><init>()V

    invoke-static {p0, p1, v0}, Lrx/Observable;->sequenceEqual(Lrx/Observable;Lrx/Observable;Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final sequenceEqual(Lrx/Observable;Lrx/Observable;Lrx/functions/Func2;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/functions/Func2",
            "<-TT;-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2562
    .local p0, "first":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p1, "second":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    .local p2, "equality":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT;-TT;Ljava/lang/Boolean;>;"
    invoke-static {p0, p1, p2}, Lrx/internal/operators/OperatorSequenceEqual;->sequenceEqual(Lrx/Observable;Lrx/Observable;Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final switchOnNext(Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+",
            "Lrx/Observable",
            "<+TT;>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2588
    .local p0, "sequenceOfSequences":Lrx/Observable;, "Lrx/Observable<+Lrx/Observable<+TT;>;>;"
    invoke-static {}, Lrx/internal/operators/OperatorSwitch;->instance()Lrx/internal/operators/OperatorSwitch;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final timer(JJLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .locals 6
    .param p0, "initialDelay"    # J
    .param p2, "period"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2617
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v5

    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lrx/Observable;->interval(JJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final timer(JJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .locals 2
    .param p0, "initialDelay"    # J
    .param p2, "period"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2648
    invoke-static/range {p0 .. p5}, Lrx/Observable;->interval(JJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final timer(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .locals 2
    .param p0, "delay"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2671
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lrx/Observable;->timer(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final timer(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .locals 2
    .param p0, "delay"    # J
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p3, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2698
    new-instance v0, Lrx/internal/operators/OnSubscribeTimerOnce;

    invoke-direct {v0, p0, p1, p2, p3}, Lrx/internal/operators/OnSubscribeTimerOnce;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final using(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Resource:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<TResource;>;",
            "Lrx/functions/Func1",
            "<-TResource;+",
            "Lrx/Observable",
            "<+TT;>;>;",
            "Lrx/functions/Action1",
            "<-TResource;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2723
    .local p0, "resourceFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<TResource;>;"
    .local p1, "observableFactory":Lrx/functions/Func1;, "Lrx/functions/Func1<-TResource;+Lrx/Observable<+TT;>;>;"
    .local p2, "disposeAction":Lrx/functions/Action1;, "Lrx/functions/Action1<-TResource;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lrx/Observable;->using(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;Z)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final using(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;Z)Lrx/Observable;
    .locals 1
    .param p3, "disposeEagerly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Resource:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<TResource;>;",
            "Lrx/functions/Func1",
            "<-TResource;+",
            "Lrx/Observable",
            "<+TT;>;>;",
            "Lrx/functions/Action1",
            "<-TResource;>;Z)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 2759
    .local p0, "resourceFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<TResource;>;"
    .local p1, "observableFactory":Lrx/functions/Func1;, "Lrx/functions/Func1<-TResource;+Lrx/Observable<+TT;>;>;"
    .local p2, "disposeAction":Lrx/functions/Action1;, "Lrx/functions/Action1<-TResource;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeUsing;

    invoke-direct {v0, p0, p1, p2, p3}, Lrx/internal/operators/OnSubscribeUsing;-><init>(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/functions/Action1;Z)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final zip(Ljava/lang/Iterable;Lrx/functions/FuncN;)Lrx/Observable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+",
            "Lrx/Observable",
            "<*>;>;",
            "Lrx/functions/FuncN",
            "<+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 2789
    .local p0, "ws":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lrx/Observable<*>;>;"
    .local p1, "zipFunction":Lrx/functions/FuncN;, "Lrx/functions/FuncN<+TR;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2790
    .local v2, "os":Ljava/util/List;, "Ljava/util/List<Lrx/Observable<*>;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Observable;

    .line 2791
    .local v1, "o":Lrx/Observable;, "Lrx/Observable<*>;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2793
    .end local v1    # "o":Lrx/Observable;, "Lrx/Observable<*>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lrx/Observable;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v3

    new-instance v4, Lrx/internal/operators/OperatorZip;

    invoke-direct {v4, p1}, Lrx/internal/operators/OperatorZip;-><init>(Lrx/functions/FuncN;)V

    invoke-virtual {v3, v4}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v3

    return-object v3
.end method

.method public static final zip(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/functions/Func9;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "T9:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT1;>;",
            "Lrx/Observable",
            "<+TT2;>;",
            "Lrx/Observable",
            "<+TT3;>;",
            "Lrx/Observable",
            "<+TT4;>;",
            "Lrx/Observable",
            "<+TT5;>;",
            "Lrx/Observable",
            "<+TT6;>;",
            "Lrx/Observable",
            "<+TT7;>;",
            "Lrx/Observable",
            "<+TT8;>;",
            "Lrx/Observable",
            "<+TT9;>;",
            "Lrx/functions/Func9",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 3157
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT2;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT3;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT4;>;"
    .local p4, "o5":Lrx/Observable;, "Lrx/Observable<+TT5;>;"
    .local p5, "o6":Lrx/Observable;, "Lrx/Observable<+TT6;>;"
    .local p6, "o7":Lrx/Observable;, "Lrx/Observable<+TT7;>;"
    .local p7, "o8":Lrx/Observable;, "Lrx/Observable<+TT8;>;"
    .local p8, "o9":Lrx/Observable;, "Lrx/Observable<+TT9;>;"
    .local p9, "zipFunction":Lrx/functions/Func9;, "Lrx/functions/Func9<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;-TT9;+TR;>;"
    const/16 v0, 0x9

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    const/16 v1, 0x8

    aput-object p8, v0, v1

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OperatorZip;

    invoke-direct {v1, p9}, Lrx/internal/operators/OperatorZip;-><init>(Lrx/functions/Func9;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final zip(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/functions/Func8;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "T8:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT1;>;",
            "Lrx/Observable",
            "<+TT2;>;",
            "Lrx/Observable",
            "<+TT3;>;",
            "Lrx/Observable",
            "<+TT4;>;",
            "Lrx/Observable",
            "<+TT5;>;",
            "Lrx/Observable",
            "<+TT6;>;",
            "Lrx/Observable",
            "<+TT7;>;",
            "Lrx/Observable",
            "<+TT8;>;",
            "Lrx/functions/Func8",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 3109
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT2;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT3;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT4;>;"
    .local p4, "o5":Lrx/Observable;, "Lrx/Observable<+TT5;>;"
    .local p5, "o6":Lrx/Observable;, "Lrx/Observable<+TT6;>;"
    .local p6, "o7":Lrx/Observable;, "Lrx/Observable<+TT7;>;"
    .local p7, "o8":Lrx/Observable;, "Lrx/Observable<+TT8;>;"
    .local p8, "zipFunction":Lrx/functions/Func8;, "Lrx/functions/Func8<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;-TT8;+TR;>;"
    const/16 v0, 0x8

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OperatorZip;

    invoke-direct {v1, p8}, Lrx/internal/operators/OperatorZip;-><init>(Lrx/functions/Func8;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final zip(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/functions/Func7;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "T7:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT1;>;",
            "Lrx/Observable",
            "<+TT2;>;",
            "Lrx/Observable",
            "<+TT3;>;",
            "Lrx/Observable",
            "<+TT4;>;",
            "Lrx/Observable",
            "<+TT5;>;",
            "Lrx/Observable",
            "<+TT6;>;",
            "Lrx/Observable",
            "<+TT7;>;",
            "Lrx/functions/Func7",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 3063
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT2;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT3;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT4;>;"
    .local p4, "o5":Lrx/Observable;, "Lrx/Observable<+TT5;>;"
    .local p5, "o6":Lrx/Observable;, "Lrx/Observable<+TT6;>;"
    .local p6, "o7":Lrx/Observable;, "Lrx/Observable<+TT7;>;"
    .local p7, "zipFunction":Lrx/functions/Func7;, "Lrx/functions/Func7<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;-TT7;+TR;>;"
    const/4 v0, 0x7

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OperatorZip;

    invoke-direct {v1, p7}, Lrx/internal/operators/OperatorZip;-><init>(Lrx/functions/Func7;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final zip(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/functions/Func6;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "T6:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT1;>;",
            "Lrx/Observable",
            "<+TT2;>;",
            "Lrx/Observable",
            "<+TT3;>;",
            "Lrx/Observable",
            "<+TT4;>;",
            "Lrx/Observable",
            "<+TT5;>;",
            "Lrx/Observable",
            "<+TT6;>;",
            "Lrx/functions/Func6",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 3019
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT2;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT3;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT4;>;"
    .local p4, "o5":Lrx/Observable;, "Lrx/Observable<+TT5;>;"
    .local p5, "o6":Lrx/Observable;, "Lrx/Observable<+TT6;>;"
    .local p6, "zipFunction":Lrx/functions/Func6;, "Lrx/functions/Func6<-TT1;-TT2;-TT3;-TT4;-TT5;-TT6;+TR;>;"
    const/4 v0, 0x6

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OperatorZip;

    invoke-direct {v1, p6}, Lrx/internal/operators/OperatorZip;-><init>(Lrx/functions/Func6;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final zip(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/functions/Func5;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "T5:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT1;>;",
            "Lrx/Observable",
            "<+TT2;>;",
            "Lrx/Observable",
            "<+TT3;>;",
            "Lrx/Observable",
            "<+TT4;>;",
            "Lrx/Observable",
            "<+TT5;>;",
            "Lrx/functions/Func5",
            "<-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 2977
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT2;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT3;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT4;>;"
    .local p4, "o5":Lrx/Observable;, "Lrx/Observable<+TT5;>;"
    .local p5, "zipFunction":Lrx/functions/Func5;, "Lrx/functions/Func5<-TT1;-TT2;-TT3;-TT4;-TT5;+TR;>;"
    const/4 v0, 0x5

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const/4 v1, 0x4

    aput-object p4, v0, v1

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OperatorZip;

    invoke-direct {v1, p5}, Lrx/internal/operators/OperatorZip;-><init>(Lrx/functions/Func5;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final zip(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/functions/Func4;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "T4:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT1;>;",
            "Lrx/Observable",
            "<+TT2;>;",
            "Lrx/Observable",
            "<+TT3;>;",
            "Lrx/Observable",
            "<+TT4;>;",
            "Lrx/functions/Func4",
            "<-TT1;-TT2;-TT3;-TT4;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 2937
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT2;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT3;>;"
    .local p3, "o4":Lrx/Observable;, "Lrx/Observable<+TT4;>;"
    .local p4, "zipFunction":Lrx/functions/Func4;, "Lrx/functions/Func4<-TT1;-TT2;-TT3;-TT4;+TR;>;"
    const/4 v0, 0x4

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OperatorZip;

    invoke-direct {v1, p4}, Lrx/internal/operators/OperatorZip;-><init>(Lrx/functions/Func4;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final zip(Lrx/Observable;Lrx/Observable;Lrx/Observable;Lrx/functions/Func3;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT1;>;",
            "Lrx/Observable",
            "<+TT2;>;",
            "Lrx/Observable",
            "<+TT3;>;",
            "Lrx/functions/Func3",
            "<-TT1;-TT2;-TT3;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 2899
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT2;>;"
    .local p2, "o3":Lrx/Observable;, "Lrx/Observable<+TT3;>;"
    .local p3, "zipFunction":Lrx/functions/Func3;, "Lrx/functions/Func3<-TT1;-TT2;-TT3;+TR;>;"
    const/4 v0, 0x3

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OperatorZip;

    invoke-direct {v1, p3}, Lrx/internal/operators/OperatorZip;-><init>(Lrx/functions/Func3;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final zip(Lrx/Observable;Lrx/Observable;Lrx/functions/Func2;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT1;>;",
            "Lrx/Observable",
            "<+TT2;>;",
            "Lrx/functions/Func2",
            "<-TT1;-TT2;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 2863
    .local p0, "o1":Lrx/Observable;, "Lrx/Observable<+TT1;>;"
    .local p1, "o2":Lrx/Observable;, "Lrx/Observable<+TT2;>;"
    .local p2, "zipFunction":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT1;-TT2;+TR;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Lrx/Observable;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OperatorZip;

    invoke-direct {v1, p2}, Lrx/internal/operators/OperatorZip;-><init>(Lrx/functions/Func2;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public static final zip(Lrx/Observable;Lrx/functions/FuncN;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+",
            "Lrx/Observable",
            "<*>;>;",
            "Lrx/functions/FuncN",
            "<+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 2823
    .local p0, "ws":Lrx/Observable;, "Lrx/Observable<+Lrx/Observable<*>;>;"
    .local p1, "zipFunction":Lrx/functions/FuncN;, "Lrx/functions/FuncN<+TR;>;"
    invoke-virtual {p0}, Lrx/Observable;->toList()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lrx/Observable$3;

    invoke-direct {v1}, Lrx/Observable$3;-><init>()V

    invoke-virtual {v0, v1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OperatorZip;

    invoke-direct {v1, p1}, Lrx/internal/operators/OperatorZip;-><init>(Lrx/functions/FuncN;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final all(Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3177
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    new-instance v0, Lrx/internal/operators/OperatorAll;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorAll;-><init>(Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final ambWith(Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3197
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1}, Lrx/Observable;->amb(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final asObservable()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3212
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/internal/operators/OperatorAsObservable;->instance()Lrx/internal/operators/OperatorAsObservable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(I)Lrx/Observable;
    .locals 1
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3260
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1, p1}, Lrx/Observable;->buffer(II)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(II)Lrx/Observable;
    .locals 1
    .param p1, "count"    # I
    .param p2, "skip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3286
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorBufferWithSize;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/OperatorBufferWithSize;-><init>(II)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(JJLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .locals 9
    .param p1, "timespan"    # J
    .param p3, "timeshift"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3316
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v7

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Lrx/Observable;->buffer(JJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(JJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .locals 9
    .param p1, "timespan"    # J
    .param p3, "timeshift"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3348
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorBufferWithTime;

    const v7, 0x7fffffff

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lrx/internal/operators/OperatorBufferWithTime;-><init>(JJLjava/util/concurrent/TimeUnit;ILrx/Scheduler;)V

    invoke-virtual {p0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .locals 7
    .param p1, "timespan"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3376
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    const v5, 0x7fffffff

    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lrx/Observable;->buffer(JLjava/util/concurrent/TimeUnit;ILrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(JLjava/util/concurrent/TimeUnit;I)Lrx/Observable;
    .locals 9
    .param p1, "timespan"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3408
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorBufferWithTime;

    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v8

    move-wide v2, p1

    move-wide v4, p1

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v8}, Lrx/internal/operators/OperatorBufferWithTime;-><init>(JJLjava/util/concurrent/TimeUnit;ILrx/Scheduler;)V

    invoke-virtual {p0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(JLjava/util/concurrent/TimeUnit;ILrx/Scheduler;)Lrx/Observable;
    .locals 9
    .param p1, "timespan"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "count"    # I
    .param p5, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "I",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3443
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorBufferWithTime;

    move-wide v2, p1

    move-wide v4, p1

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lrx/internal/operators/OperatorBufferWithTime;-><init>(JJLjava/util/concurrent/TimeUnit;ILrx/Scheduler;)V

    invoke-virtual {p0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .locals 9
    .param p1, "timespan"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3474
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p1

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lrx/Observable;->buffer(JJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TB;>;)",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3531
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "boundary":Lrx/Observable;, "Lrx/Observable<TB;>;"
    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0}, Lrx/Observable;->buffer(Lrx/Observable;I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(Lrx/Observable;I)Lrx/Observable;
    .locals 1
    .param p2, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TB;>;I)",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3563
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "boundary":Lrx/Observable;, "Lrx/Observable<TB;>;"
    new-instance v0, Lrx/internal/operators/OperatorBufferWithSingleObservable;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/OperatorBufferWithSingleObservable;-><init>(Lrx/Observable;I)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TOpening:",
            "Ljava/lang/Object;",
            "TClosing:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TTOpening;>;",
            "Lrx/functions/Func1",
            "<-TTOpening;+",
            "Lrx/Observable",
            "<+TTClosing;>;>;)",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3501
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "bufferOpenings":Lrx/Observable;, "Lrx/Observable<+TTOpening;>;"
    .local p2, "bufferClosingSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TTOpening;+Lrx/Observable<+TTClosing;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorBufferWithStartEndObservable;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/OperatorBufferWithStartEndObservable;-><init>(Lrx/Observable;Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final buffer(Lrx/functions/Func0;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TClosing:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<+",
            "Lrx/Observable",
            "<+TTClosing;>;>;)",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 3238
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "bufferClosingSelector":Lrx/functions/Func0;, "Lrx/functions/Func0<+Lrx/Observable<+TTClosing;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorBufferWithSingleObservable;

    const/16 v1, 0x10

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/OperatorBufferWithSingleObservable;-><init>(Lrx/functions/Func0;I)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final cache()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3597
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeCache;

    invoke-direct {v0, p0}, Lrx/internal/operators/OnSubscribeCache;-><init>(Lrx/Observable;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final cache(I)Lrx/Observable;
    .locals 1
    .param p1, "capacityHint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3632
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeCache;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OnSubscribeCache;-><init>(Lrx/Observable;I)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final cast(Ljava/lang/Class;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 3653
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    new-instance v0, Lrx/internal/operators/OperatorCast;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorCast;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final collect(Lrx/functions/Func0;Lrx/functions/Action2;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<TR;>;",
            "Lrx/functions/Action2",
            "<TR;-TT;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 3681
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "stateFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<TR;>;"
    .local p2, "collector":Lrx/functions/Action2;, "Lrx/functions/Action2<TR;-TT;>;"
    new-instance v0, Lrx/Observable$4;

    invoke-direct {v0, p0, p2}, Lrx/Observable$4;-><init>(Lrx/Observable;Lrx/functions/Action2;)V

    .line 3697
    .local v0, "accumulator":Lrx/functions/Func2;, "Lrx/functions/Func2<TR;TT;TR;>;"
    new-instance v1, Lrx/internal/operators/OperatorScan;

    invoke-direct {v1, p1, v0}, Lrx/internal/operators/OperatorScan;-><init>(Lrx/functions/Func0;Lrx/functions/Func2;)V

    invoke-virtual {p0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v1

    invoke-virtual {v1}, Lrx/Observable;->last()Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public compose(Lrx/Observable$Transformer;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable$Transformer",
            "<-TT;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "transformer":Lrx/Observable$Transformer;, "Lrx/Observable$Transformer<-TT;+TR;>;"
    invoke-interface {p1, p0}, Lrx/Observable$Transformer;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Observable;

    return-object v0
.end method

.method public final concatMap(Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<+TR;>;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 3719
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "func":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    invoke-virtual {p0, p1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->concat(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final concatWith(Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3739
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3759
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/Observable$5;

    invoke-direct {v0, p0, p1}, Lrx/Observable$5;-><init>(Lrx/Observable;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->exists(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final count()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3784
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lrx/Observable$CountHolder;->INSTANCE:Lrx/functions/Func2;

    invoke-virtual {p0, v0, v1}, Lrx/Observable;->reduce(Ljava/lang/Object;Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final countLong()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3815
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Lrx/Observable$CountLongHolder;->INSTANCE:Lrx/functions/Func2;

    invoke-virtual {p0, v0, v1}, Lrx/Observable;->reduce(Ljava/lang/Object;Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final debounce(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3889
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/Observable;->debounce(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final debounce(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3931
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorDebounceWithTime;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/operators/OperatorDebounceWithTime;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final debounce(Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<TU;>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3850
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "debounceSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<TU;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorDebounceWithSelector;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorDebounceWithSelector;-><init>(Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final defaultIfEmpty(Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3952
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    new-instance v0, Lrx/Observable$6;

    invoke-direct {v0, p0, p1}, Lrx/Observable$6;-><init>(Lrx/Observable;Ljava/lang/Object;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->switchIfEmpty(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .locals 1
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4059
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/Observable;->delay(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final delay(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .locals 7
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4082
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorDelay;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OperatorDelay;-><init>(Lrx/Observable;JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final delay(Lrx/functions/Func0;Lrx/functions/Func1;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<+",
            "Lrx/Observable",
            "<TU;>;>;",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<TV;>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4011
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "subscriptionDelay":Lrx/functions/Func0;, "Lrx/functions/Func0<+Lrx/Observable<TU;>;>;"
    .local p2, "itemDelay":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<TV;>;>;"
    invoke-virtual {p0, p1}, Lrx/Observable;->delaySubscription(Lrx/functions/Func0;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OperatorDelayWithSelector;

    invoke-direct {v1, p0, p2}, Lrx/internal/operators/OperatorDelayWithSelector;-><init>(Lrx/Observable;Lrx/functions/Func1;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final delay(Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<TU;>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4038
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "itemDelay":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<TU;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorDelayWithSelector;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OperatorDelayWithSelector;-><init>(Lrx/Observable;Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final delaySubscription(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .locals 1
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4102
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/Observable;->delaySubscription(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final delaySubscription(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .locals 7
    .param p1, "delay"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4126
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeDelaySubscription;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OnSubscribeDelaySubscription;-><init>(Lrx/Observable;JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final delaySubscription(Lrx/functions/Func0;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<+",
            "Lrx/Observable",
            "<TU;>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4147
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "subscriptionDelay":Lrx/functions/Func0;, "Lrx/functions/Func0<+Lrx/Observable<TU;>;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector;-><init>(Lrx/Observable;Lrx/functions/Func0;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final dematerialize()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/Observable",
            "<TT2;>;"
        }
    .end annotation

    .prologue
    .line 4169
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/internal/operators/OperatorDematerialize;->instance()Lrx/internal/operators/OperatorDematerialize;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final distinct()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4186
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/internal/operators/OperatorDistinct;->instance()Lrx/internal/operators/OperatorDistinct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final distinct(Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+TU;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4206
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TU;>;"
    new-instance v0, Lrx/internal/operators/OperatorDistinct;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorDistinct;-><init>(Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final distinctUntilChanged()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4224
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/internal/operators/OperatorDistinctUntilChanged;->instance()Lrx/internal/operators/OperatorDistinctUntilChanged;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final distinctUntilChanged(Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+TU;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4245
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TU;>;"
    new-instance v0, Lrx/internal/operators/OperatorDistinctUntilChanged;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorDistinctUntilChanged;-><init>(Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final doOnCompleted(Lrx/functions/Action0;)Lrx/Observable;
    .locals 2
    .param p1, "onCompleted"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4263
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/Observable$7;

    invoke-direct {v0, p0, p1}, Lrx/Observable$7;-><init>(Lrx/Observable;Lrx/functions/Action0;)V

    .line 4279
    .local v0, "observer":Lrx/Observer;, "Lrx/Observer<TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorDoOnEach;

    invoke-direct {v1, v0}, Lrx/internal/operators/OperatorDoOnEach;-><init>(Lrx/Observer;)V

    invoke-virtual {p0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public final doOnEach(Lrx/Observer;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer",
            "<-TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4333
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "observer":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorDoOnEach;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorDoOnEach;-><init>(Lrx/Observer;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final doOnEach(Lrx/functions/Action1;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<",
            "Lrx/Notification",
            "<-TT;>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4297
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "onNotification":Lrx/functions/Action1;, "Lrx/functions/Action1<Lrx/Notification<-TT;>;>;"
    new-instance v0, Lrx/Observable$8;

    invoke-direct {v0, p0, p1}, Lrx/Observable$8;-><init>(Lrx/Observable;Lrx/functions/Action1;)V

    .line 4315
    .local v0, "observer":Lrx/Observer;, "Lrx/Observer<TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorDoOnEach;

    invoke-direct {v1, v0}, Lrx/internal/operators/OperatorDoOnEach;-><init>(Lrx/Observer;)V

    invoke-virtual {p0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public final doOnError(Lrx/functions/Action1;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4351
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    new-instance v0, Lrx/Observable$9;

    invoke-direct {v0, p0, p1}, Lrx/Observable$9;-><init>(Lrx/Observable;Lrx/functions/Action1;)V

    .line 4367
    .local v0, "observer":Lrx/Observer;, "Lrx/Observer<TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorDoOnEach;

    invoke-direct {v1, v0}, Lrx/internal/operators/OperatorDoOnEach;-><init>(Lrx/Observer;)V

    invoke-virtual {p0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public final doOnNext(Lrx/functions/Action1;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4385
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "onNext":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    new-instance v0, Lrx/Observable$10;

    invoke-direct {v0, p0, p1}, Lrx/Observable$10;-><init>(Lrx/Observable;Lrx/functions/Action1;)V

    .line 4401
    .local v0, "observer":Lrx/Observer;, "Lrx/Observer<TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorDoOnEach;

    invoke-direct {v1, v0}, Lrx/internal/operators/OperatorDoOnEach;-><init>(Lrx/Observer;)V

    invoke-virtual {p0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public final doOnRequest(Lrx/functions/Action1;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 4420
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "onRequest":Lrx/functions/Action1;, "Lrx/functions/Action1<Ljava/lang/Long;>;"
    new-instance v0, Lrx/internal/operators/OperatorDoOnRequest;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorDoOnRequest;-><init>(Lrx/functions/Action1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final doOnSubscribe(Lrx/functions/Action0;)Lrx/Observable;
    .locals 1
    .param p1, "subscribe"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4441
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorDoOnSubscribe;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorDoOnSubscribe;-><init>(Lrx/functions/Action0;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final doOnTerminate(Lrx/functions/Action0;)Lrx/Observable;
    .locals 2
    .param p1, "onTerminate"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4464
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/Observable$11;

    invoke-direct {v0, p0, p1}, Lrx/Observable$11;-><init>(Lrx/Observable;Lrx/functions/Action0;)V

    .line 4481
    .local v0, "observer":Lrx/Observer;, "Lrx/Observer<TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorDoOnEach;

    invoke-direct {v1, v0}, Lrx/internal/operators/OperatorDoOnEach;-><init>(Lrx/Observer;)V

    invoke-virtual {p0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public final doOnUnsubscribe(Lrx/functions/Action0;)Lrx/Observable;
    .locals 1
    .param p1, "unsubscribe"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4502
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorDoOnUnsubscribe;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorDoOnUnsubscribe;-><init>(Lrx/functions/Action0;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final elementAt(I)Lrx/Observable;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4526
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorElementAt;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorElementAt;-><init>(I)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final elementAtOrDefault(ILjava/lang/Object;)Lrx/Observable;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4550
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    new-instance v0, Lrx/internal/operators/OperatorElementAt;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/OperatorElementAt;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final exists(Lrx/functions/Func1;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4574
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    new-instance v0, Lrx/internal/operators/OperatorAny;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/OperatorAny;-><init>(Lrx/functions/Func1;Z)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final filter(Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4594
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    new-instance v0, Lrx/internal/operators/OperatorFilter;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorFilter;-><init>(Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final finallyDo(Lrx/functions/Action0;)Lrx/Observable;
    .locals 1
    .param p1, "action"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4615
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorFinally;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorFinally;-><init>(Lrx/functions/Action0;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final first()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4633
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lrx/Observable;->take(I)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->single()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final first(Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4653
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p1}, Lrx/Observable;->takeFirst(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->single()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final firstOrDefault(Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4673
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lrx/Observable;->take(I)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->singleOrDefault(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final firstOrDefault(Ljava/lang/Object;Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 4696
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    .local p2, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p2}, Lrx/Observable;->takeFirst(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->singleOrDefault(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final flatMap(Lrx/functions/Func1;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<+TR;>;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 4719
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "func":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lrx/internal/util/ScalarSynchronousObservable;

    if-ne v0, v1, :cond_0

    .line 4720
    check-cast p0, Lrx/internal/util/ScalarSynchronousObservable;

    .end local p0    # "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousObservable;->scalarFlatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 4722
    :goto_0
    return-object v0

    .restart local p0    # "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    :cond_0
    invoke-virtual {p0, p1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->merge(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    goto :goto_0
.end method

.method public final flatMap(Lrx/functions/Func1;I)Lrx/Observable;
    .locals 2
    .param p2, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<+TR;>;>;I)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 4750
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "func":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lrx/internal/util/ScalarSynchronousObservable;

    if-ne v0, v1, :cond_0

    .line 4751
    check-cast p0, Lrx/internal/util/ScalarSynchronousObservable;

    .end local p0    # "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousObservable;->scalarFlatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 4753
    :goto_0
    return-object v0

    .restart local p0    # "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    :cond_0
    invoke-virtual {p0, p1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0, p2}, Lrx/Observable;->merge(Lrx/Observable;I)Lrx/Observable;

    move-result-object v0

    goto :goto_0
.end method

.method public final flatMap(Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func0;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<+TR;>;>;",
            "Lrx/functions/Func1",
            "<-",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/Observable",
            "<+TR;>;>;",
            "Lrx/functions/Func0",
            "<+",
            "Lrx/Observable",
            "<+TR;>;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 4784
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "onNext":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    .local p2, "onError":Lrx/functions/Func1;, "Lrx/functions/Func1<-Ljava/lang/Throwable;+Lrx/Observable<+TR;>;>;"
    .local p3, "onCompleted":Lrx/functions/Func0;, "Lrx/functions/Func0<+Lrx/Observable<+TR;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lrx/Observable;->mapNotification(Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func0;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->merge(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final flatMap(Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func0;I)Lrx/Observable;
    .locals 1
    .param p4, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<+TR;>;>;",
            "Lrx/functions/Func1",
            "<-",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/Observable",
            "<+TR;>;>;",
            "Lrx/functions/Func0",
            "<+",
            "Lrx/Observable",
            "<+TR;>;>;I)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 4819
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "onNext":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    .local p2, "onError":Lrx/functions/Func1;, "Lrx/functions/Func1<-Ljava/lang/Throwable;+Lrx/Observable<+TR;>;>;"
    .local p3, "onCompleted":Lrx/functions/Func0;, "Lrx/functions/Func0<+Lrx/Observable<+TR;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lrx/Observable;->mapNotification(Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func0;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0, p4}, Lrx/Observable;->merge(Lrx/Observable;I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final flatMap(Lrx/functions/Func1;Lrx/functions/Func2;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<+TU;>;>;",
            "Lrx/functions/Func2",
            "<-TT;-TU;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 4847
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "collectionSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TU;>;>;"
    .local p2, "resultSelector":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT;-TU;+TR;>;"
    new-instance v0, Lrx/internal/operators/OperatorMapPair;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/OperatorMapPair;-><init>(Lrx/functions/Func1;Lrx/functions/Func2;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->merge(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final flatMap(Lrx/functions/Func1;Lrx/functions/Func2;I)Lrx/Observable;
    .locals 1
    .param p3, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<+TU;>;>;",
            "Lrx/functions/Func2",
            "<-TT;-TU;+TR;>;I)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 4879
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "collectionSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TU;>;>;"
    .local p2, "resultSelector":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT;-TU;+TR;>;"
    new-instance v0, Lrx/internal/operators/OperatorMapPair;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/OperatorMapPair;-><init>(Lrx/functions/Func1;Lrx/functions/Func2;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0, p3}, Lrx/Observable;->merge(Lrx/Observable;I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final flatMapIterable(Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TR;>;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 4902
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "collectionSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Ljava/lang/Iterable<+TR;>;>;"
    invoke-static {p1}, Lrx/internal/operators/OperatorMapPair;->convertSelector(Lrx/functions/Func1;)Lrx/functions/Func1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->merge(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final flatMapIterable(Lrx/functions/Func1;Lrx/functions/Func2;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Ljava/lang/Iterable",
            "<+TU;>;>;",
            "Lrx/functions/Func2",
            "<-TT;-TU;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 4931
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "collectionSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Ljava/lang/Iterable<+TU;>;>;"
    .local p2, "resultSelector":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT;-TU;+TR;>;"
    invoke-static {p1}, Lrx/internal/operators/OperatorMapPair;->convertSelector(Lrx/functions/Func1;)Lrx/functions/Func1;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lrx/Observable;->flatMap(Lrx/functions/Func1;Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final forEach(Lrx/functions/Action1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 4952
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "onNext":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    invoke-virtual {p0, p1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 4953
    return-void
.end method

.method public final forEach(Lrx/functions/Action1;Lrx/functions/Action1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-TT;>;",
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4975
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "onNext":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    .local p2, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    invoke-virtual {p0, p1, p2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    .line 4976
    return-void
.end method

.method public final forEach(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)V
    .locals 0
    .param p3, "onComplete"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-TT;>;",
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Throwable;",
            ">;",
            "Lrx/functions/Action0;",
            ")V"
        }
    .end annotation

    .prologue
    .line 5000
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "onNext":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    .local p2, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    invoke-virtual {p0, p1, p2, p3}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)Lrx/Subscription;

    .line 5001
    return-void
.end method

.method public final groupBy(Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+TK;>;)",
            "Lrx/Observable",
            "<",
            "Lrx/observables/GroupedObservable",
            "<TK;TT;>;>;"
        }
    .end annotation

    .prologue
    .line 5060
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    new-instance v0, Lrx/internal/operators/OperatorGroupBy;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorGroupBy;-><init>(Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final groupBy(Lrx/functions/Func1;Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+TK;>;",
            "Lrx/functions/Func1",
            "<-TT;+TR;>;)",
            "Lrx/Observable",
            "<",
            "Lrx/observables/GroupedObservable",
            "<TK;TR;>;>;"
        }
    .end annotation

    .prologue
    .line 5032
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "elementSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TR;>;"
    new-instance v0, Lrx/internal/operators/OperatorGroupBy;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/OperatorGroupBy;-><init>(Lrx/functions/Func1;Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final groupJoin(Lrx/Observable;Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func2;)Lrx/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            "D1:",
            "Ljava/lang/Object;",
            "D2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TT2;>;",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<TD1;>;>;",
            "Lrx/functions/Func1",
            "<-TT2;+",
            "Lrx/Observable",
            "<TD2;>;>;",
            "Lrx/functions/Func2",
            "<-TT;-",
            "Lrx/Observable",
            "<TT2;>;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 5090
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "right":Lrx/Observable;, "Lrx/Observable<TT2;>;"
    .local p2, "leftDuration":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<TD1;>;>;"
    .local p3, "rightDuration":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT2;+Lrx/Observable<TD2;>;>;"
    .local p4, "resultSelector":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT;-Lrx/Observable<TT2;>;+TR;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeGroupJoin;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OnSubscribeGroupJoin;-><init>(Lrx/Observable;Lrx/Observable;Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func2;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final ignoreElements()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5107
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/internal/operators/OperatorIgnoreElements;->instance()Lrx/internal/operators/OperatorIgnoreElements;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final isEmpty()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5127
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    sget-object v0, Lrx/Observable$HolderAnyForEmpty;->INSTANCE:Lrx/internal/operators/OperatorAny;

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final join(Lrx/Observable;Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func2;)Lrx/Observable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TRight:",
            "Ljava/lang/Object;",
            "T",
            "LeftDuration:Ljava/lang/Object;",
            "TRightDuration:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TTRight;>;",
            "Lrx/functions/Func1",
            "<TT;",
            "Lrx/Observable",
            "<TT",
            "LeftDuration;",
            ">;>;",
            "Lrx/functions/Func1",
            "<TTRight;",
            "Lrx/Observable",
            "<TTRightDuration;>;>;",
            "Lrx/functions/Func2",
            "<TT;TTRight;TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 5161
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "right":Lrx/Observable;, "Lrx/Observable<TTRight;>;"
    .local p2, "leftDurationSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<TT;Lrx/Observable<TTLeftDuration;>;>;"
    .local p3, "rightDurationSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<TTRight;Lrx/Observable<TTRightDuration;>;>;"
    .local p4, "resultSelector":Lrx/functions/Func2;, "Lrx/functions/Func2<TT;TTRight;TR;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeJoin;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OnSubscribeJoin;-><init>(Lrx/Observable;Lrx/Observable;Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func2;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final last()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5179
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lrx/Observable;->takeLast(I)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->single()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final last(Lrx/functions/Func1;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5201
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p1}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrx/Observable;->takeLast(I)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->single()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final lastOrDefault(Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5221
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lrx/Observable;->takeLast(I)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->singleOrDefault(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final lastOrDefault(Ljava/lang/Object;Lrx/functions/Func1;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5244
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    .local p2, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p2}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrx/Observable;->takeLast(I)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->singleOrDefault(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final lift(Lrx/Observable$Operator;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable$Operator",
            "<+TR;-TT;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "lift":Lrx/Observable$Operator;, "Lrx/Observable$Operator<+TR;-TT;>;"
    new-instance v0, Lrx/Observable;

    new-instance v1, Lrx/Observable$1;

    invoke-direct {v1, p0, p1}, Lrx/Observable$1;-><init>(Lrx/Observable;Lrx/Observable$Operator;)V

    invoke-direct {v0, v1}, Lrx/Observable;-><init>(Lrx/Observable$OnSubscribe;)V

    return-object v0
.end method

.method public final limit(I)Lrx/Observable;
    .locals 1
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5269
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1}, Lrx/Observable;->take(I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final map(Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 5289
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "func":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TR;>;"
    new-instance v0, Lrx/internal/operators/OperatorMap;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorMap;-><init>(Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final materialize()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lrx/Notification",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 5311
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/internal/operators/OperatorMaterialize;->instance()Lrx/internal/operators/OperatorMaterialize;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final mergeWith(Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5332
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "t1":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static {p0, p1}, Lrx/Observable;->merge(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final nest()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 2426
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {p0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final observeOn(Lrx/Scheduler;)Lrx/Observable;
    .locals 1
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5354
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    instance-of v0, p0, Lrx/internal/util/ScalarSynchronousObservable;

    if-eqz v0, :cond_0

    .line 5355
    check-cast p0, Lrx/internal/util/ScalarSynchronousObservable;

    .end local p0    # "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousObservable;->scalarScheduleOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 5357
    :goto_0
    return-object v0

    .restart local p0    # "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    :cond_0
    new-instance v0, Lrx/internal/operators/OperatorObserveOn;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorObserveOn;-><init>(Lrx/Scheduler;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    goto :goto_0
.end method

.method public final ofType(Ljava/lang/Class;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 5375
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    new-instance v0, Lrx/Observable$12;

    invoke-direct {v0, p0, p1}, Lrx/Observable$12;-><init>(Lrx/Observable;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->cast(Ljava/lang/Class;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final onBackpressureBlock()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 5548
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    sget v0, Lrx/internal/util/RxRingBuffer;->SIZE:I

    invoke-virtual {p0, v0}, Lrx/Observable;->onBackpressureBlock(I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final onBackpressureBlock(I)Lrx/Observable;
    .locals 1
    .param p1, "maxQueueLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 5517
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorOnBackpressureBlock;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorOnBackpressureBlock;-><init>(I)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final onBackpressureBuffer()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5397
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/internal/operators/OperatorOnBackpressureBuffer;->instance()Lrx/internal/operators/OperatorOnBackpressureBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final onBackpressureBuffer(J)Lrx/Observable;
    .locals 1
    .param p1, "capacity"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 5418
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorOnBackpressureBuffer;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/OperatorOnBackpressureBuffer;-><init>(J)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final onBackpressureBuffer(JLrx/functions/Action0;)Lrx/Observable;
    .locals 1
    .param p1, "capacity"    # J
    .param p3, "onOverflow"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Beta;
    .end annotation

    .prologue
    .line 5439
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorOnBackpressureBuffer;

    invoke-direct {v0, p1, p2, p3}, Lrx/internal/operators/OperatorOnBackpressureBuffer;-><init>(JLrx/functions/Action0;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final onBackpressureDrop()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5483
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/internal/operators/OperatorOnBackpressureDrop;->instance()Lrx/internal/operators/OperatorOnBackpressureDrop;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final onBackpressureDrop(Lrx/functions/Action1;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 5463
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "onDrop":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorOnBackpressureDrop;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorOnBackpressureDrop;-><init>(Lrx/functions/Action1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final onBackpressureLatest()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 5572
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/internal/operators/OperatorOnBackpressureLatest;->instance()Lrx/internal/operators/OperatorOnBackpressureLatest;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final onErrorResumeNext(Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5638
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "resumeSequence":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorOnErrorResumeNextViaObservable;-><init>(Lrx/Observable;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final onErrorResumeNext(Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Throwable;",
            "+",
            "Lrx/Observable",
            "<+TT;>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5605
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "resumeFunction":Lrx/functions/Func1;, "Lrx/functions/Func1<Ljava/lang/Throwable;+Lrx/Observable<+TT;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction;-><init>(Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final onErrorReturn(Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Throwable;",
            "+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5668
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "resumeFunction":Lrx/functions/Func1;, "Lrx/functions/Func1<Ljava/lang/Throwable;+TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorOnErrorReturn;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorOnErrorReturn;-><init>(Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final onExceptionResumeNext(Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5704
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "resumeSequence":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorOnExceptionResumeNextViaObservable;-><init>(Lrx/Observable;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final publish(Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<TT;>;+",
            "Lrx/Observable",
            "<TR;>;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 5746
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "selector":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<TT;>;+Lrx/Observable<TR;>;>;"
    invoke-static {p0, p1}, Lrx/internal/operators/OperatorPublish;->create(Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final publish()Lrx/observables/ConnectableObservable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5723
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {p0}, Lrx/internal/operators/OperatorPublish;->create(Lrx/Observable;)Lrx/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method

.method public final reduce(Ljava/lang/Object;Lrx/functions/Func2;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lrx/functions/Func2",
            "<TR;-TT;TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 5818
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "initialValue":Ljava/lang/Object;, "TR;"
    .local p2, "accumulator":Lrx/functions/Func2;, "Lrx/functions/Func2<TR;-TT;TR;>;"
    invoke-virtual {p0, p1, p2}, Lrx/Observable;->scan(Ljava/lang/Object;Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrx/Observable;->takeLast(I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final reduce(Lrx/functions/Func2;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2",
            "<TT;TT;TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5785
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "accumulator":Lrx/functions/Func2;, "Lrx/functions/Func2<TT;TT;TT;>;"
    invoke-virtual {p0, p1}, Lrx/Observable;->scan(Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->last()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final repeat()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5834
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {p0}, Lrx/internal/operators/OnSubscribeRedo;->repeat(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final repeat(J)Lrx/Observable;
    .locals 1
    .param p1, "count"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5876
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {p0, p1, p2}, Lrx/internal/operators/OnSubscribeRedo;->repeat(Lrx/Observable;J)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final repeat(JLrx/Scheduler;)Lrx/Observable;
    .locals 1
    .param p1, "count"    # J
    .param p3, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5899
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {p0, p1, p2, p3}, Lrx/internal/operators/OnSubscribeRedo;->repeat(Lrx/Observable;JLrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final repeat(Lrx/Scheduler;)Lrx/Observable;
    .locals 1
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5853
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {p0, p1}, Lrx/internal/operators/OnSubscribeRedo;->repeat(Lrx/Observable;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final repeatWhen(Lrx/functions/Func1;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/Void;",
            ">;+",
            "Lrx/Observable",
            "<*>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5958
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "notificationHandler":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Ljava/lang/Void;>;+Lrx/Observable<*>;>;"
    new-instance v0, Lrx/Observable$14;

    invoke-direct {v0, p0, p1}, Lrx/Observable$14;-><init>(Lrx/Observable;Lrx/functions/Func1;)V

    .line 5969
    .local v0, "dematerializedNotificationHandler":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Lrx/Notification<*>;>;+Lrx/Observable<*>;>;"
    invoke-static {p0, v0}, Lrx/internal/operators/OnSubscribeRedo;->repeat(Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public final repeatWhen(Lrx/functions/Func1;Lrx/Scheduler;)Lrx/Observable;
    .locals 2
    .param p2, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/Void;",
            ">;+",
            "Lrx/Observable",
            "<*>;>;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5924
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "notificationHandler":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Ljava/lang/Void;>;+Lrx/Observable<*>;>;"
    new-instance v0, Lrx/Observable$13;

    invoke-direct {v0, p0, p1}, Lrx/Observable$13;-><init>(Lrx/Observable;Lrx/functions/Func1;)V

    .line 5935
    .local v0, "dematerializedNotificationHandler":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Lrx/Notification<*>;>;+Lrx/Observable<*>;>;"
    invoke-static {p0, v0, p2}, Lrx/internal/operators/OnSubscribeRedo;->repeat(Lrx/Observable;Lrx/functions/Func1;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public final replay(Lrx/functions/Func1;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<TT;>;+",
            "Lrx/Observable",
            "<TR;>;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6027
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "selector":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<TT;>;+Lrx/Observable<TR;>;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeMulticastSelector;

    new-instance v1, Lrx/Observable$16;

    invoke-direct {v1, p0}, Lrx/Observable$16;-><init>(Lrx/Observable;)V

    invoke-direct {v0, p0, v1, p1}, Lrx/internal/operators/OnSubscribeMulticastSelector;-><init>(Lrx/Observable;Lrx/functions/Func0;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final replay(Lrx/functions/Func1;I)Lrx/Observable;
    .locals 2
    .param p2, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<TT;>;+",
            "Lrx/Observable",
            "<TR;>;>;I)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6063
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "selector":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<TT;>;+Lrx/Observable<TR;>;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeMulticastSelector;

    new-instance v1, Lrx/Observable$17;

    invoke-direct {v1, p0, p2}, Lrx/Observable$17;-><init>(Lrx/Observable;I)V

    invoke-direct {v0, p0, v1, p1}, Lrx/internal/operators/OnSubscribeMulticastSelector;-><init>(Lrx/Observable;Lrx/functions/Func0;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final replay(Lrx/functions/Func1;IJLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .locals 9
    .param p2, "bufferSize"    # I
    .param p3, "time"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<TT;>;+",
            "Lrx/Observable",
            "<TR;>;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6104
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "selector":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<TT;>;+Lrx/Observable<TR;>;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v7}, Lrx/Observable;->replay(Lrx/functions/Func1;IJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final replay(Lrx/functions/Func1;IJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .locals 9
    .param p2, "bufferSize"    # I
    .param p3, "time"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<TT;>;+",
            "Lrx/Observable",
            "<TR;>;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6144
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "selector":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<TT;>;+Lrx/Observable<TR;>;>;"
    if-gez p2, :cond_0

    .line 6145
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bufferSize < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6147
    :cond_0
    new-instance v7, Lrx/internal/operators/OnSubscribeMulticastSelector;

    new-instance v0, Lrx/Observable$18;

    move-object v1, p0

    move-wide v2, p3

    move-object v4, p5

    move v5, p2

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lrx/Observable$18;-><init>(Lrx/Observable;JLjava/util/concurrent/TimeUnit;ILrx/Scheduler;)V

    invoke-direct {v7, p0, v0, p1}, Lrx/internal/operators/OnSubscribeMulticastSelector;-><init>(Lrx/Observable;Lrx/functions/Func0;Lrx/functions/Func1;)V

    invoke-static {v7}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final replay(Lrx/functions/Func1;ILrx/Scheduler;)Lrx/Observable;
    .locals 2
    .param p2, "bufferSize"    # I
    .param p3, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<TT;>;+",
            "Lrx/Observable",
            "<TR;>;>;I",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6185
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "selector":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<TT;>;+Lrx/Observable<TR;>;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeMulticastSelector;

    new-instance v1, Lrx/Observable$19;

    invoke-direct {v1, p0, p2, p3}, Lrx/Observable$19;-><init>(Lrx/Observable;ILrx/Scheduler;)V

    invoke-direct {v0, p0, v1, p1}, Lrx/internal/operators/OnSubscribeMulticastSelector;-><init>(Lrx/Observable;Lrx/functions/Func0;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final replay(Lrx/functions/Func1;JLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .locals 6
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<TT;>;+",
            "Lrx/Observable",
            "<TR;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6223
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "selector":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<TT;>;+Lrx/Observable<TR;>;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lrx/Observable;->replay(Lrx/functions/Func1;JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final replay(Lrx/functions/Func1;JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .locals 8
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<TT;>;+",
            "Lrx/Observable",
            "<TR;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6258
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "selector":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<TT;>;+Lrx/Observable<TR;>;>;"
    new-instance v6, Lrx/internal/operators/OnSubscribeMulticastSelector;

    new-instance v0, Lrx/Observable$20;

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lrx/Observable$20;-><init>(Lrx/Observable;JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V

    invoke-direct {v6, p0, v0, p1}, Lrx/internal/operators/OnSubscribeMulticastSelector;-><init>(Lrx/Observable;Lrx/functions/Func0;Lrx/functions/Func1;)V

    invoke-static {v6}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final replay(Lrx/functions/Func1;Lrx/Scheduler;)Lrx/Observable;
    .locals 2
    .param p2, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<TT;>;+",
            "Lrx/Observable",
            "<TR;>;>;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6293
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "selector":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<TT;>;+Lrx/Observable<TR;>;>;"
    new-instance v0, Lrx/internal/operators/OnSubscribeMulticastSelector;

    new-instance v1, Lrx/Observable$21;

    invoke-direct {v1, p0, p2}, Lrx/Observable$21;-><init>(Lrx/Observable;Lrx/Scheduler;)V

    invoke-direct {v0, p0, v1, p1}, Lrx/internal/operators/OnSubscribeMulticastSelector;-><init>(Lrx/Observable;Lrx/functions/Func0;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final replay()Lrx/observables/ConnectableObservable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 5993
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorMulticast;

    new-instance v1, Lrx/Observable$15;

    invoke-direct {v1, p0}, Lrx/Observable$15;-><init>(Lrx/Observable;)V

    invoke-direct {v0, p0, v1}, Lrx/internal/operators/OperatorMulticast;-><init>(Lrx/Observable;Lrx/functions/Func0;)V

    return-object v0
.end method

.method public final replay(I)Lrx/observables/ConnectableObservable;
    .locals 2
    .param p1, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6324
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorMulticast;

    new-instance v1, Lrx/Observable$22;

    invoke-direct {v1, p0, p1}, Lrx/Observable$22;-><init>(Lrx/Observable;I)V

    invoke-direct {v0, p0, v1}, Lrx/internal/operators/OperatorMulticast;-><init>(Lrx/Observable;Lrx/functions/Func0;)V

    return-object v0
.end method

.method public final replay(IJLjava/util/concurrent/TimeUnit;)Lrx/observables/ConnectableObservable;
    .locals 6
    .param p1, "bufferSize"    # I
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6362
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lrx/Observable;->replay(IJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method

.method public final replay(IJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/observables/ConnectableObservable;
    .locals 8
    .param p1, "bufferSize"    # I
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6397
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    if-gez p1, :cond_0

    .line 6398
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bufferSize < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6400
    :cond_0
    new-instance v7, Lrx/internal/operators/OperatorMulticast;

    new-instance v0, Lrx/Observable$23;

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p4

    move v5, p1

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lrx/Observable$23;-><init>(Lrx/Observable;JLjava/util/concurrent/TimeUnit;ILrx/Scheduler;)V

    invoke-direct {v7, p0, v0}, Lrx/internal/operators/OperatorMulticast;-><init>(Lrx/Observable;Lrx/functions/Func0;)V

    return-object v7
.end method

.method public final replay(ILrx/Scheduler;)Lrx/observables/ConnectableObservable;
    .locals 2
    .param p1, "bufferSize"    # I
    .param p2, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrx/Scheduler;",
            ")",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6435
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorMulticast;

    new-instance v1, Lrx/Observable$24;

    invoke-direct {v1, p0, p1, p2}, Lrx/Observable$24;-><init>(Lrx/Observable;ILrx/Scheduler;)V

    invoke-direct {v0, p0, v1}, Lrx/internal/operators/OperatorMulticast;-><init>(Lrx/Observable;Lrx/functions/Func0;)V

    return-object v0
.end method

.method public final replay(JLjava/util/concurrent/TimeUnit;)Lrx/observables/ConnectableObservable;
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6470
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/Observable;->replay(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/observables/ConnectableObservable;

    move-result-object v0

    return-object v0
.end method

.method public final replay(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/observables/ConnectableObservable;
    .locals 7
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6500
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v6, Lrx/internal/operators/OperatorMulticast;

    new-instance v0, Lrx/Observable$25;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lrx/Observable$25;-><init>(Lrx/Observable;JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V

    invoke-direct {v6, p0, v0}, Lrx/internal/operators/OperatorMulticast;-><init>(Lrx/Observable;Lrx/functions/Func0;)V

    return-object v6
.end method

.method public final replay(Lrx/Scheduler;)Lrx/observables/ConnectableObservable;
    .locals 2
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Scheduler;",
            ")",
            "Lrx/observables/ConnectableObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6534
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorMulticast;

    new-instance v1, Lrx/Observable$26;

    invoke-direct {v1, p0, p1}, Lrx/Observable$26;-><init>(Lrx/Observable;Lrx/Scheduler;)V

    invoke-direct {v0, p0, v1}, Lrx/internal/operators/OperatorMulticast;-><init>(Lrx/Observable;Lrx/functions/Func0;)V

    return-object v0
.end method

.method public final retry()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6566
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {p0}, Lrx/internal/operators/OnSubscribeRedo;->retry(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final retry(J)Lrx/Observable;
    .locals 1
    .param p1, "count"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6594
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {p0, p1, p2}, Lrx/internal/operators/OnSubscribeRedo;->retry(Lrx/Observable;J)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final retry(Lrx/functions/Func2;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6615
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "predicate":Lrx/functions/Func2;, "Lrx/functions/Func2<Ljava/lang/Integer;Ljava/lang/Throwable;Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lrx/Observable;->nest()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OperatorRetryWithPredicate;

    invoke-direct {v1, p1}, Lrx/internal/operators/OperatorRetryWithPredicate;-><init>(Lrx/functions/Func2;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final retryWhen(Lrx/functions/Func1;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lrx/Observable",
            "<*>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6667
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "notificationHandler":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Ljava/lang/Throwable;>;+Lrx/Observable<*>;>;"
    new-instance v0, Lrx/Observable$27;

    invoke-direct {v0, p0, p1}, Lrx/Observable$27;-><init>(Lrx/Observable;Lrx/functions/Func1;)V

    .line 6678
    .local v0, "dematerializedNotificationHandler":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Lrx/Notification<*>;>;+Lrx/Observable<*>;>;"
    invoke-static {p0, v0}, Lrx/internal/operators/OnSubscribeRedo;->retry(Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public final retryWhen(Lrx/functions/Func1;Lrx/Scheduler;)Lrx/Observable;
    .locals 2
    .param p2, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Observable",
            "<+",
            "Ljava/lang/Throwable;",
            ">;+",
            "Lrx/Observable",
            "<*>;>;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6705
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "notificationHandler":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Ljava/lang/Throwable;>;+Lrx/Observable<*>;>;"
    new-instance v0, Lrx/Observable$28;

    invoke-direct {v0, p0, p1}, Lrx/Observable$28;-><init>(Lrx/Observable;Lrx/functions/Func1;)V

    .line 6716
    .local v0, "dematerializedNotificationHandler":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Observable<+Lrx/Notification<*>;>;+Lrx/Observable<*>;>;"
    invoke-static {p0, v0, p2}, Lrx/internal/operators/OnSubscribeRedo;->retry(Lrx/Observable;Lrx/functions/Func1;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    return-object v1
.end method

.method public final sample(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .locals 1
    .param p1, "period"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6742
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/Observable;->sample(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final sample(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .locals 1
    .param p1, "period"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6770
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorSampleWithTime;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/operators/OperatorSampleWithTime;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final sample(Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TU;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6795
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "sampler":Lrx/Observable;, "Lrx/Observable<TU;>;"
    new-instance v0, Lrx/internal/operators/OperatorSampleWithObservable;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorSampleWithObservable;-><init>(Lrx/Observable;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final scan(Ljava/lang/Object;Lrx/functions/Func2;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lrx/functions/Func2",
            "<TR;-TT;TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 6851
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "initialValue":Ljava/lang/Object;, "TR;"
    .local p2, "accumulator":Lrx/functions/Func2;, "Lrx/functions/Func2<TR;-TT;TR;>;"
    new-instance v0, Lrx/internal/operators/OperatorScan;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/OperatorScan;-><init>(Ljava/lang/Object;Lrx/functions/Func2;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final scan(Lrx/functions/Func2;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2",
            "<TT;TT;TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6820
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "accumulator":Lrx/functions/Func2;, "Lrx/functions/Func2<TT;TT;TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorScan;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorScan;-><init>(Lrx/functions/Func2;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final serialize()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6875
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/internal/operators/OperatorSerialize;->instance()Lrx/internal/operators/OperatorSerialize;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final share()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6900
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0}, Lrx/Observable;->publish()Lrx/observables/ConnectableObservable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/observables/ConnectableObservable;->refCount()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final single()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6922
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/internal/operators/OperatorSingle;->instance()Lrx/internal/operators/OperatorSingle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final single(Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6948
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p1}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->single()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final singleOrDefault(Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6971
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    new-instance v0, Lrx/internal/operators/OperatorSingle;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorSingle;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final singleOrDefault(Ljava/lang/Object;Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 6997
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    .local p2, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p2}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/Observable;->singleOrDefault(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final skip(I)Lrx/Observable;
    .locals 1
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7017
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorSkip;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorSkip;-><init>(I)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final skip(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7039
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/Observable;->skip(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final skip(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7063
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorSkipTimed;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/operators/OperatorSkipTimed;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final skipLast(I)Lrx/Observable;
    .locals 1
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7089
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorSkipLast;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorSkipLast;-><init>(I)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final skipLast(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7113
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/Observable;->skipLast(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final skipLast(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7139
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorSkipLastTimed;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/operators/OperatorSkipLastTimed;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final skipUntil(Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TU;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7160
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "other":Lrx/Observable;, "Lrx/Observable<TU;>;"
    new-instance v0, Lrx/internal/operators/OperatorSkipUntil;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorSkipUntil;-><init>(Lrx/Observable;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final skipWhile(Lrx/functions/Func1;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7180
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    new-instance v0, Lrx/internal/operators/OperatorSkipWhile;

    invoke-static {p1}, Lrx/internal/operators/OperatorSkipWhile;->toPredicate2(Lrx/functions/Func1;)Lrx/functions/Func2;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorSkipWhile;-><init>(Lrx/functions/Func2;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Ljava/lang/Iterable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7220
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-static {p1}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0, p0}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7240
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0, p0}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7262
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    .local p2, "t2":Ljava/lang/Object;, "TT;"
    invoke-static {p1, p2}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0, p0}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7286
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    .local p2, "t2":Ljava/lang/Object;, "TT;"
    .local p3, "t3":Ljava/lang/Object;, "TT;"
    invoke-static {p1, p2, p3}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0, p0}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7312
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    .local p2, "t2":Ljava/lang/Object;, "TT;"
    .local p3, "t3":Ljava/lang/Object;, "TT;"
    .local p4, "t4":Ljava/lang/Object;, "TT;"
    invoke-static {p1, p2, p3, p4}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0, p0}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;TT;TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7340
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    .local p2, "t2":Ljava/lang/Object;, "TT;"
    .local p3, "t3":Ljava/lang/Object;, "TT;"
    .local p4, "t4":Ljava/lang/Object;, "TT;"
    .local p5, "t5":Ljava/lang/Object;, "TT;"
    invoke-static {p1, p2, p3, p4, p5}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0, p0}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;TT;TT;TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7370
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    .local p2, "t2":Ljava/lang/Object;, "TT;"
    .local p3, "t3":Ljava/lang/Object;, "TT;"
    .local p4, "t4":Ljava/lang/Object;, "TT;"
    .local p5, "t5":Ljava/lang/Object;, "TT;"
    .local p6, "t6":Ljava/lang/Object;, "TT;"
    invoke-static/range {p1 .. p6}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0, p0}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;TT;TT;TT;TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7402
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    .local p2, "t2":Ljava/lang/Object;, "TT;"
    .local p3, "t3":Ljava/lang/Object;, "TT;"
    .local p4, "t4":Ljava/lang/Object;, "TT;"
    .local p5, "t5":Ljava/lang/Object;, "TT;"
    .local p6, "t6":Ljava/lang/Object;, "TT;"
    .local p7, "t7":Ljava/lang/Object;, "TT;"
    invoke-static/range {p1 .. p7}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0, p0}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;TT;TT;TT;TT;TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7436
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    .local p2, "t2":Ljava/lang/Object;, "TT;"
    .local p3, "t3":Ljava/lang/Object;, "TT;"
    .local p4, "t4":Ljava/lang/Object;, "TT;"
    .local p5, "t5":Ljava/lang/Object;, "TT;"
    .local p6, "t6":Ljava/lang/Object;, "TT;"
    .local p7, "t7":Ljava/lang/Object;, "TT;"
    .local p8, "t8":Ljava/lang/Object;, "TT;"
    invoke-static/range {p1 .. p8}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0, p0}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;TT;TT;TT;TT;TT;TT;TT;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7472
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "t1":Ljava/lang/Object;, "TT;"
    .local p2, "t2":Ljava/lang/Object;, "TT;"
    .local p3, "t3":Ljava/lang/Object;, "TT;"
    .local p4, "t4":Ljava/lang/Object;, "TT;"
    .local p5, "t5":Ljava/lang/Object;, "TT;"
    .local p6, "t6":Ljava/lang/Object;, "TT;"
    .local p7, "t7":Ljava/lang/Object;, "TT;"
    .local p8, "t8":Ljava/lang/Object;, "TT;"
    .local p9, "t9":Ljava/lang/Object;, "TT;"
    invoke-static/range {p1 .. p9}, Lrx/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0, p0}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final startWith(Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7200
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "values":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {p1, p0}, Lrx/Observable;->concat(Lrx/Observable;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe()Lrx/Subscription;
    .locals 1

    .prologue
    .line 7489
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/Observable$29;

    invoke-direct {v0, p0}, Lrx/Observable$29;-><init>(Lrx/Observable;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe(Lrx/Observer;)Lrx/Subscription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer",
            "<-TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 7669
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "observer":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    instance-of v0, p1, Lrx/Subscriber;

    if-eqz v0, :cond_0

    .line 7670
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "observer":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    invoke-virtual {p0, p1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    .line 7672
    :goto_0
    return-object v0

    .restart local p1    # "observer":Lrx/Observer;, "Lrx/Observer<-TT;>;"
    :cond_0
    new-instance v0, Lrx/Observable$33;

    invoke-direct {v0, p0, p1}, Lrx/Observable$33;-><init>(Lrx/Observable;Lrx/Observer;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    goto :goto_0
.end method

.method public final subscribe(Lrx/Subscriber;)Lrx/Subscription;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 7776
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    if-nez p1, :cond_0

    .line 7777
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "observer can not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 7779
    :cond_0
    iget-object v4, p0, Lrx/Observable;->onSubscribe:Lrx/Observable$OnSubscribe;

    if-nez v4, :cond_1

    .line 7780
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "onSubscribe function can not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 7788
    :cond_1
    invoke-virtual {p1}, Lrx/Subscriber;->onStart()V

    .line 7795
    instance-of v4, p1, Lrx/observers/SafeSubscriber;

    if-nez v4, :cond_2

    .line 7797
    new-instance v3, Lrx/observers/SafeSubscriber;

    invoke-direct {v3, p1}, Lrx/observers/SafeSubscriber;-><init>(Lrx/Subscriber;)V

    .end local p1    # "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .local v3, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    move-object p1, v3

    .line 7803
    .end local v3    # "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    .restart local p1    # "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :cond_2
    :try_start_0
    sget-object v4, Lrx/Observable;->hook:Lrx/plugins/RxJavaObservableExecutionHook;

    iget-object v5, p0, Lrx/Observable;->onSubscribe:Lrx/Observable$OnSubscribe;

    invoke-virtual {v4, p0, v5}, Lrx/plugins/RxJavaObservableExecutionHook;->onSubscribeStart(Lrx/Observable;Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;

    move-result-object v4

    invoke-interface {v4, p1}, Lrx/Observable$OnSubscribe;->call(Ljava/lang/Object;)V

    .line 7804
    sget-object v4, Lrx/Observable;->hook:Lrx/plugins/RxJavaObservableExecutionHook;

    invoke-virtual {v4, p1}, Lrx/plugins/RxJavaObservableExecutionHook;->onSubscribeReturn(Lrx/Subscription;)Lrx/Subscription;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 7823
    :goto_0
    return-object v4

    .line 7805
    :catch_0
    move-exception v0

    .line 7807
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 7810
    :try_start_1
    sget-object v4, Lrx/Observable;->hook:Lrx/plugins/RxJavaObservableExecutionHook;

    invoke-virtual {v4, v0}, Lrx/plugins/RxJavaObservableExecutionHook;->onSubscribeError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {p1, v4}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Lrx/exceptions/OnErrorNotImplementedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 7823
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v4

    goto :goto_0

    .line 7811
    :catch_1
    move-exception v1

    .line 7813
    .local v1, "e2":Lrx/exceptions/OnErrorNotImplementedException;
    throw v1

    .line 7814
    .end local v1    # "e2":Lrx/exceptions/OnErrorNotImplementedException;
    :catch_2
    move-exception v1

    .line 7817
    .local v1, "e2":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error occurred attempting to subscribe ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] and then again while trying to pass to onError."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7819
    .local v2, "r":Ljava/lang/RuntimeException;
    sget-object v4, Lrx/Observable;->hook:Lrx/plugins/RxJavaObservableExecutionHook;

    invoke-virtual {v4, v2}, Lrx/plugins/RxJavaObservableExecutionHook;->onSubscribeError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 7821
    throw v2
.end method

.method public final subscribe(Lrx/functions/Action1;)Lrx/Subscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 7527
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "onNext":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    if-nez p1, :cond_0

    .line 7528
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7531
    :cond_0
    new-instance v0, Lrx/Observable$30;

    invoke-direct {v0, p0, p1}, Lrx/Observable$30;-><init>(Lrx/Observable;Lrx/functions/Action1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-TT;>;",
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 7572
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "onNext":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    .local p2, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    if-nez p1, :cond_0

    .line 7573
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7575
    :cond_0
    if-nez p2, :cond_1

    .line 7576
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onError can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7579
    :cond_1
    new-instance v0, Lrx/Observable$31;

    invoke-direct {v0, p0, p2, p1}, Lrx/Observable$31;-><init>(Lrx/Observable;Lrx/functions/Action1;Lrx/functions/Action1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public final subscribe(Lrx/functions/Action1;Lrx/functions/Action1;Lrx/functions/Action0;)Lrx/Subscription;
    .locals 2
    .param p3, "onComplete"    # Lrx/functions/Action0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<-TT;>;",
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Throwable;",
            ">;",
            "Lrx/functions/Action0;",
            ")",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 7624
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "onNext":Lrx/functions/Action1;, "Lrx/functions/Action1<-TT;>;"
    .local p2, "onError":Lrx/functions/Action1;, "Lrx/functions/Action1<Ljava/lang/Throwable;>;"
    if-nez p1, :cond_0

    .line 7625
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onNext can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7627
    :cond_0
    if-nez p2, :cond_1

    .line 7628
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onError can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7630
    :cond_1
    if-nez p3, :cond_2

    .line 7631
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "onComplete can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7634
    :cond_2
    new-instance v0, Lrx/Observable$32;

    invoke-direct {v0, p0, p3, p2, p1}, Lrx/Observable$32;-><init>(Lrx/Observable;Lrx/functions/Action0;Lrx/functions/Action1;Lrx/functions/Action1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    return-object v0
.end method

.method public final subscribeOn(Lrx/Scheduler;)Lrx/Observable;
    .locals 2
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7845
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    instance-of v0, p0, Lrx/internal/util/ScalarSynchronousObservable;

    if-eqz v0, :cond_0

    .line 7846
    check-cast p0, Lrx/internal/util/ScalarSynchronousObservable;

    .end local p0    # "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1}, Lrx/internal/util/ScalarSynchronousObservable;->scalarScheduleOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 7848
    :goto_0
    return-object v0

    .restart local p0    # "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    :cond_0
    invoke-virtual {p0}, Lrx/Observable;->nest()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lrx/internal/operators/OperatorSubscribeOn;

    invoke-direct {v1, p1}, Lrx/internal/operators/OperatorSubscribeOn;-><init>(Lrx/Scheduler;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    goto :goto_0
.end method

.method public final switchIfEmpty(Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 3977
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "alternate":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorSwitchIfEmpty;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorSwitchIfEmpty;-><init>(Lrx/Observable;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final switchMap(Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<+TR;>;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 7869
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "func":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    invoke-virtual {p0, p1}, Lrx/Observable;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->switchOnNext(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final take(I)Lrx/Observable;
    .locals 1
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7893
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorTake;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorTake;-><init>(I)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final take(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7914
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/Observable;->take(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final take(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7938
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorTakeTimed;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/operators/OperatorTakeTimed;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final takeFirst(Lrx/functions/Func1;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7959
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    invoke-virtual {p0, p1}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lrx/Observable;->take(I)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final takeLast(I)Lrx/Observable;
    .locals 1
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 7981
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    if-nez p1, :cond_0

    .line 7982
    invoke-virtual {p0}, Lrx/Observable;->ignoreElements()Lrx/Observable;

    move-result-object v0

    .line 7986
    :goto_0
    return-object v0

    .line 7983
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 7984
    invoke-static {}, Lrx/internal/operators/OperatorTakeLastOne;->instance()Lrx/internal/operators/OperatorTakeLastOne;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    goto :goto_0

    .line 7986
    :cond_1
    new-instance v0, Lrx/internal/operators/OperatorTakeLast;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorTakeLast;-><init>(I)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    goto :goto_0
.end method

.method public final takeLast(IJLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .locals 6
    .param p1, "count"    # I
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8010
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lrx/Observable;->takeLast(IJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final takeLast(IJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .locals 6
    .param p1, "count"    # I
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8040
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorTakeLastTimed;

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lrx/internal/operators/OperatorTakeLastTimed;-><init>(IJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final takeLast(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8062
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/Observable;->takeLast(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final takeLast(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8088
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorTakeLastTimed;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/operators/OperatorTakeLastTimed;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final takeLastBuffer(I)Lrx/Observable;
    .locals 1
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 8108
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1}, Lrx/Observable;->takeLast(I)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->toList()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final takeLastBuffer(IJLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .locals 2
    .param p1, "count"    # I
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 8133
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lrx/Observable;->takeLast(IJLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->toList()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final takeLastBuffer(IJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .locals 2
    .param p1, "count"    # I
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 8161
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual/range {p0 .. p5}, Lrx/Observable;->takeLast(IJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->toList()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final takeLastBuffer(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 8183
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lrx/Observable;->takeLast(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->toList()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final takeLastBuffer(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 8209
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lrx/Observable;->takeLast(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lrx/Observable;->toList()Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final takeUntil(Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TE;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8231
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "other":Lrx/Observable;, "Lrx/Observable<+TE;>;"
    new-instance v0, Lrx/internal/operators/OperatorTakeUntil;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorTakeUntil;-><init>(Lrx/Observable;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final takeUntil(Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 8275
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "stopPredicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    new-instance v0, Lrx/internal/operators/OperatorTakeUntilPredicate;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorTakeUntilPredicate;-><init>(Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final takeWhile(Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8252
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "predicate":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;Ljava/lang/Boolean;>;"
    new-instance v0, Lrx/internal/operators/OperatorTakeWhile;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorTakeWhile;-><init>(Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final throttleFirst(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .locals 1
    .param p1, "windowDuration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8302
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lrx/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final throttleFirst(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .locals 1
    .param p1, "skipDuration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8332
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorThrottleFirst;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/operators/OperatorThrottleFirst;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final throttleLast(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .locals 1
    .param p1, "intervalDuration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8361
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lrx/Observable;->sample(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final throttleLast(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .locals 1
    .param p1, "intervalDuration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8393
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lrx/Observable;->sample(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final throttleWithTimeout(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8431
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lrx/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final throttleWithTimeout(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8473
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lrx/Observable;->debounce(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final timeInterval()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lrx/schedulers/TimeInterval",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 8490
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->immediate()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->timeInterval(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final timeInterval(Lrx/Scheduler;)Lrx/Observable;
    .locals 1
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<",
            "Lrx/schedulers/TimeInterval",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 8509
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorTimeInterval;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorTimeInterval;-><init>(Lrx/Scheduler;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8659
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    const/4 v5, 0x0

    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lrx/Observable;->timeout(JLjava/util/concurrent/TimeUnit;Lrx/Observable;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lrx/Observable;)Lrx/Observable;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8683
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p4, "other":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lrx/Observable;->timeout(JLjava/util/concurrent/TimeUnit;Lrx/Observable;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lrx/Observable;Lrx/Scheduler;)Lrx/Observable;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Observable",
            "<+TT;>;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8710
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p4, "other":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorTimeout;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lrx/internal/operators/OperatorTimeout;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/Observable;Lrx/Scheduler;)V

    invoke-virtual {p0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8736
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lrx/Observable;->timeout(JLjava/util/concurrent/TimeUnit;Lrx/Observable;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(Lrx/functions/Func0;Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<+",
            "Lrx/Observable",
            "<TU;>;>;",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<TV;>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8540
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "firstTimeoutSelector":Lrx/functions/Func0;, "Lrx/functions/Func0<+Lrx/Observable<TU;>;>;"
    .local p2, "timeoutSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<TV;>;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lrx/Observable;->timeout(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/Observable;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<+",
            "Lrx/Observable",
            "<TU;>;>;",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<TV;>;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8575
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "firstTimeoutSelector":Lrx/functions/Func0;, "Lrx/functions/Func0<+Lrx/Observable<TU;>;>;"
    .local p2, "timeoutSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<TV;>;>;"
    .local p3, "other":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    if-nez p2, :cond_0

    .line 8576
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "timeoutSelector is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8578
    :cond_0
    new-instance v0, Lrx/internal/operators/OperatorTimeoutWithSelector;

    invoke-direct {v0, p1, p2, p3}, Lrx/internal/operators/OperatorTimeoutWithSelector;-><init>(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/Observable;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<TV;>;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "timeoutSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<TV;>;>;"
    const/4 v0, 0x0

    .line 8606
    invoke-virtual {p0, v0, p1, v0}, Lrx/Observable;->timeout(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final timeout(Lrx/functions/Func1;Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+",
            "Lrx/Observable",
            "<TV;>;>;",
            "Lrx/Observable",
            "<+TT;>;)",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8636
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "timeoutSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+Lrx/Observable<TV;>;>;"
    .local p2, "other":Lrx/Observable;, "Lrx/Observable<+TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lrx/Observable;->timeout(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final timestamp()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Lrx/schedulers/Timestamped",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 8753
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->immediate()Lrx/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->timestamp(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final timestamp(Lrx/Scheduler;)Lrx/Observable;
    .locals 1
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<",
            "Lrx/schedulers/Timestamped",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 8773
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorTimestamp;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorTimestamp;-><init>(Lrx/Scheduler;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final toBlocking()Lrx/observables/BlockingObservable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/observables/BlockingObservable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 8787
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {p0}, Lrx/observables/BlockingObservable;->from(Lrx/Observable;)Lrx/observables/BlockingObservable;

    move-result-object v0

    return-object v0
.end method

.method public final toList()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 8816
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/internal/operators/OperatorToObservableList;->instance()Lrx/internal/operators/OperatorToObservableList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final toMap(Lrx/functions/Func1;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+TK;>;)",
            "Lrx/Observable",
            "<",
            "Ljava/util/Map",
            "<TK;TT;>;>;"
        }
    .end annotation

    .prologue
    .line 8840
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    new-instance v0, Lrx/internal/operators/OperatorToMap;

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/OperatorToMap;-><init>(Lrx/functions/Func1;Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final toMap(Lrx/functions/Func1;Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+TK;>;",
            "Lrx/functions/Func1",
            "<-TT;+TV;>;)",
            "Lrx/Observable",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 8867
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "valueSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TV;>;"
    new-instance v0, Lrx/internal/operators/OperatorToMap;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/OperatorToMap;-><init>(Lrx/functions/Func1;Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final toMap(Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func0;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+TK;>;",
            "Lrx/functions/Func1",
            "<-TT;+TV;>;",
            "Lrx/functions/Func0",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;)",
            "Lrx/Observable",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 8893
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "valueSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TV;>;"
    .local p3, "mapFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<+Ljava/util/Map<TK;TV;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorToMap;

    invoke-direct {v0, p1, p2, p3}, Lrx/internal/operators/OperatorToMap;-><init>(Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func0;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final toMultimap(Lrx/functions/Func1;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+TK;>;)",
            "Lrx/Observable",
            "<",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TT;>;>;>;"
        }
    .end annotation

    .prologue
    .line 8915
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    new-instance v0, Lrx/internal/operators/OperatorToMultimap;

    invoke-static {}, Lrx/internal/util/UtilityFunctions;->identity()Lrx/functions/Func1;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/OperatorToMultimap;-><init>(Lrx/functions/Func1;Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final toMultimap(Lrx/functions/Func1;Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+TK;>;",
            "Lrx/functions/Func1",
            "<-TT;+TV;>;)",
            "Lrx/Observable",
            "<",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 8940
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "valueSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TV;>;"
    new-instance v0, Lrx/internal/operators/OperatorToMultimap;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/OperatorToMultimap;-><init>(Lrx/functions/Func1;Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final toMultimap(Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func0;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1",
            "<-TT;+TK;>;",
            "Lrx/functions/Func1",
            "<-TT;+TV;>;",
            "Lrx/functions/Func0",
            "<+",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;)",
            "Lrx/Observable",
            "<",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 8967
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "valueSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TV;>;"
    .local p3, "mapFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<+Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorToMultimap;

    invoke-direct {v0, p1, p2, p3}, Lrx/internal/operators/OperatorToMultimap;-><init>(Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func0;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final toMultimap(Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func0;Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
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
            "<TV;>;>;)",
            "Lrx/Observable",
            "<",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/util/Collection",
            "<TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 8996
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "keySelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p2, "valueSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TT;+TV;>;"
    .local p3, "mapFactory":Lrx/functions/Func0;, "Lrx/functions/Func0<+Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;>;"
    .local p4, "collectionFactory":Lrx/functions/Func1;, "Lrx/functions/Func1<-TK;+Ljava/util/Collection<TV;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorToMultimap;

    invoke-direct {v0, p1, p2, p3, p4}, Lrx/internal/operators/OperatorToMultimap;-><init>(Lrx/functions/Func1;Lrx/functions/Func1;Lrx/functions/Func0;Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public toSingle()Lrx/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Single",
            "<TT;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 220
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/Single;

    invoke-static {p0}, Lrx/internal/operators/OnSubscribeSingle;->create(Lrx/Observable;)Lrx/internal/operators/OnSubscribeSingle;

    move-result-object v1

    invoke-direct {v0, v1}, Lrx/Single;-><init>(Lrx/Single$OnSubscribe;)V

    return-object v0
.end method

.method public final toSortedList()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 9020
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorToObservableSortedList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lrx/internal/operators/OperatorToObservableSortedList;-><init>(I)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final toSortedList(I)Lrx/Observable;
    .locals 1
    .param p1, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 9071
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorToObservableSortedList;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorToObservableSortedList;-><init>(I)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final toSortedList(Lrx/functions/Func2;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2",
            "<-TT;-TT;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 9043
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "sortFunction":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT;-TT;Ljava/lang/Integer;>;"
    new-instance v0, Lrx/internal/operators/OperatorToObservableSortedList;

    const/16 v1, 0xa

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/OperatorToObservableSortedList;-><init>(Lrx/functions/Func2;I)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final toSortedList(Lrx/functions/Func2;I)Lrx/Observable;
    .locals 1
    .param p2, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func2",
            "<-TT;-TT;",
            "Ljava/lang/Integer;",
            ">;I)",
            "Lrx/Observable",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 9098
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "sortFunction":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT;-TT;Ljava/lang/Integer;>;"
    new-instance v0, Lrx/internal/operators/OperatorToObservableSortedList;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/OperatorToObservableSortedList;-><init>(Lrx/functions/Func2;I)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)",
            "Lrx/Subscription;"
        }
    .end annotation

    .prologue
    .line 7711
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    :try_start_0
    invoke-virtual {p1}, Lrx/Subscriber;->onStart()V

    .line 7713
    sget-object v3, Lrx/Observable;->hook:Lrx/plugins/RxJavaObservableExecutionHook;

    iget-object v4, p0, Lrx/Observable;->onSubscribe:Lrx/Observable$OnSubscribe;

    invoke-virtual {v3, p0, v4}, Lrx/plugins/RxJavaObservableExecutionHook;->onSubscribeStart(Lrx/Observable;Lrx/Observable$OnSubscribe;)Lrx/Observable$OnSubscribe;

    move-result-object v3

    invoke-interface {v3, p1}, Lrx/Observable$OnSubscribe;->call(Ljava/lang/Object;)V

    .line 7714
    sget-object v3, Lrx/Observable;->hook:Lrx/plugins/RxJavaObservableExecutionHook;

    invoke-virtual {v3, p1}, Lrx/plugins/RxJavaObservableExecutionHook;->onSubscribeReturn(Lrx/Subscription;)Lrx/Subscription;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 7733
    :goto_0
    return-object v3

    .line 7715
    :catch_0
    move-exception v0

    .line 7717
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 7720
    :try_start_1
    sget-object v3, Lrx/Observable;->hook:Lrx/plugins/RxJavaObservableExecutionHook;

    invoke-virtual {v3, v0}, Lrx/plugins/RxJavaObservableExecutionHook;->onSubscribeError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {p1, v3}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Lrx/exceptions/OnErrorNotImplementedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 7733
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v3

    goto :goto_0

    .line 7721
    :catch_1
    move-exception v1

    .line 7723
    .local v1, "e2":Lrx/exceptions/OnErrorNotImplementedException;
    throw v1

    .line 7724
    .end local v1    # "e2":Lrx/exceptions/OnErrorNotImplementedException;
    :catch_2
    move-exception v1

    .line 7727
    .local v1, "e2":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occurred attempting to subscribe ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] and then again while trying to pass to onError."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7729
    .local v2, "r":Ljava/lang/RuntimeException;
    sget-object v3, Lrx/Observable;->hook:Lrx/plugins/RxJavaObservableExecutionHook;

    invoke-virtual {v3, v2}, Lrx/plugins/RxJavaObservableExecutionHook;->onSubscribeError(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 7731
    throw v2
.end method

.method public final unsubscribeOn(Lrx/Scheduler;)Lrx/Observable;
    .locals 1
    .param p1, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 9116
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorUnsubscribeOn;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorUnsubscribeOn;-><init>(Lrx/Scheduler;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final window(I)Lrx/Observable;
    .locals 1
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lrx/Observable",
            "<",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 9192
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-virtual {p0, p1, p1}, Lrx/Observable;->window(II)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final window(II)Lrx/Observable;
    .locals 1
    .param p1, "count"    # I
    .param p2, "skip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lrx/Observable",
            "<",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 9220
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorWindowWithSize;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/OperatorWindowWithSize;-><init>(II)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final window(JJLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .locals 9
    .param p1, "timespan"    # J
    .param p3, "timeshift"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 9248
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    const v7, 0x7fffffff

    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v8

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v8}, Lrx/Observable;->window(JJLjava/util/concurrent/TimeUnit;ILrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final window(JJLjava/util/concurrent/TimeUnit;ILrx/Scheduler;)Lrx/Observable;
    .locals 9
    .param p1, "timespan"    # J
    .param p3, "timeshift"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "count"    # I
    .param p7, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "I",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 9311
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    new-instance v1, Lrx/internal/operators/OperatorWindowWithTime;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lrx/internal/operators/OperatorWindowWithTime;-><init>(JJLjava/util/concurrent/TimeUnit;ILrx/Scheduler;)V

    invoke-virtual {p0, v1}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final window(JJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .locals 9
    .param p1, "timespan"    # J
    .param p3, "timeshift"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 9278
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    const v7, 0x7fffffff

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lrx/Observable;->window(JJLjava/util/concurrent/TimeUnit;ILrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final window(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;
    .locals 9
    .param p1, "timespan"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lrx/Observable",
            "<",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 9338
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v7

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v7}, Lrx/Observable;->window(JJLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final window(JLjava/util/concurrent/TimeUnit;I)Lrx/Observable;
    .locals 7
    .param p1, "timespan"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "I)",
            "Lrx/Observable",
            "<",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 9369
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    invoke-static {}, Lrx/schedulers/Schedulers;->computation()Lrx/Scheduler;

    move-result-object v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lrx/Observable;->window(JLjava/util/concurrent/TimeUnit;ILrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final window(JLjava/util/concurrent/TimeUnit;ILrx/Scheduler;)Lrx/Observable;
    .locals 9
    .param p1, "timespan"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "count"    # I
    .param p5, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "I",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 9402
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p1

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Lrx/Observable;->window(JJLjava/util/concurrent/TimeUnit;ILrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final window(JLjava/util/concurrent/TimeUnit;Lrx/Scheduler;)Lrx/Observable;
    .locals 7
    .param p1, "timespan"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lrx/Scheduler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lrx/Scheduler;",
            ")",
            "Lrx/Observable",
            "<",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 9431
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    const v5, 0x7fffffff

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lrx/Observable;->window(JLjava/util/concurrent/TimeUnit;ILrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final window(Lrx/Observable;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<TU;>;)",
            "Lrx/Observable",
            "<",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 9485
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "boundary":Lrx/Observable;, "Lrx/Observable<TU;>;"
    new-instance v0, Lrx/internal/operators/OperatorWindowWithObservable;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorWindowWithObservable;-><init>(Lrx/Observable;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final window(Lrx/Observable;Lrx/functions/Func1;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TOpening:",
            "Ljava/lang/Object;",
            "TClosing:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TTOpening;>;",
            "Lrx/functions/Func1",
            "<-TTOpening;+",
            "Lrx/Observable",
            "<+TTClosing;>;>;)",
            "Lrx/Observable",
            "<",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 9458
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "windowOpenings":Lrx/Observable;, "Lrx/Observable<+TTOpening;>;"
    .local p2, "closingSelector":Lrx/functions/Func1;, "Lrx/functions/Func1<-TTOpening;+Lrx/Observable<+TTClosing;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorWindowWithStartEndObservable;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/OperatorWindowWithStartEndObservable;-><init>(Lrx/Observable;Lrx/functions/Func1;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final window(Lrx/functions/Func0;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TClosing:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func0",
            "<+",
            "Lrx/Observable",
            "<+TTClosing;>;>;)",
            "Lrx/Observable",
            "<",
            "Lrx/Observable",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 9167
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "closingSelector":Lrx/functions/Func0;, "Lrx/functions/Func0<+Lrx/Observable<+TTClosing;>;>;"
    new-instance v0, Lrx/internal/operators/OperatorWindowWithObservableFactory;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorWindowWithObservableFactory;-><init>(Lrx/functions/Func0;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final withLatestFrom(Lrx/Observable;Lrx/functions/Func2;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TU;>;",
            "Lrx/functions/Func2",
            "<-TT;-TU;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .annotation build Lrx/annotations/Experimental;
    .end annotation

    .prologue
    .line 9141
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "other":Lrx/Observable;, "Lrx/Observable<+TU;>;"
    .local p2, "resultSelector":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT;-TU;+TR;>;"
    new-instance v0, Lrx/internal/operators/OperatorWithLatestFrom;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/OperatorWithLatestFrom;-><init>(Lrx/Observable;Lrx/functions/Func2;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final zipWith(Ljava/lang/Iterable;Lrx/functions/Func2;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TT2;>;",
            "Lrx/functions/Func2",
            "<-TT;-TT2;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 9515
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "other":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT2;>;"
    .local p2, "zipFunction":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT;-TT2;+TR;>;"
    new-instance v0, Lrx/internal/operators/OperatorZipIterable;

    invoke-direct {v0, p1, p2}, Lrx/internal/operators/OperatorZipIterable;-><init>(Ljava/lang/Iterable;Lrx/functions/Func2;)V

    invoke-virtual {p0, v0}, Lrx/Observable;->lift(Lrx/Observable$Operator;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method public final zipWith(Lrx/Observable;Lrx/functions/Func2;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable",
            "<+TT2;>;",
            "Lrx/functions/Func2",
            "<-TT;-TT2;+TR;>;)",
            "Lrx/Observable",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 9542
    .local p0, "this":Lrx/Observable;, "Lrx/Observable<TT;>;"
    .local p1, "other":Lrx/Observable;, "Lrx/Observable<+TT2;>;"
    .local p2, "zipFunction":Lrx/functions/Func2;, "Lrx/functions/Func2<-TT;-TT2;+TR;>;"
    invoke-static {p0, p1, p2}, Lrx/Observable;->zip(Lrx/Observable;Lrx/Observable;Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
