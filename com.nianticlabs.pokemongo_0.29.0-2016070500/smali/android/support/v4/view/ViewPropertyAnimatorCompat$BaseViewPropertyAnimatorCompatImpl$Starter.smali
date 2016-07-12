.class Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl$Starter;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Starter"
.end annotation


# instance fields
.field mViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field final synthetic this$0:Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;


# direct methods
.method private constructor <init>(Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .locals 1
    .param p2, "vpa"    # Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 320
    iput-object p1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl$Starter;->this$0:Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl$Starter;->mViewRef:Ljava/lang/ref/WeakReference;

    .line 322
    iput-object p2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl$Starter;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 323
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Landroid/support/v4/view/ViewPropertyAnimatorCompat$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;
    .param p2, "x1"    # Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .param p3, "x2"    # Landroid/view/View;
    .param p4, "x3"    # Landroid/support/v4/view/ViewPropertyAnimatorCompat$1;

    .prologue
    .line 316
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl$Starter;-><init>(Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 327
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl$Starter;->mViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 328
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 329
    iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl$Starter;->this$0:Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;

    iget-object v2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl$Starter;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    # invokes: Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->startAnimation(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    invoke-static {v1, v2, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->access$200(Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    .line 331
    :cond_0
    return-void
.end method
