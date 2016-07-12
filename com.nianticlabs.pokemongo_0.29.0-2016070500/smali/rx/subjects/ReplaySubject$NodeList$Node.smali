.class final Lrx/subjects/ReplaySubject$NodeList$Node;
.super Ljava/lang/Object;
.source "ReplaySubject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/ReplaySubject$NodeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field volatile next:Lrx/subjects/ReplaySubject$NodeList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject$NodeList$Node",
            "<TT;>;"
        }
    .end annotation
.end field

.field final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1043
    .local p0, "this":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1044
    iput-object p1, p0, Lrx/subjects/ReplaySubject$NodeList$Node;->value:Ljava/lang/Object;

    .line 1045
    return-void
.end method
