.class Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatJellybeanMr1Impl;
.super Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;
.source "TextUtilsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/text/TextUtilsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextUtilsCompatJellybeanMr1Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;-><init>(Landroid/support/v4/text/TextUtilsCompat$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/text/TextUtilsCompat$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/support/v4/text/TextUtilsCompat$1;

    .prologue
    .line 100
    invoke-direct {p0}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatJellybeanMr1Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutDirectionFromLocale(Ljava/util/Locale;)I
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 108
    invoke-static {p1}, Landroid/support/v4/text/TextUtilsCompatJellybeanMr1;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 103
    invoke-static {p1}, Landroid/support/v4/text/TextUtilsCompatJellybeanMr1;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
