.class final Lrx/subjects/ReplaySubject$NodeList;
.super Ljava/lang/Object;
.source "ReplaySubject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/ReplaySubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NodeList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/subjects/ReplaySubject$NodeList$Node;
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


# instance fields
.field final head:Lrx/subjects/ReplaySubject$NodeList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject$NodeList$Node",
            "<TT;>;"
        }
    .end annotation
.end field

.field size:I

.field tail:Lrx/subjects/ReplaySubject$NodeList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject$NodeList$Node",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 1033
    .local p0, "this":Lrx/subjects/ReplaySubject$NodeList;, "Lrx/subjects/ReplaySubject$NodeList<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1048
    new-instance v0, Lrx/subjects/ReplaySubject$NodeList$Node;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/subjects/ReplaySubject$NodeList$Node;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/subjects/ReplaySubject$NodeList;->head:Lrx/subjects/ReplaySubject$NodeList$Node;

    .line 1050
    iget-object v0, p0, Lrx/subjects/ReplaySubject$NodeList;->head:Lrx/subjects/ReplaySubject$NodeList$Node;

    iput-object v0, p0, Lrx/subjects/ReplaySubject$NodeList;->tail:Lrx/subjects/ReplaySubject$NodeList$Node;

    return-void
.end method


# virtual methods
.method public addLast(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1055
    .local p0, "this":Lrx/subjects/ReplaySubject$NodeList;, "Lrx/subjects/ReplaySubject$NodeList<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject$NodeList;->tail:Lrx/subjects/ReplaySubject$NodeList$Node;

    .line 1056
    .local v0, "t":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<TT;>;"
    new-instance v1, Lrx/subjects/ReplaySubject$NodeList$Node;

    invoke-direct {v1, p1}, Lrx/subjects/ReplaySubject$NodeList$Node;-><init>(Ljava/lang/Object;)V

    .line 1057
    .local v1, "t2":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<TT;>;"
    iput-object v1, v0, Lrx/subjects/ReplaySubject$NodeList$Node;->next:Lrx/subjects/ReplaySubject$NodeList$Node;

    .line 1058
    iput-object v1, p0, Lrx/subjects/ReplaySubject$NodeList;->tail:Lrx/subjects/ReplaySubject$NodeList$Node;

    .line 1059
    iget v2, p0, Lrx/subjects/ReplaySubject$NodeList;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lrx/subjects/ReplaySubject$NodeList;->size:I

    .line 1060
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 1080
    .local p0, "this":Lrx/subjects/ReplaySubject$NodeList;, "Lrx/subjects/ReplaySubject$NodeList<TT;>;"
    iget-object v0, p0, Lrx/subjects/ReplaySubject$NodeList;->head:Lrx/subjects/ReplaySubject$NodeList$Node;

    iput-object v0, p0, Lrx/subjects/ReplaySubject$NodeList;->tail:Lrx/subjects/ReplaySubject$NodeList$Node;

    .line 1081
    const/4 v0, 0x0

    iput v0, p0, Lrx/subjects/ReplaySubject$NodeList;->size:I

    .line 1082
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1074
    .local p0, "this":Lrx/subjects/ReplaySubject$NodeList;, "Lrx/subjects/ReplaySubject$NodeList<TT;>;"
    iget v0, p0, Lrx/subjects/ReplaySubject$NodeList;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1062
    .local p0, "this":Lrx/subjects/ReplaySubject$NodeList;, "Lrx/subjects/ReplaySubject$NodeList<TT;>;"
    iget-object v1, p0, Lrx/subjects/ReplaySubject$NodeList;->head:Lrx/subjects/ReplaySubject$NodeList$Node;

    iget-object v1, v1, Lrx/subjects/ReplaySubject$NodeList$Node;->next:Lrx/subjects/ReplaySubject$NodeList$Node;

    if-nez v1, :cond_0

    .line 1063
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Empty!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1065
    :cond_0
    iget-object v1, p0, Lrx/subjects/ReplaySubject$NodeList;->head:Lrx/subjects/ReplaySubject$NodeList$Node;

    iget-object v0, v1, Lrx/subjects/ReplaySubject$NodeList$Node;->next:Lrx/subjects/ReplaySubject$NodeList$Node;

    .line 1066
    .local v0, "t":Lrx/subjects/ReplaySubject$NodeList$Node;, "Lrx/subjects/ReplaySubject$NodeList$Node<TT;>;"
    iget-object v1, p0, Lrx/subjects/ReplaySubject$NodeList;->head:Lrx/subjects/ReplaySubject$NodeList$Node;

    iget-object v2, v0, Lrx/subjects/ReplaySubject$NodeList$Node;->next:Lrx/subjects/ReplaySubject$NodeList$Node;

    iput-object v2, v1, Lrx/subjects/ReplaySubject$NodeList$Node;->next:Lrx/subjects/ReplaySubject$NodeList$Node;

    .line 1067
    iget-object v1, p0, Lrx/subjects/ReplaySubject$NodeList;->head:Lrx/subjects/ReplaySubject$NodeList$Node;

    iget-object v1, v1, Lrx/subjects/ReplaySubject$NodeList$Node;->next:Lrx/subjects/ReplaySubject$NodeList$Node;

    if-nez v1, :cond_1

    .line 1068
    iget-object v1, p0, Lrx/subjects/ReplaySubject$NodeList;->head:Lrx/subjects/ReplaySubject$NodeList$Node;

    iput-object v1, p0, Lrx/subjects/ReplaySubject$NodeList;->tail:Lrx/subjects/ReplaySubject$NodeList$Node;

    .line 1070
    :cond_1
    iget v1, p0, Lrx/subjects/ReplaySubject$NodeList;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lrx/subjects/ReplaySubject$NodeList;->size:I

    .line 1071
    iget-object v1, v0, Lrx/subjects/ReplaySubject$NodeList$Node;->value:Ljava/lang/Object;

    return-object v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1077
    .local p0, "this":Lrx/subjects/ReplaySubject$NodeList;, "Lrx/subjects/ReplaySubject$NodeList<TT;>;"
    iget v0, p0, Lrx/subjects/ReplaySubject$NodeList;->size:I

    return v0
.end method
