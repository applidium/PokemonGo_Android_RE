.class final Lrx/Single$5;
.super Ljava/lang/Object;
.source "Single.java"

# interfaces
.implements Lrx/Single$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/Single;->merge(Lrx/Single;)Lrx/Single;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Single$OnSubscribe",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$source:Lrx/Single;


# direct methods
.method constructor <init>(Lrx/Single;)V
    .locals 0

    .prologue
    .line 656
    iput-object p1, p0, Lrx/Single$5;->val$source:Lrx/Single;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 656
    check-cast p1, Lrx/SingleSubscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/Single$5;->call(Lrx/SingleSubscriber;)V

    return-void
.end method

.method public call(Lrx/SingleSubscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/SingleSubscriber",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 660
    .local p1, "child":Lrx/SingleSubscriber;, "Lrx/SingleSubscriber<-TT;>;"
    iget-object v0, p0, Lrx/Single$5;->val$source:Lrx/Single;

    new-instance v1, Lrx/Single$5$1;

    invoke-direct {v1, p0, p1}, Lrx/Single$5$1;-><init>(Lrx/Single$5;Lrx/SingleSubscriber;)V

    invoke-virtual {v0, v1}, Lrx/Single;->subscribe(Lrx/SingleSubscriber;)Lrx/Subscription;

    .line 673
    return-void
.end method
