.class public abstract Lrx/observables/AbstractOnSubscribe;
.super Ljava/lang/Object;
.source "AbstractOnSubscribe.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/observables/AbstractOnSubscribe$SubscriptionState;,
        Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;,
        Lrx/observables/AbstractOnSubscribe$SubscriptionCompleter;,
        Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TT;>;"
    }
.end annotation

.annotation build Lrx/annotations/Experimental;
.end annotation


# static fields
.field private static final NULL_FUNC1:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 205
    new-instance v0, Lrx/observables/AbstractOnSubscribe$1;

    invoke-direct {v0}, Lrx/observables/AbstractOnSubscribe$1;-><init>()V

    sput-object v0, Lrx/observables/AbstractOnSubscribe;->NULL_FUNC1:Lrx/functions/Func1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 154
    .local p0, "this":Lrx/observables/AbstractOnSubscribe;, "Lrx/observables/AbstractOnSubscribe<TT;TS;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 396
    return-void
.end method

.method public static create(Lrx/functions/Action1;)Lrx/observables/AbstractOnSubscribe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action1",
            "<",
            "Lrx/observables/AbstractOnSubscribe$SubscriptionState",
            "<TT;TS;>;>;)",
            "Lrx/observables/AbstractOnSubscribe",
            "<TT;TS;>;"
        }
    .end annotation

    .prologue
    .line 225
    .local p0, "next":Lrx/functions/Action1;, "Lrx/functions/Action1<Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;>;"
    sget-object v0, Lrx/observables/AbstractOnSubscribe;->NULL_FUNC1:Lrx/functions/Func1;

    .line 227
    .local v0, "nullFunc":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Subscriber<-TT;>;+TS;>;"
    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lrx/observables/AbstractOnSubscribe;->create(Lrx/functions/Action1;Lrx/functions/Func1;Lrx/functions/Action1;)Lrx/observables/AbstractOnSubscribe;

    move-result-object v1

    return-object v1
.end method

.method public static create(Lrx/functions/Action1;Lrx/functions/Func1;)Lrx/observables/AbstractOnSubscribe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action1",
            "<",
            "Lrx/observables/AbstractOnSubscribe$SubscriptionState",
            "<TT;TS;>;>;",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Subscriber",
            "<-TT;>;+TS;>;)",
            "Lrx/observables/AbstractOnSubscribe",
            "<TT;TS;>;"
        }
    .end annotation

    .prologue
    .line 245
    .local p0, "next":Lrx/functions/Action1;, "Lrx/functions/Action1<Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;>;"
    .local p1, "onSubscribe":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Subscriber<-TT;>;+TS;>;"
    invoke-static {}, Lrx/functions/Actions;->empty()Lrx/functions/Actions$EmptyAction;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lrx/observables/AbstractOnSubscribe;->create(Lrx/functions/Action1;Lrx/functions/Func1;Lrx/functions/Action1;)Lrx/observables/AbstractOnSubscribe;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lrx/functions/Action1;Lrx/functions/Func1;Lrx/functions/Action1;)Lrx/observables/AbstractOnSubscribe;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Action1",
            "<",
            "Lrx/observables/AbstractOnSubscribe$SubscriptionState",
            "<TT;TS;>;>;",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Subscriber",
            "<-TT;>;+TS;>;",
            "Lrx/functions/Action1",
            "<-TS;>;)",
            "Lrx/observables/AbstractOnSubscribe",
            "<TT;TS;>;"
        }
    .end annotation

    .prologue
    .line 265
    .local p0, "next":Lrx/functions/Action1;, "Lrx/functions/Action1<Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;>;"
    .local p1, "onSubscribe":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Subscriber<-TT;>;+TS;>;"
    .local p2, "onTerminated":Lrx/functions/Action1;, "Lrx/functions/Action1<-TS;>;"
    new-instance v0, Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe;-><init>(Lrx/functions/Action1;Lrx/functions/Func1;Lrx/functions/Action1;Lrx/observables/AbstractOnSubscribe$1;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 153
    .local p0, "this":Lrx/observables/AbstractOnSubscribe;, "Lrx/observables/AbstractOnSubscribe<TT;TS;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/observables/AbstractOnSubscribe;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public final call(Lrx/Subscriber;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/observables/AbstractOnSubscribe;, "Lrx/observables/AbstractOnSubscribe<TT;TS;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    const/4 v3, 0x0

    .line 189
    invoke-virtual {p0, p1}, Lrx/observables/AbstractOnSubscribe;->onSubscribe(Lrx/Subscriber;)Ljava/lang/Object;

    move-result-object v0

    .line 190
    .local v0, "custom":Ljava/lang/Object;, "TS;"
    new-instance v1, Lrx/observables/AbstractOnSubscribe$SubscriptionState;

    invoke-direct {v1, p0, p1, v0, v3}, Lrx/observables/AbstractOnSubscribe$SubscriptionState;-><init>(Lrx/observables/AbstractOnSubscribe;Lrx/Subscriber;Ljava/lang/Object;Lrx/observables/AbstractOnSubscribe$1;)V

    .line 191
    .local v1, "state":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    new-instance v2, Lrx/observables/AbstractOnSubscribe$SubscriptionCompleter;

    invoke-direct {v2, v1, v3}, Lrx/observables/AbstractOnSubscribe$SubscriptionCompleter;-><init>(Lrx/observables/AbstractOnSubscribe$SubscriptionState;Lrx/observables/AbstractOnSubscribe$1;)V

    invoke-virtual {p1, v2}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 192
    new-instance v2, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;

    invoke-direct {v2, v1, v3}, Lrx/observables/AbstractOnSubscribe$SubscriptionProducer;-><init>(Lrx/observables/AbstractOnSubscribe$SubscriptionState;Lrx/observables/AbstractOnSubscribe$1;)V

    invoke-virtual {p1, v2}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    .line 193
    return-void
.end method

.method protected abstract next(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/observables/AbstractOnSubscribe$SubscriptionState",
            "<TT;TS;>;)V"
        }
    .end annotation
.end method

.method protected onSubscribe(Lrx/Subscriber;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TT;>;)TS;"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "this":Lrx/observables/AbstractOnSubscribe;, "Lrx/observables/AbstractOnSubscribe<TT;TS;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onTerminated(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Lrx/observables/AbstractOnSubscribe;, "Lrx/observables/AbstractOnSubscribe<TT;TS;>;"
    .local p1, "state":Ljava/lang/Object;, "TS;"
    return-void
.end method

.method public final toObservable()Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "this":Lrx/observables/AbstractOnSubscribe;, "Lrx/observables/AbstractOnSubscribe<TT;TS;>;"
    invoke-static {p0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
