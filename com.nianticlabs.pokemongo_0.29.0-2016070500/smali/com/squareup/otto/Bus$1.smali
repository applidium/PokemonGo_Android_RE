.class Lcom/squareup/otto/Bus$1;
.super Ljava/lang/ThreadLocal;
.source "Bus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/otto/Bus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/util/concurrent/ConcurrentLinkedQueue",
        "<",
        "Lcom/squareup/otto/Bus$EventWithHandler;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/otto/Bus;


# direct methods
.method constructor <init>(Lcom/squareup/otto/Bus;)V
    .locals 0
    .param p1, "this$0"    # Lcom/squareup/otto/Bus;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/squareup/otto/Bus$1;->this$0:Lcom/squareup/otto/Bus;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/squareup/otto/Bus$1;->initialValue()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/squareup/otto/Bus$EventWithHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    return-object v0
.end method
