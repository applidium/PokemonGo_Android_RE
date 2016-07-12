.class public Lcom/squareup/otto/DeadEvent;
.super Ljava/lang/Object;
.source "DeadEvent.java"


# instance fields
.field public final event:Ljava/lang/Object;

.field public final source:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "event"    # Ljava/lang/Object;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/squareup/otto/DeadEvent;->source:Ljava/lang/Object;

    .line 40
    iput-object p2, p0, Lcom/squareup/otto/DeadEvent;->event:Ljava/lang/Object;

    .line 41
    return-void
.end method
