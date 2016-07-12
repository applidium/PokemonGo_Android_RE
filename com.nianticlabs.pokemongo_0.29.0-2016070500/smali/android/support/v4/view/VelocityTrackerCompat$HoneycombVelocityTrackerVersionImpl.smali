.class Landroid/support/v4/view/VelocityTrackerCompat$HoneycombVelocityTrackerVersionImpl;
.super Ljava/lang/Object;
.source "VelocityTrackerCompat.java"

# interfaces
.implements Landroid/support/v4/view/VelocityTrackerCompat$VelocityTrackerVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/VelocityTrackerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HoneycombVelocityTrackerVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getXVelocity(Landroid/view/VelocityTracker;I)F
    .locals 1
    .param p1, "tracker"    # Landroid/view/VelocityTracker;
    .param p2, "pointerId"    # I

    .prologue
    .line 54
    invoke-static {p1, p2}, Landroid/support/v4/view/VelocityTrackerCompatHoneycomb;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method

.method public getYVelocity(Landroid/view/VelocityTracker;I)F
    .locals 1
    .param p1, "tracker"    # Landroid/view/VelocityTracker;
    .param p2, "pointerId"    # I

    .prologue
    .line 58
    invoke-static {p1, p2}, Landroid/support/v4/view/VelocityTrackerCompatHoneycomb;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    return v0
.end method
