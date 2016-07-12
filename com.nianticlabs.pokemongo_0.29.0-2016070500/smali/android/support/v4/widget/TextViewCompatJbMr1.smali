.class Landroid/support/v4/widget/TextViewCompatJbMr1;
.super Ljava/lang/Object;
.source "TextViewCompatJbMr1.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 30
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 31
    .local v0, "rtl":Z
    :goto_0
    if-eqz v0, :cond_1

    move-object v1, p3

    :goto_1
    if-eqz v0, :cond_2

    .end local p1    # "start":Landroid/graphics/drawable/Drawable;
    :goto_2
    invoke-virtual {p0, v1, p2, p1, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 32
    return-void

    .line 30
    .end local v0    # "rtl":Z
    .restart local p1    # "start":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "rtl":Z
    :cond_1
    move-object v1, p1

    .line 31
    goto :goto_1

    :cond_2
    move-object p1, p3

    goto :goto_2
.end method

.method public static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;IIII)V
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v0, 0x1

    .line 44
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 45
    .local v0, "rtl":Z
    :goto_0
    if-eqz v0, :cond_1

    move v1, p3

    :goto_1
    if-eqz v0, :cond_2

    .end local p1    # "start":I
    :goto_2
    invoke-virtual {p0, v1, p2, p1, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 47
    return-void

    .line 44
    .end local v0    # "rtl":Z
    .restart local p1    # "start":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "rtl":Z
    :cond_1
    move v1, p1

    .line 45
    goto :goto_1

    :cond_2
    move p1, p3

    goto :goto_2
.end method

.method public static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "start"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "end"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 37
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 38
    .local v0, "rtl":Z
    :goto_0
    if-eqz v0, :cond_1

    move-object v1, p3

    :goto_1
    if-eqz v0, :cond_2

    .end local p1    # "start":Landroid/graphics/drawable/Drawable;
    :goto_2
    invoke-virtual {p0, v1, p2, p1, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 40
    return-void

    .line 37
    .end local v0    # "rtl":Z
    .restart local p1    # "start":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "rtl":Z
    :cond_1
    move-object v1, p1

    .line 38
    goto :goto_1

    :cond_2
    move-object p1, p3

    goto :goto_2
.end method
