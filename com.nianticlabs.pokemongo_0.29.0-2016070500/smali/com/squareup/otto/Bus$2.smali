.class Lcom/squareup/otto/Bus$2;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/otto/Bus;


# direct methods
.method constructor <init>(Lcom/squareup/otto/Bus;)V
    .locals 0
    .param p1, "this$0"    # Lcom/squareup/otto/Bus;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/squareup/otto/Bus$2;->this$0:Lcom/squareup/otto/Bus;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/squareup/otto/Bus$2;->initialValue()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
