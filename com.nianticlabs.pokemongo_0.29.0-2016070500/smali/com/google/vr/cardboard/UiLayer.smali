.class public Lcom/google/vr/cardboard/UiLayer;
.super Ljava/lang/Object;
.source "UiLayer.java"


# static fields
.field private static final ALIGNMENT_MARKER_LINE_COLOR:I = -0xcdcdce

.field private static final ALIGNMENT_MARKER_LINE_WIDTH:I = 0x4

.field private static final ICON_WIDTH_DP:I = 0x1c

.field private static final TAG:Ljava/lang/String;

.field private static final TOUCH_SLOP_FACTOR:F = 1.5f


# instance fields
.field private alignmentMarker:Landroid/view/View;

.field private backButton:Landroid/widget/ImageView;

.field private volatile backButtonRunnable:Ljava/lang/Runnable;

.field private final backIconDrawable:Landroid/graphics/drawable/Drawable;

.field private final context:Landroid/content/Context;

.field private volatile isAlignmentMarkerEnabled:Z

.field private volatile isSettingsButtonEnabled:Z

.field private final metrics:Landroid/util/DisplayMetrics;

.field private final rootLayout:Landroid/widget/RelativeLayout;

.field private settingsButton:Landroid/widget/ImageView;

.field private final settingsIconDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/google/vr/cardboard/UiLayer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/vr/cardboard/UiLayer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/vr/cardboard/UiLayer;->isSettingsButtonEnabled:Z

    .line 57
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/vr/cardboard/UiLayer;->isAlignmentMarkerEnabled:Z

    .line 61
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/vr/cardboard/UiLayer;->backButtonRunnable:Ljava/lang/Runnable;

    .line 73
    instance-of v2, p1, Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 74
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Context is not an instance of activity: Aborting."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_0
    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->context:Landroid/content/Context;

    .line 77
    const-string v2, "iVBORw0KGgoAAAANSUhEUgAAAEgAAABICAQAAAD/5HvMAAADEklEQVRoBe3BXWjVZQDH8d/0HKW00OZ0kh6XiKUiIl0okhARdBcEjUQSmViYkF14K+TCnTNDEd9ShMGgFGZC9HaZqElo0aZDkhAkt2b5np7j8e3P+XazwWE8/+floA9enM9Hqqure0oxn0HSDPCyYqMDm82KjcPYHFRs9GHzq2KjiM1NxUUzLo2KieW4LFVMrMFllWIij0u7Hi/GcIRr7GexRmE8H/E3LgOsY7xG4VUOcJVDNCgUaxnxG2uZoGGsYABfl3hPw5jIh/zOiNUKw/NcodptvmARzfxIqO+ZymL2c4dql5moEGzDpEwtypgU5I+5PORJu89s+eIHYvhGfniLWN6QGxn+IJZ+xsqFT4hpveyYwi1ius5k2bCPUBV66SJPni76qBBql9LxIgkhinQwU1XIUaBEiEc0KQ1TKePvKDNkQI7j+CsxSelYxhB+DpFRCrL04GeQJbJjGsdwO0pGFmQ5gdtPNMmNDNuwKzJDDuQoYdfJWPniXYqk65AHOkl3m3cUhnmcx6zCTHlgFhXMzjFX4ViJWa88cRazVtWCjZh1yRPdmG1QLfgMs7w8UcBsk2pBO2Z5eaKA2SbVgo2YdckT3ZhtUC1YiVmfPNGPWavCsYA/MauQkwdaqGB2nnkKwwpKpCvIA1tJV6RVvsiyE7sSOTnQQhm77WTkxnR+xu04WVkwjpO4HWOa7FjOP/jpIasUjONr/AyxTOlo4h7+TpCTAS2cxN9dJisN00kIUaKTWapCC1spE+IhU5SOPYSqcJZuChTopp8KoXbIhhe4QUzXmCQ7PiamdXIhwzliOcMYufEmsbwuP3xLDEfkizk84Em7x0vyx+eYlKhFEZMOheA5/qXaLXaygCa+I9RhGlnIbv6j2hATFIY1jPiF1TyjYbRyEV8XeFvDeJY2TjFilULRwEEG2c1CjUKWDxjA5S/ayGgUFrGXy3xJgx4v8ri0KybacHlfMfEaLksUE824NCou7mBzU7HRi81pxUYPNl8pNrZg86li4xUukpCQkJCQkJCQkJDwiAvMUV1d3VPqfz17MXquI1uXAAAAAElFTkSuQmCC"

    invoke-direct {p0, v2}, Lcom/google/vr/cardboard/UiLayer;->decodeBitmapFromString(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/vr/cardboard/UiLayer;->settingsIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 78
    const-string v2, "iVBORw0KGgoAAAANSUhEUgAAAGAAAABgCAQAAABIkb+zAAAArklEQVR42u3VyRHCMBBFwQkAcoQ8WJQbEJewby4XRxkzQ3cE/1VpiQAAANhEb73lnj9ruednTVjMz5iwmp8t4cP82Tn3/Ec/mG+++eabb7755ptvvvnmm2+++eYPmv8FyecPCdhz/oCAfecLKHCEClziAs9ogY9MggQJ/5DwlCBBQp2EowQJEmokvCRIkCDhZxJOEZkTLpHLKuEa+SwSMs5fJNwirynhHgAAAJt4A/ZvpX5veSF2AAAAAElFTkSuQmCC"

    invoke-direct {p0, v2}, Lcom/google/vr/cardboard/UiLayer;->decodeBitmapFromString(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/vr/cardboard/UiLayer;->backIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 80
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 81
    .local v1, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 82
    .local v0, "display":Landroid/view/Display;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v2, p0, Lcom/google/vr/cardboard/UiLayer;->metrics:Landroid/util/DisplayMetrics;

    .line 84
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    .line 85
    iget-object v2, p0, Lcom/google/vr/cardboard/UiLayer;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 90
    :goto_0
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/vr/cardboard/UiLayer;->rootLayout:Landroid/widget/RelativeLayout;

    .line 91
    invoke-direct {p0}, Lcom/google/vr/cardboard/UiLayer;->initializeViews()V

    .line 92
    return-void

    .line 87
    :cond_1
    iget-object v2, p0, Lcom/google/vr/cardboard/UiLayer;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/vr/cardboard/UiLayer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/cardboard/UiLayer;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->backButtonRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/vr/cardboard/UiLayer;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/cardboard/UiLayer;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->rootLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/vr/cardboard/UiLayer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/cardboard/UiLayer;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/vr/cardboard/UiLayer;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/cardboard/UiLayer;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->settingsButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/vr/cardboard/UiLayer;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/cardboard/UiLayer;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->backButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/vr/cardboard/UiLayer;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/google/vr/cardboard/UiLayer;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->alignmentMarker:Landroid/view/View;

    return-object v0
.end method

.method private varargs createButton(Landroid/graphics/drawable/Drawable;Z[I)Landroid/widget/ImageView;
    .locals 11
    .param p1, "iconDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isEnabled"    # Z
    .param p3, "layoutParams"    # [I

    .prologue
    .line 143
    const/high16 v9, 0x41e00000    # 28.0f

    iget-object v10, p0, Lcom/google/vr/cardboard/UiLayer;->metrics:Landroid/util/DisplayMetrics;

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v9, v10

    float-to-int v4, v9

    .line 144
    .local v4, "iconWidthPx":I
    int-to-float v9, v4

    const/high16 v10, 0x3fc00000    # 1.5f

    mul-float/2addr v9, v10

    float-to-int v8, v9

    .line 145
    .local v8, "touchWidthPx":I
    sub-int v9, v8, v4

    div-int/lit8 v7, v9, 0x2

    .line 147
    .local v7, "padding":I
    new-instance v1, Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/google/vr/cardboard/UiLayer;->context:Landroid/content/Context;

    invoke-direct {v1, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 150
    .local v1, "buttonLayout":Landroid/widget/ImageView;
    invoke-virtual {v1, v7, v7, v7, v7}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 151
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 152
    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 153
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 155
    .local v2, "buttonParams":Landroid/widget/RelativeLayout$LayoutParams;
    move-object v0, p3

    .local v0, "arr$":[I
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_0

    aget v5, v0, v3

    .line 156
    .local v5, "layoutParam":I
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 155
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 158
    .end local v5    # "layoutParam":I
    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    if-eqz p2, :cond_1

    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    return-object v1

    .line 160
    :cond_1
    const/4 v9, 0x4

    goto :goto_1
.end method

.method private decodeBitmapFromString(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "bitmapString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 95
    invoke-static {p1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 96
    .local v1, "decodedBytes":[B
    array-length v2, v1

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 98
    .local v0, "buttonBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/google/vr/cardboard/UiLayer;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v2
.end method

.method private initializeViews()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x0

    .line 102
    const/high16 v4, 0x41e00000    # 28.0f

    iget-object v5, p0, Lcom/google/vr/cardboard/UiLayer;->metrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v0, v4

    .line 103
    .local v0, "iconWidthPx":I
    int-to-float v4, v0

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 105
    .local v2, "touchWidthPx":I
    iget-object v4, p0, Lcom/google/vr/cardboard/UiLayer;->settingsIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v5, p0, Lcom/google/vr/cardboard/UiLayer;->isSettingsButtonEnabled:Z

    new-array v6, v7, [I

    fill-array-data v6, :array_0

    invoke-direct {p0, v4, v5, v6}, Lcom/google/vr/cardboard/UiLayer;->createButton(Landroid/graphics/drawable/Drawable;Z[I)Landroid/widget/ImageView;

    move-result-object v4

    iput-object v4, p0, Lcom/google/vr/cardboard/UiLayer;->settingsButton:Landroid/widget/ImageView;

    .line 107
    iget-object v4, p0, Lcom/google/vr/cardboard/UiLayer;->settingsButton:Landroid/widget/ImageView;

    new-instance v5, Lcom/google/vr/cardboard/UiLayer$1;

    invoke-direct {v5, p0}, Lcom/google/vr/cardboard/UiLayer$1;-><init>(Lcom/google/vr/cardboard/UiLayer;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v4, p0, Lcom/google/vr/cardboard/UiLayer;->rootLayout:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/google/vr/cardboard/UiLayer;->settingsButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 115
    iget-object v4, p0, Lcom/google/vr/cardboard/UiLayer;->backIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/vr/cardboard/UiLayer;->getBackButtonEnabled()Z

    move-result v5

    new-array v6, v7, [I

    fill-array-data v6, :array_1

    invoke-direct {p0, v4, v5, v6}, Lcom/google/vr/cardboard/UiLayer;->createButton(Landroid/graphics/drawable/Drawable;Z[I)Landroid/widget/ImageView;

    move-result-object v4

    iput-object v4, p0, Lcom/google/vr/cardboard/UiLayer;->backButton:Landroid/widget/ImageView;

    .line 117
    iget-object v4, p0, Lcom/google/vr/cardboard/UiLayer;->backButton:Landroid/widget/ImageView;

    new-instance v5, Lcom/google/vr/cardboard/UiLayer$2;

    invoke-direct {v5, p0}, Lcom/google/vr/cardboard/UiLayer$2;-><init>(Lcom/google/vr/cardboard/UiLayer;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v4, p0, Lcom/google/vr/cardboard/UiLayer;->rootLayout:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/google/vr/cardboard/UiLayer;->backButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 129
    new-instance v4, Landroid/view/View;

    iget-object v5, p0, Lcom/google/vr/cardboard/UiLayer;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/google/vr/cardboard/UiLayer;->alignmentMarker:Landroid/view/View;

    .line 130
    iget-object v4, p0, Lcom/google/vr/cardboard/UiLayer;->alignmentMarker:Landroid/view/View;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const v6, -0xcdcdce

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 131
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v4, 0x40800000    # 4.0f

    iget-object v5, p0, Lcom/google/vr/cardboard/UiLayer;->metrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/4 v5, -0x1

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 134
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xd

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 135
    invoke-virtual {v1, v3, v2, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 136
    iget-object v4, p0, Lcom/google/vr/cardboard/UiLayer;->alignmentMarker:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object v4, p0, Lcom/google/vr/cardboard/UiLayer;->alignmentMarker:Landroid/view/View;

    iget-boolean v5, p0, Lcom/google/vr/cardboard/UiLayer;->isAlignmentMarkerEnabled:Z

    if-eqz v5, :cond_0

    :goto_0
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 138
    iget-object v3, p0, Lcom/google/vr/cardboard/UiLayer;->rootLayout:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/google/vr/cardboard/UiLayer;->alignmentMarker:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 139
    return-void

    .line 137
    :cond_0
    const/16 v3, 0x8

    goto :goto_0

    .line 105
    :array_0
    .array-data 4
        0xc
        0xd
    .end array-data

    .line 115
    :array_1
    .array-data 4
        0xa
        0x9
    .end array-data
.end method


# virtual methods
.method public attachUiLayer(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "parentView"    # Landroid/view/ViewGroup;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/google/vr/cardboard/UiLayer$3;

    invoke-direct {v1, p0, p1}, Lcom/google/vr/cardboard/UiLayer$3;-><init>(Lcom/google/vr/cardboard/UiLayer;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method

.method public getAlignmentMarkerEnabled()Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/google/vr/cardboard/UiLayer;->isAlignmentMarkerEnabled:Z

    return v0
.end method

.method public getBackButtonEnabled()Z
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->backButtonRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSettingsButtonEnabled()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/google/vr/cardboard/UiLayer;->isSettingsButtonEnabled:Z

    return v0
.end method

.method public setAlignmentMarkerEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 238
    iput-boolean p1, p0, Lcom/google/vr/cardboard/UiLayer;->isAlignmentMarkerEnabled:Z

    .line 239
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/google/vr/cardboard/UiLayer$7;

    invoke-direct {v1, p0, p1}, Lcom/google/vr/cardboard/UiLayer$7;-><init>(Lcom/google/vr/cardboard/UiLayer;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 246
    return-void
.end method

.method public setBackButtonListener(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/google/vr/cardboard/UiLayer;->backButtonRunnable:Ljava/lang/Runnable;

    .line 225
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/google/vr/cardboard/UiLayer$6;

    invoke-direct {v1, p0, p1}, Lcom/google/vr/cardboard/UiLayer$6;-><init>(Lcom/google/vr/cardboard/UiLayer;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 232
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 193
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/google/vr/cardboard/UiLayer$4;

    invoke-direct {v1, p0, p1}, Lcom/google/vr/cardboard/UiLayer$4;-><init>(Lcom/google/vr/cardboard/UiLayer;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 200
    return-void
.end method

.method public setSettingsButtonEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/google/vr/cardboard/UiLayer;->isSettingsButtonEnabled:Z

    .line 210
    iget-object v0, p0, Lcom/google/vr/cardboard/UiLayer;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/google/vr/cardboard/UiLayer$5;

    invoke-direct {v1, p0, p1}, Lcom/google/vr/cardboard/UiLayer$5;-><init>(Lcom/google/vr/cardboard/UiLayer;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 217
    return-void
.end method
