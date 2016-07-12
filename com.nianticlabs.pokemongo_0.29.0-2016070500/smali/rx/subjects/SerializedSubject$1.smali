.class Lrx/subjects/SerializedSubject$1;
.super Ljava/lang/Object;
.source "SerializedSubject.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/subjects/SerializedSubject;-><init>(Lrx/subjects/Subject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic val$actual:Lrx/subjects/Subject;


# direct methods
.method constructor <init>(Lrx/subjects/Subject;)V
    .locals 0

    .prologue
    .line 41
    .local p0, "this":Lrx/subjects/SerializedSubject$1;, "Lrx/subjects/SerializedSubject.1;"
    iput-object p1, p0, Lrx/subjects/SerializedSubject$1;->val$actual:Lrx/subjects/Subject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 41
    .local p0, "this":Lrx/subjects/SerializedSubject$1;, "Lrx/subjects/SerializedSubject.1;"
    check-cast p1, Lrx/Subscriber;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/subjects/SerializedSubject$1;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lrx/subjects/SerializedSubject$1;, "Lrx/subjects/SerializedSubject.1;"
    .local p1, "child":Lrx/Subscriber;, "Lrx/Subscriber<-TR;>;"
    iget-object v0, p0, Lrx/subjects/SerializedSubject$1;->val$actual:Lrx/subjects/Subject;

    invoke-virtual {v0, p1}, Lrx/subjects/Subject;->unsafeSubscribe(Lrx/Subscriber;)Lrx/Subscription;

    .line 46
    return-void
.end method
