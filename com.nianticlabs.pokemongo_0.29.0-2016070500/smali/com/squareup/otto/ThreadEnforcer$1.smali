.class final Lcom/squareup/otto/ThreadEnforcer$1;
.super Ljava/lang/Object;
.source "ThreadEnforcer.java"

# interfaces
.implements Lcom/squareup/otto/ThreadEnforcer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/otto/ThreadEnforcer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enforce(Lcom/squareup/otto/Bus;)V
    .locals 0
    .param p1, "bus"    # Lcom/squareup/otto/Bus;

    .prologue
    .line 40
    return-void
.end method
