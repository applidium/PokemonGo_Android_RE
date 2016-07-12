.class Landroid/support/v4/view/KeyEventCompat$EclairKeyEventVersionImpl;
.super Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;
.source "KeyEventCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/KeyEventCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EclairKeyEventVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Landroid/support/v4/view/KeyEventCompat$BaseKeyEventVersionImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(Landroid/view/KeyEvent;Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "receiver"    # Landroid/view/KeyEvent$Callback;
    .param p3, "state"    # Ljava/lang/Object;
    .param p4, "target"    # Ljava/lang/Object;

    .prologue
    .line 137
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/view/KeyEventCompatEclair;->dispatch(Landroid/view/KeyEvent;Landroid/view/KeyEvent$Callback;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getKeyDispatcherState(Landroid/view/View;)Ljava/lang/Object;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 131
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompatEclair;->getKeyDispatcherState(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isTracking(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 126
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompatEclair;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public startTracking(Landroid/view/KeyEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 121
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompatEclair;->startTracking(Landroid/view/KeyEvent;)V

    .line 122
    return-void
.end method
