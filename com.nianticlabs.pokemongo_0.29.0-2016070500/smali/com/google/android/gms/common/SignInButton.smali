.class public final Lcom/google/android/gms/common/SignInButton;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final COLOR_DARK:I = 0x0

.field public static final COLOR_LIGHT:I = 0x1

.field public static final SIZE_ICON_ONLY:I = 0x2

.field public static final SIZE_STANDARD:I = 0x0

.field public static final SIZE_WIDE:I = 0x1


# instance fields
.field private mColor:I

.field private mSize:I

.field private zzaat:Landroid/view/View;

.field private zzaau:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/SignInButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/SignInButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/SignInButton;->zzaau:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v1, v1}, Lcom/google/android/gms/common/SignInButton;->setStyle(II)V

    return-void
.end method

.method private static zza(Landroid/content/Context;II)Landroid/widget/Button;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/internal/zzab;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/zzab;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/common/internal/zzab;->zza(Landroid/content/res/Resources;II)V

    return-object v0
.end method

.method private zzai(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->zzaat:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->zzaat:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/SignInButton;->removeView(Landroid/view/View;)V

    :cond_0
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->mSize:I

    iget v1, p0, Lcom/google/android/gms/common/SignInButton;->mColor:I

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->zzb(Landroid/content/Context;II)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/SignInButton;->zzaat:Landroid/view/View;
    :try_end_0
    .catch Lcom/google/android/gms/dynamic/zzg$zza; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->zzaat:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/SignInButton;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->zzaat:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/gms/common/SignInButton;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->zzaat:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :catch_0
    move-exception v0

    const-string v0, "SignInButton"

    const-string v1, "Sign in button not found, using placeholder instead"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->mSize:I

    iget v1, p0, Lcom/google/android/gms/common/SignInButton;->mColor:I

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/SignInButton;->zza(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/SignInButton;->zzaat:Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->zzaau:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->zzaat:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->zzaau:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setColorScheme(I)V
    .locals 1
    .param p1, "colorScheme"    # I

    .prologue
    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->mSize:I

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/common/SignInButton;->setStyle(II)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->zzaat:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/common/SignInButton;->zzaau:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->zzaat:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/SignInButton;->zzaat:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setSize(I)V
    .locals 1
    .param p1, "buttonSize"    # I

    .prologue
    iget v0, p0, Lcom/google/android/gms/common/SignInButton;->mColor:I

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/SignInButton;->setStyle(II)V

    return-void
.end method

.method public setStyle(II)V
    .locals 6
    .param p1, "buttonSize"    # I
    .param p2, "colorScheme"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Unknown button size %d"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-ltz p2, :cond_1

    const/4 v0, 0x2

    if-ge p2, v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "Unknown color scheme %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/common/SignInButton;->mSize:I

    iput p2, p0, Lcom/google/android/gms/common/SignInButton;->mColor:I

    invoke-virtual {p0}, Lcom/google/android/gms/common/SignInButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/SignInButton;->zzai(Landroid/content/Context;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method
