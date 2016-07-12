.class Landroid/support/v4/view/WindowInsetsCompatApi21;
.super Landroid/support/v4/view/WindowInsetsCompat;
.source "WindowInsetsCompatApi21.java"


# instance fields
.field private final mSource:Landroid/view/WindowInsets;


# direct methods
.method constructor <init>(Landroid/view/WindowInsets;)V
    .locals 0
    .param p1, "source"    # Landroid/view/WindowInsets;

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v4/view/WindowInsetsCompat;-><init>()V

    .line 27
    iput-object p1, p0, Landroid/support/v4/view/WindowInsetsCompatApi21;->mSource:Landroid/view/WindowInsets;

    .line 28
    return-void
.end method


# virtual methods
.method public consumeStableInsets()Landroid/support/v4/view/WindowInsetsCompat;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Landroid/support/v4/view/WindowInsetsCompatApi21;

    iget-object v1, p0, Landroid/support/v4/view/WindowInsetsCompatApi21;->mSource:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/WindowInsetsCompatApi21;-><init>(Landroid/view/WindowInsets;)V

    return-object v0
.end method

.method public consumeSystemWindowInsets()Landroid/support/v4/view/WindowInsetsCompat;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Landroid/support/v4/view/WindowInsetsCompatApi21;

    iget-object v1, p0, Landroid/support/v4/view/WindowInsetsCompatApi21;->mSource:Landroid/view/WindowInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/WindowInsetsCompatApi21;-><init>(Landroid/view/WindowInsets;)V

    return-object v0
.end method

.method public getStableInsetBottom()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Landroid/support/v4/view/WindowInsetsCompatApi21;->mSource:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    return v0
.end method

.method public getStableInsetLeft()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Landroid/support/v4/view/WindowInsetsCompatApi21;->mSource:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v0

    return v0
.end method

.method public getStableInsetRight()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Landroid/support/v4/view/WindowInsetsCompatApi21;->mSource:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v0

    return v0
.end method

.method public getStableInsetTop()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/v4/view/WindowInsetsCompatApi21;->mSource:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v0

    return v0
.end method

.method public getSystemWindowInsetBottom()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Landroid/support/v4/view/WindowInsetsCompatApi21;->mSource:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    return v0
.end method

.method public getSystemWindowInsetLeft()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Landroid/support/v4/view/WindowInsetsCompatApi21;->mSource:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    return v0
.end method

.method public getSystemWindowInsetRight()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Landroid/support/v4/view/WindowInsetsCompatApi21;->mSource:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v0

    return v0
.end method

.method public getSystemWindowInsetTop()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Landroid/support/v4/view/WindowInsetsCompatApi21;->mSource:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    return v0
.end method

.method public hasInsets()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v4/view/WindowInsetsCompatApi21;->mSource:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->hasInsets()Z

    move-result v0

    return v0
.end method

.method public hasStableInsets()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Landroid/support/v4/view/WindowInsetsCompatApi21;->mSource:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->hasStableInsets()Z

    move-result v0

    return v0
.end method

.method public hasSystemWindowInsets()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Landroid/support/v4/view/WindowInsetsCompatApi21;->mSource:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->hasSystemWindowInsets()Z

    move-result v0

    return v0
.end method

.method public isConsumed()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Landroid/support/v4/view/WindowInsetsCompatApi21;->mSource:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result v0

    return v0
.end method

.method public isRound()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Landroid/support/v4/view/WindowInsetsCompatApi21;->mSource:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    return v0
.end method

.method public replaceSystemWindowInsets(IIII)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 77
    new-instance v0, Landroid/support/v4/view/WindowInsetsCompatApi21;

    iget-object v1, p0, Landroid/support/v4/view/WindowInsetsCompatApi21;->mSource:Landroid/view/WindowInsets;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/WindowInsetsCompatApi21;-><init>(Landroid/view/WindowInsets;)V

    return-object v0
.end method

.method public replaceSystemWindowInsets(Landroid/graphics/Rect;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 2
    .param p1, "systemWindowInsets"    # Landroid/graphics/Rect;

    .prologue
    .line 82
    new-instance v0, Landroid/support/v4/view/WindowInsetsCompatApi21;

    iget-object v1, p0, Landroid/support/v4/view/WindowInsetsCompatApi21;->mSource:Landroid/view/WindowInsets;

    invoke-virtual {v1, p1}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/WindowInsetsCompatApi21;-><init>(Landroid/view/WindowInsets;)V

    return-object v0
.end method

.method unwrap()Landroid/view/WindowInsets;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Landroid/support/v4/view/WindowInsetsCompatApi21;->mSource:Landroid/view/WindowInsets;

    return-object v0
.end method
