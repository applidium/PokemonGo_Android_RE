.class final Lcom/unity3d/player/t;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/unity3d/player/t;


# instance fields
.field private final b:Landroid/view/ViewGroup;

.field private c:Ljava/util/Set;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/unity3d/player/t;->c:Ljava/util/Set;

    iput-object p1, p0, Lcom/unity3d/player/t;->b:Landroid/view/ViewGroup;

    sput-object p0, Lcom/unity3d/player/t;->a:Lcom/unity3d/player/t;

    return-void
.end method

.method private e(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/t;->b:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/unity3d/player/t;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private f(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/t;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/unity3d/player/t;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/t;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/t;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unity3d/player/t;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/unity3d/player/t;->e(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/t;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/unity3d/player/t;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/unity3d/player/t;->f(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/t;->d:Landroid/view/View;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/unity3d/player/t;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/unity3d/player/t;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/unity3d/player/t;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/unity3d/player/t;->e(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/t;->e:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/player/t;->e:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final d(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/t;->d:Landroid/view/View;

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/unity3d/player/t;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/unity3d/player/t;->f(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/t;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/t;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/unity3d/player/t;->e:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/player/t;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
