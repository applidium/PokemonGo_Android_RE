.class public abstract Lspacemadness/com/lunarconsole/ui/GestureRecognizer;
.super Ljava/lang/Object;
.source "GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lspacemadness/com/lunarconsole/ui/GestureRecognizer$OnGestureListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lspacemadness/com/lunarconsole/ui/GestureRecognizer;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private listener:Lspacemadness/com/lunarconsole/ui/GestureRecognizer$OnGestureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lspacemadness/com/lunarconsole/ui/GestureRecognizer$OnGestureListener",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    .local p0, "this":Lspacemadness/com/lunarconsole/ui/GestureRecognizer;, "Lspacemadness/com/lunarconsole/ui/GestureRecognizer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method


# virtual methods
.method public getListener()Lspacemadness/com/lunarconsole/ui/GestureRecognizer$OnGestureListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lspacemadness/com/lunarconsole/ui/GestureRecognizer$OnGestureListener",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lspacemadness/com/lunarconsole/ui/GestureRecognizer;, "Lspacemadness/com/lunarconsole/ui/GestureRecognizer<TT;>;"
    iget-object v0, p0, Lspacemadness/com/lunarconsole/ui/GestureRecognizer;->listener:Lspacemadness/com/lunarconsole/ui/GestureRecognizer$OnGestureListener;

    return-object v0
.end method

.method protected notifyGestureRecognizer()V
    .locals 3

    .prologue
    .line 36
    .local p0, "this":Lspacemadness/com/lunarconsole/ui/GestureRecognizer;, "Lspacemadness/com/lunarconsole/ui/GestureRecognizer<TT;>;"
    iget-object v1, p0, Lspacemadness/com/lunarconsole/ui/GestureRecognizer;->listener:Lspacemadness/com/lunarconsole/ui/GestureRecognizer$OnGestureListener;

    if-eqz v1, :cond_0

    .line 40
    :try_start_0
    iget-object v1, p0, Lspacemadness/com/lunarconsole/ui/GestureRecognizer;->listener:Lspacemadness/com/lunarconsole/ui/GestureRecognizer$OnGestureListener;

    invoke-interface {v1, p0}, Lspacemadness/com/lunarconsole/ui/GestureRecognizer$OnGestureListener;->onGesture(Lspacemadness/com/lunarconsole/ui/GestureRecognizer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Error while notifying gesture listener"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lspacemadness/com/lunarconsole/debug/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public setListener(Lspacemadness/com/lunarconsole/ui/GestureRecognizer$OnGestureListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lspacemadness/com/lunarconsole/ui/GestureRecognizer$OnGestureListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lspacemadness/com/lunarconsole/ui/GestureRecognizer;, "Lspacemadness/com/lunarconsole/ui/GestureRecognizer<TT;>;"
    .local p1, "listener":Lspacemadness/com/lunarconsole/ui/GestureRecognizer$OnGestureListener;, "Lspacemadness/com/lunarconsole/ui/GestureRecognizer$OnGestureListener<TT;>;"
    iput-object p1, p0, Lspacemadness/com/lunarconsole/ui/GestureRecognizer;->listener:Lspacemadness/com/lunarconsole/ui/GestureRecognizer$OnGestureListener;

    .line 57
    return-void
.end method
