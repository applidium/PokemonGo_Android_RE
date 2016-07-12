.class final Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe;
.super Lrx/observables/AbstractOnSubscribe;
.source "AbstractOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/observables/AbstractOnSubscribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LambdaOnSubscribe"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/observables/AbstractOnSubscribe",
        "<TT;TS;>;"
    }
.end annotation


# instance fields
.field final next:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1",
            "<",
            "Lrx/observables/AbstractOnSubscribe$SubscriptionState",
            "<TT;TS;>;>;"
        }
    .end annotation
.end field

.field final onSubscribe:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Subscriber",
            "<-TT;>;+TS;>;"
        }
    .end annotation
.end field

.field final onTerminated:Lrx/functions/Action1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Action1",
            "<-TS;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/functions/Action1;Lrx/functions/Func1;Lrx/functions/Action1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Action1",
            "<",
            "Lrx/observables/AbstractOnSubscribe$SubscriptionState",
            "<TT;TS;>;>;",
            "Lrx/functions/Func1",
            "<-",
            "Lrx/Subscriber",
            "<-TT;>;+TS;>;",
            "Lrx/functions/Action1",
            "<-TS;>;)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe;, "Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe<TT;TS;>;"
    .local p1, "next":Lrx/functions/Action1;, "Lrx/functions/Action1<Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;>;"
    .local p2, "onSubscribe":Lrx/functions/Func1;, "Lrx/functions/Func1<-Lrx/Subscriber<-TT;>;+TS;>;"
    .local p3, "onTerminated":Lrx/functions/Action1;, "Lrx/functions/Action1<-TS;>;"
    invoke-direct {p0}, Lrx/observables/AbstractOnSubscribe;-><init>()V

    .line 281
    iput-object p1, p0, Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe;->next:Lrx/functions/Action1;

    .line 282
    iput-object p2, p0, Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe;->onSubscribe:Lrx/functions/Func1;

    .line 283
    iput-object p3, p0, Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe;->onTerminated:Lrx/functions/Action1;

    .line 284
    return-void
.end method

.method synthetic constructor <init>(Lrx/functions/Action1;Lrx/functions/Func1;Lrx/functions/Action1;Lrx/observables/AbstractOnSubscribe$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/functions/Action1;
    .param p2, "x1"    # Lrx/functions/Func1;
    .param p3, "x2"    # Lrx/functions/Action1;
    .param p4, "x3"    # Lrx/observables/AbstractOnSubscribe$1;

    .prologue
    .line 275
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe;, "Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe<TT;TS;>;"
    invoke-direct {p0, p1, p2, p3}, Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe;-><init>(Lrx/functions/Action1;Lrx/functions/Func1;Lrx/functions/Action1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 275
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe;, "Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe<TT;TS;>;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-super {p0, p1}, Lrx/observables/AbstractOnSubscribe;->call(Lrx/Subscriber;)V

    return-void
.end method

.method protected next(Lrx/observables/AbstractOnSubscribe$SubscriptionState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/observables/AbstractOnSubscribe$SubscriptionState",
            "<TT;TS;>;)V"
        }
    .end annotation

    .prologue
    .line 295
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe;, "Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe<TT;TS;>;"
    .local p1, "state":Lrx/observables/AbstractOnSubscribe$SubscriptionState;, "Lrx/observables/AbstractOnSubscribe$SubscriptionState<TT;TS;>;"
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe;->next:Lrx/functions/Action1;

    invoke-interface {v0, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 296
    return-void
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
    .line 287
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe;, "Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe<TT;TS;>;"
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe;->onSubscribe:Lrx/functions/Func1;

    invoke-interface {v0, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onTerminated(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 291
    .local p0, "this":Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe;, "Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe<TT;TS;>;"
    .local p1, "state":Ljava/lang/Object;, "TS;"
    iget-object v0, p0, Lrx/observables/AbstractOnSubscribe$LambdaOnSubscribe;->onTerminated:Lrx/functions/Action1;

    invoke-interface {v0, p1}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    .line 292
    return-void
.end method
