.class Landroid/support/v4/view/MotionEventCompat$EclairMotionEventVersionImpl;
.super Landroid/support/v4/view/MotionEventCompat$BaseMotionEventVersionImpl;
.source "MotionEventCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/MotionEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EclairMotionEventVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Landroid/support/v4/view/MotionEventCompat$BaseMotionEventVersionImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public findPointerIndex(Landroid/view/MotionEvent;I)I
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerId"    # I

    .prologue
    .line 102
    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompatEclair;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public getPointerCount(Landroid/view/MotionEvent;)I
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 118
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompatEclair;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method

.method public getPointerId(Landroid/view/MotionEvent;I)I
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .prologue
    .line 106
    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompatEclair;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public getX(Landroid/view/MotionEvent;I)F
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .prologue
    .line 110
    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompatEclair;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method

.method public getY(Landroid/view/MotionEvent;I)F
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pointerIndex"    # I

    .prologue
    .line 114
    invoke-static {p1, p2}, Landroid/support/v4/view/MotionEventCompatEclair;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method
